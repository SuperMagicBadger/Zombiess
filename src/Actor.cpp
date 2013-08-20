#include "Actor.h"
#include <math.h>
#include <iostream>
using namespace std;
using namespace Ogre;
using namespace Zombies;

float max_speed = 100;
float max_force = 0.5;
float max_displacement = 3.0f;
float steering_force = 1.0f;

//Actor------------------------------------------
//constructor---------------------
Actor::Actor(String meshName, String EntityName, SceneManager* scnMan, SceneNode* root) :
activeAnimations(),
animationScalers() {
    //test root node
    if (root == NULL) {
        root = scnMan->getRootSceneNode();
    }
    // Set Global Position
    p = Vector3(0, 0, 0);
    m = 1;
    bumps = 0;
    standingstill = 0;
    v = Vector3(0, 0, 0);
    f = Vector3(0, 0, 0);
    p = Vector3(0, 0, 0);
    p_next = Vector3(0, 0, 0);
    //create charcter parts

    charNode = root->createChildSceneNode(EntityName + ".node");
    character = scnMan->createEntity(EntityName + ".base", meshName);

    //create cam nodes
    camNode = charNode->createChildSceneNode(EntityName + ".cam");
    targetNode = charNode->createChildSceneNode(EntityName + ".target");

    //set variables
    character->setCastShadows(ACTOR_SHADOWS);
    camNode->setPosition(-5, 10, -10);
    targetNode->setPosition(-5, 5, 10);
    animationScalers.clear();
    activeAnimations.clear();

    //link everything
    charNode->attachObject(character);
    character->setUserAny(Ogre::Any(this));
}
Actor::~Actor() {

}
//position manips-----------------
void Actor::place(Vector3 position) {
    charNode->setPosition(position);
    this->p = position;
}
void Actor::face(Vector3 facing) {
    Vector3 direction = facing - charNode->getPosition();
    Vector3 src = charNode->getOrientation() * Vector3::UNIT_X;
    if ((1.0f + src.dotProduct(direction)) < 0.0001f) {
        charNode->yaw(Ogre::Degree(180));
    } else {
        Ogre::Quaternion quat = src.getRotationTo(direction);
        charNode->rotate(quat);
    }

}
void Actor::travel(Vector3 dist) {
    charNode->translate(dist);
}
//animation manips----------------
AnimationState* Actor::getAnimationState(String animName) {
    return character->getAnimationState(animName);
}
void Actor::useAnim(String animName, bool loop, float scale) {
    if (activeAnimations.find(animName) == activeAnimations.end()) {
        AnimationState* s = character->getAnimationState(animName);
        activeAnimations[animName] = s;
        animationScalers[animName] = scale;
        s->setTimePosition(0);
        s->setEnabled(true);
        s->setLoop(loop);
    }
}
void Actor::unuseAnim(String animName) {
    if (activeAnimations.find(animName) != activeAnimations.end()) {
        AnimationState* s = character->getAnimationState(animName);
        s->setEnabled(false);
        activeAnimations.erase(animName);
        animationScalers.erase(animName);
    }
}
void Actor::updateAnimation(float timeElapsed) {
    if (activeAnimations.empty()) return;
    Ogre::MapIterator<std::map<String, AnimationState*> > itr(activeAnimations);
    while (itr.hasMoreElements()) {
        AnimationState* s = itr.current()->second;
        s->addTime(timeElapsed * animationScalers[itr.current()->first]);
        if (s->getTimePosition() >= s->getLength()) {
            s->setEnabled(false);
            activeAnimations.erase(itr.current()->first);
            animationScalers.erase(itr.current()->first);
        }
        itr.moveNext();
    }
}
void Actor::setAnimScale(String animName, float scale) {
    if (activeAnimations.find(animName) != activeAnimations.end()) {
        animationScalers[animName] = scale;
    }
}
float Actor::getMoveSpeed() {
    return moveSpeed;
}
void Actor::setMoveSpeed(float speed) {
    moveSpeed = speed;
}
//access--------------------------
SceneNode* Actor::getSceneNode() {
    return charNode;
}
SceneNode* Actor::getCamNode() {
    return camNode;
}
SceneNode* Actor::getSightNode() {
    return targetNode;
}
//health--------------------------
actor_type Actor::getAT() {
    return at;
}
void Actor::setAT(actor_type _at) {
    at = _at;
}
void Actor::initHealth(float curHealth, float mh, float regenHealth) {
    health = curHealth;
    maxHealth = mh;
    regen = regenHealth;
}
void Actor::updateHealth(float timeElapsed) {
    health += regen * timeElapsed;
    if (health <= 0) {
        onDeath();
    }
}
// -660 -> 720
// -640 -> 720
void Actor::takeDamage(float dam) {
    health -= dam;
    health = health > maxHealth ? maxHealth : health;
    if (health <= 0) {
        onDeath();
    }
}
void Actor::onDeath() {
    initHealth(maxHealth, maxHealth, regen);
    Vector3 newPos = Vector3::ZERO;
    newPos.x = rand();
    newPos.y = 100;
    newPos.z = rand();
    Stage* s = Stage::getActive();
    int i = 0;
    while (!s->getPassable(newPos)) {
        newPos.x = (rand() % (720 + 660)) - 660;
        newPos.z = (rand() % (720 + 660)) - 660;
        i++;
        if (i > 5) {
            break;
        }
    }
    place(newPos);
    s->fixHeight(this);
}
//
//Actor==========================================

