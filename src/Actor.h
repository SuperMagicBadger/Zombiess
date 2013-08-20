/* 
 * File:   Actor.h
 * Author: cow
 *
 * This set of classes will be used to manage zombies and players
 * and shit.  The stage will most likely take care of the map, the 
 * height map, and the collision map. yay...  but yeah, this shit'll
 * be legit.  I'll make the animation interface super simple, so much
 * so that even Leo could use it.
 * 
 * Actor-
 * ------
 * This class will handle the mesh and the animations. function's 'll be
 * fairly self explanatory
 * 
 * Stage-
 * ------
 * This is the map and actor manager. wtf did you think it was gonna be.
 * Theres only one actie stage at a time, accesible by getActiveStage.
 * its kind of like a singletoon... only you can swap out the stage
 * used by the singleton... a multiton if you will
 * 
 * Notes-
 * ------
 * Thinking about making it so actors are automaticaly added to the active stage...
 * What do you think?
 * 
 * The actor is set up to be compatible with this third person camera technique:
 * http://www.ogre3d.org/tikiwiki/3rd+person+camera+system+tutorial&structure=Tutorials
 * 
 * Created on May 1, 2012, 1:33 PM
 */

#ifndef ACTOR_H
#define	ACTOR_H

//includes-------------------------------------------------
#include <sstream>
#include <map>
#include <list>
#include <vector>
#include <stdlib.h>

#include <OGRE/OgreRay.h>
#include <OGRE/OgreString.h>
#include <OGRE/OgreVector3.h>
#include <OGRE/OgreEntity.h>
#include <OGRE/OgreSceneNode.h>
#include <OGRE/OgreSceneManager.h>
#include <OGRE/OgreAnimationState.h>

#include "CollisionTools.h"
#include "dotSceneParser/DotSceneLoader.h"

using namespace Ogre;
//includes=================================================

//defines--------------------------------------------------
#define MAP_NODE "map"
#define ACTOR_SHADOWS false
enum actor_type{
	at_zombie = 0,
	at_player
};
//defines==================================================

//prototypes-----------------------------------------------
namespace Zombies{
class Actor;
class ActorConstroller;
class Stage;
}
//prototypes===============================================

//definitions----------------------------------------------
namespace Zombies{
class Actor{
	friend class Zombies::Stage;
public:
	//constructors---------------------
	Actor(String meshName, String EntityName, SceneManager* scnMan, SceneNode* root = NULL);
	~Actor();
	//position manips------------------
	void place(Vector3 position);
	void travel(Vector3 dist);
	void face(Vector3 facing);
	// Positin Vector to keep track of where the Actor is
	float m; //Mass
	Vector3 p;	//Position
	Vector3 p_next;	// Next Position you are heading to
	Vector3 f;	//Force
	Vector3 v;	//Velocity
	int bumps;
	int standingstill;
	//animation manips-----------------
	AnimationState* getAnimationState(String animName);
	void useAnim(String animName, bool loop = false, float scaler = 1);
	void unuseAnim(String animName);
	void updateAnimation(float timeElapsed);
	void setAnimScale(String animName, float scale);
	float getMoveSpeed();
	void setMoveSpeed(float speed);
	//access---------------------------
	SceneNode* getSceneNode();
	SceneNode* getSightNode();
	SceneNode* getCamNode();
	//health---------------------------
	actor_type getAT();
	void setAT(actor_type _at);
	void initHealth(float curHealth, float maxHealth, float regenHealth);
	void updateHealth(float timeElapsed);
	void takeDamage(float dam);
	void onDeath();
private:
	//animation information
	std::map<String, AnimationState*> activeAnimations;
	std::map<String, float> animationScalers;
	SceneNode* charNode;
	SceneNode* targetNode;
	SceneNode* camNode;
	Entity* character;
	//position information
	Ogre::list<Vector3> waypoints;	
	float moveSpeed;
	//health value-------
	actor_type at;
	float health;
	float maxHealth;
	float regen;
};
class Stage : public FrameListener{
public:
	//constructors---------------------
	Stage(Ogre::String dotScene, SceneManager* scnMan, float scale = 1);
	~Stage();
	//active access--------------------
	void setActiveStage(bool amActive);
	bool isActiveStage();
	static Stage* getActive();
	float getHeight(Vector3 spot);
	//manager access-------------------
	void addActor(Actor* a);
	void remActor(Actor* a);
	Actor* getActor(String actorName);
	void updateAnimation(float timeElapsed);
	//map access-----------------------
	void fixHeight(Actor* a);
	bool checkCollision(Vector3 pos, Vector3 dir, float minDist = 3);
	bool getPassable(Vector3 spot);
	//handlers-------------------------
	bool frameStarted(const FrameEvent& evt);
	MOC::CollisionTools* collision;	
private:
	//ogre scene info-------------------
	SceneManager* scnManager;
	SceneNode* mapNode;
	//actor/stage info------------------
	static Stage* activeStage;
	std::map<String, Actor*> cast;
};

//Pathing
void compute_force(std::vector<Actor*> VecChar);
void EulerStep(float delta,std::vector<Actor*> VecChar);
std::vector<int> CollisionDetection(std::vector<Actor*> VecChar);
void Constraint_Correction(std::vector<Actor*> VecChar);

}
//definitions==============================================


#endif	/* ACTOR_H */




