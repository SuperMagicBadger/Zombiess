#include "PlayerController.h"

#include <iostream>
using namespace std;

//player controller--------------------------------------------------
//constructors-------------------------
Zombies::PlayerControll::PlayerControll() : CameraController() {
    foreward = back = left = right = false;
    killRot = 0;
    speed = move_speed;
}
Zombies::PlayerControll::PlayerControll(Ogre::String name, Ogre::SceneManager* sm) :
CameraController(name, sm) {
    killRot = 0;
    foreward = back = left = right = false;
    speed = move_speed;
}
//handlers-----------------------------
bool Zombies::PlayerControll::frameStarted(const FrameEvent& evt) {
    bool r = CameraController::frameStarted(evt);
    float dist = evt.timeSinceLastFrame * actorBinding->getMoveSpeed();
    Quaternion q = actorBinding->getSceneNode()->getOrientation();
    Vector3 dir = Vector3::ZERO;
    if (foreward) {
        dir += Vector3::UNIT_Z;
    }
    if (back) {
        dir += Vector3::NEGATIVE_UNIT_Z;
    }
    if (left) {
        dir += Vector3::UNIT_X;
    }
    if (right) {
        dir += Vector3::NEGATIVE_UNIT_X;
    }
    if (dir != Vector3::ZERO) {
        Vector3 tpos = actorBinding->getSceneNode()->getPosition();
        dir = q * (dir * (dist * speed));
        tpos += 2;
        if (!Zombies::Stage::getActive()->checkCollision(tpos, dir)) {
            actorBinding->travel(dir);
            Zombies::Stage::getActive()->fixHeight(actorBinding);
        }
    }
    return r;
}
bool Zombies::PlayerControll::keyPressed(const OIS::KeyEvent& arg) {
    switch (arg.key) {
        case key_fore:
            foreward = true;
            actorBinding->useAnim("Anim.Body.Run", true, speed);
            actorBinding->unuseAnim("Anim.Body.Idle");
            break;
        case key_back:
            back = true;
            actorBinding->useAnim("Anim.Body.Run", true, -speed);
            actorBinding->unuseAnim("Anim.Body.Idle");
            break;
        case key_right:
            right = true;
            break;
        case key_left:
            left = true;
            break;
        case key_sprint:
            speed = sprint_speed;
            actorBinding->setAnimScale("Anim.Body.Run", speed);
            break;
    }
    return true;
}
bool Zombies::PlayerControll::keyReleased(const OIS::KeyEvent& arg) {
    switch (arg.key) {
        case key_fore:
            foreward = false;
            actorBinding->unuseAnim("Anim.Body.Run");
            actorBinding->useAnim("Anim.Body.Idle", true);
            break;
        case key_back:
            actorBinding->unuseAnim("Anim.Body.Run");
            actorBinding->useAnim("Anim.Body.Idle", true);
            back = false;
            break;
        case key_right:
            if (killRot) {
                actorBinding->getSceneNode()->rotate(Vector3::UNIT_Y, Degree(-45));
                killRot = 0;
            }
            right = false;
            break;
        case key_left:
            if (killRot) {
                actorBinding->getSceneNode()->rotate(Vector3::UNIT_Y, Degree(-45));
                killRot = 0;
            }
            left = false;
            break;
        case key_sprint:
            speed = move_speed;
            actorBinding->setAnimScale("Anim.Body.Run", speed);
            break;
    }
    return true;
}
bool Zombies::PlayerControll::mouseMoved(const OIS::MouseEvent& arg) {
    actorBinding->getSceneNode()->yaw(Ogre::Degree(-arg.state.X.rel * .1));
    Vector3 cp = actorBinding->getSightNode()->getPosition();
    cp.y -= arg.state.Y.rel * .05;
    actorBinding->getSightNode()->setPosition(cp);
    return true;
}
bool Zombies::PlayerControll::mousePressed(const OIS::MouseEvent& arg, OIS::MouseButtonID id) {
    cout << "SHOOT!!!!!!!!!!!!!!\n";
    MOC::CollisionTools* ct = Stage::getActive()->collision;

    //temp--------------
    Quaternion q = actorBinding->getSceneNode()->getOrientation();
    Vector3 src = actorBinding->getSceneNode()->getPosition();
    Vector3 dir = q * Vector3::UNIT_Z;
    dir.normalise();
    Vector3 result;
    Entity* target;
    Actor* resolvedTarget;
    float dist;

    actorBinding->useAnim("Anim.Torso.Shoot", false);
    actorBinding->unuseAnim("Anim.Body.Idle");

    //raytrace----------
    if (ct->raycastFromPoint(src, dir, result, target, dist)) {
        cout << "you shot " << target->getName() << endl;
        Ogre::Any resolved = target->getUserAny();
        if (!resolved.isEmpty()) {
            resolvedTarget = any_cast<Actor*>(resolved);
            if (actorBinding->getAT() != resolvedTarget->getAT()) {
                resolvedTarget->takeDamage(20000);
            }
        }
    }
    return true;
}
bool Zombies::PlayerControll::mouseReleased(const OIS::MouseEvent& arg, OIS::MouseButtonID id) {
    cout << "no shoot...\n";
    actorBinding->unuseAnim("Anim.Torso.Shoot");
    actorBinding->useAnim("Anim.Body.Idle", true);
    return true;
}
//player controller==================================================