//Stage------------------------------------------
//statics------------------------------
Stage* Stage::activeStage = NULL;
//constructors-------------------------
Stage::Stage(String dotScene, SceneManager* scnMan, float scale) :
cast() {
    //init vars;
    scnManager = scnMan;

    //load map
    mapNode = scnManager->getRootSceneNode()->createChildSceneNode("map.Node");
    DotSceneLoader loader;
    loader.parseDotScene(dotScene, "General", scnMan, mapNode);
    mapNode->setScale(scale, scale, scale);

    //setup collision tools
    collision = new MOC::CollisionTools(scnManager);

    if (activeStage == NULL) {
        activeStage = this;
    }
}
Stage::~Stage() {
    delete collision;
}
//activeAccess-------------------------
void Stage::setActiveStage(bool amActive) {
    activeStage = this;
}
bool Stage::isActiveStage() {
    return activeStage == this;
}
Stage* Stage::getActive() {
    return activeStage;
}
//manager access-----------------------
void Stage::addActor(Actor* a) {
    cast[a->character->getName()] = a;
}
void Stage::remActor(Actor* a) {
    cast.erase(a->character->getName());
}
void Stage::updateAnimation(float timeElapsed) {
    MapIterator<std::map<String, Actor*> > itr(cast);
    while (itr.hasMoreElements()) {
        itr.current()->second->updateAnimation(timeElapsed);
        itr.current()->second->updateHealth(timeElapsed);
        //cout << endl << itr.current()->first << endl;
        itr.moveNext();
    }
}
//map access---------------------------
void Stage::fixHeight(Actor* a) {
    //temps--------
    Vector3 pos = a->getSceneNode()->getPosition();
    pos.y += 2;


    //returns------
    Vector3 result = Vector3::ZERO;
    Entity* targ = NULL;
    float dist = 0.0f;

    //do a raycast-
    if (collision->raycastFromPoint(pos, Vector3::NEGATIVE_UNIT_Y, result, targ, dist)) {
        Vector3 pos = a->getSceneNode()->getPosition();
        pos.y = result.y;
        a->p.y = result.y;
        a->place(result);
    }

}
bool Stage::checkCollision(Vector3 pos, Vector3 dir, float minDist) {
    //temps--------
    Ray r = Ray(pos, dir);
    Vector3 result = Vector3::ZERO;
    Entity* targ = NULL;
    float dist = 0.0f;

    //do the cast--
    if (collision->raycast(r, result, targ, dist)) {
        if (dist <= minDist) return true;
    }
    return false;
}
bool Stage::getPassable(Vector3 spot) {
    //temps--------
    Vector3 result = Vector3::ZERO;
    Entity* targ = NULL;
    float dist = 0.0f;

    //do a raycast-
    if (collision->raycastFromPoint(spot, Vector3::NEGATIVE_UNIT_Y, result, targ, dist)) {
        return !(targ->getName().compare("earh_mesh"));
    }
    return false;
}
//handlers-----------------------------
bool Stage::frameStarted(const FrameEvent& evt) {
    updateAnimation(evt.timeSinceLastFrame);
    return true;
}
//Stage==========================================




//Pathing
void Zombies::compute_force(std::vector<Actor*> VecChar) {
    for (int i = 0; i < VecChar.size(); i++) {
        // Steering
        VecChar[i]->f = Vector3(0, 0, 0);
        Vector3 curr = VecChar[i]->p;
        Vector3 next = VecChar[i]->p_next;
        Vector3 result = next - curr;
        result.normalise();
        //result.normalize();
        result *= steering_force;

        VecChar[i]->f = result;



        // Gathering
        //result = redball - curr;
        //if(result.len() < 2.0f)
        /*
        if(result.length() < 2.0f)
        {
                VecChar[i]->f = Vector3(0,0,0);
                result.normalise();
                //result.normalize();
                result *= steering_force; 
                VecChar[i]->f = result;
                //VecChar[i]->chasingtheball = true;
                VecChar[i]->v = Vector3(0,0,0);
        }
        else
        {
                //VecChar[i]->chasingtheball = false;
        }
         */

    }


}
void Zombies::EulerStep(float delta, std::vector<Actor*> VecChar) {

    for (int i = 0; i < VecChar.size(); i++) {

        Vector3 curr = VecChar[i]->p;
        Vector3 next = VecChar[i]->p_next;
        Vector3 result = next - curr;

        if (result.length() < 5.0f) {
            VecChar[i]->v = Vector3(0, 0, 0);
            VecChar[i]->f = Vector3(0, 0, 0);
        }

        float m = VecChar[i]->m;
        Vector3 f = VecChar[i]->f;
        Vector3 v = VecChar[i]->v;
        Vector3 p = VecChar[i]->p;
        //VecChar[i]->p_old = p;

        Vector3 a = f / m;

        Vector3 next_v = v + (delta * a);
        next_v.x = min(next_v.x, max_speed);
        next_v.y = min(next_v.y, max_speed);
        next_v.z = min(next_v.z, max_speed);
        next_v.normalise();
        next_v *= max_speed;

        if (v.length() == 0) {
            VecChar[i]->standingstill++;

        }

        Vector3 next_p = p + (delta * v);


        VecChar[i]->v = next_v;
        VecChar[i]->p = next_p;

    }
}
std::vector<int> Zombies::CollisionDetection(std::vector<Actor*> VecChar) {
    // Wall Collisions
    std::vector<int> tempvec;

    for (int i = 0; i < VecChar.size(); i++) {
        if (VecChar[i]->p.x < -640
                || VecChar[i]->p.x > 640
                || VecChar[i]->p.z < -640
                || VecChar[i]->p.z > 640) {
            //VecChar[i]->p = VecChar[i]->p_old;
            //VecChar[i]->x = VecChar[i]->p_old.x;
            //VecChar[i]->y = VecChar[i]->p_old.y;
            //VecChar[i]->z = VecChar[i]->p_old.z;
            VecChar[i]->v = Vector3(0, 0, 0);
            tempvec.push_back(i);

        }

        if (VecChar[i]->p.x < -640) {
            VecChar[i]->p.x = -639;
            VecChar[i]->p.x = -639;
            VecChar[i]->v = Vector3(0, 0, 0);
        }
        if (VecChar[i]->p.x > 640) {
            VecChar[i]->p.x = 639;
            VecChar[i]->p.x = 639;
            VecChar[i]->v = Vector3(0, 0, 0);
        }
        if (VecChar[i]->p.z < -640) {
            VecChar[i]->p.z = -639;
            VecChar[i]->p.z = -639;
            VecChar[i]->v = Vector3(0, 0, 0);
        }
        if (VecChar[i]->p.z > 640) {
            VecChar[i]->p.z = 639;
            VecChar[i]->p.z = 639;
            VecChar[i]->v = Vector3(0, 0, 0);
        }


    }


    for (int i = 0; i < VecChar.size(); i++) {
        for (int j = 0; j < VecChar.size(); j++) {

            if (i != j) {
                // Bouncing Off Each other
                Vector3 result = VecChar[i]->p - VecChar[j]->p;
                if (result.length() < 3) {
                    VecChar[i]->p += result;
                    VecChar[j]->p -= result;
                    VecChar[i]->v = Vector3(0, 0, 0);
                    VecChar[j]->v = Vector3(0, 0, 0);
                    VecChar[i]->bumps++;
                    VecChar[j]->bumps++;
                }
            }
        }
    }

    return tempvec;
    //Character Collisions

}
void Zombies::Constraint_Correction(std::vector<Actor*> VecChar) {


}

