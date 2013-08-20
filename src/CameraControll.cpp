#include "CameraControll.h"
#include "Client/ZombiesClient.h"
using namespace Zombies;

//camera-------------------------------------------------------------
//constructors-------------------------
Zombies::Camera::Camera(Ogre::String name, Ogre::SceneManager* sm, Ogre::Camera* _cam){
    //set up nodes-----------        
    source = sm->getRootSceneNode()->createChildSceneNode(name);
    target = sm->getRootSceneNode()->createChildSceneNode(name + ".Target" );
    source->setAutoTracking(true, target);
    source->setFixedYawAxis(true);
    
    //bind camera
    if(_cam){
        internalCam = _cam;
        internalCam->setPosition(0, 0, 0);
        delCam = false;
    } else {
        internalCam = sm->createCamera(name);
        delCam = true;
    }
    source->attachObject(internalCam);
}
Zombies::Camera::~Camera(){
    
}
//camera manips------------------------
void Zombies::Camera::moveTo(Ogre::Vector3 sourcePos, Ogre::Vector3 targetPos){
    Vector3 displacement;
    
    displacement = sourcePos - source->getPosition();
    source->translate(displacement);
    
    displacement = targetPos - target->getPosition();
    target->translate(displacement);
}
//camera=============================================================

//camera controller--------------------------------------------------
//constructors-------------------------
Zombies::CameraController::CameraController() : FrameListener() {
    cameraBinding = NULL;
    sourceBinding = NULL;
    targetBinding = NULL;   
    delCam = false;
}
Zombies::CameraController::CameraController(Ogre::String name, Ogre::SceneManager* sm) : FrameListener(){
    cameraBinding = new Zombies::Camera(name, sm);
    sourceBinding = NULL;
    targetBinding = NULL;
    delCam = true;
}
Zombies::CameraController::~CameraController(){
    
}
//traking manips-----------------------
void Zombies::CameraController::bindCamera(Zombies::Camera* camera){
    if(delCam){
        delete cameraBinding;
        delCam = false;
    }
    cameraBinding = camera;
}
void Zombies::CameraController::bindActor(Actor* a){
    actorBinding = a;
    bindSource(a->getCamNode());
    bindTarget(a->getSightNode());
}
void Zombies::CameraController::bindSource(SceneNode* binding){
    sourceBinding = binding;
}
void Zombies::CameraController::bindTarget(SceneNode* binding){
    targetBinding = binding;
}
//handlers-----------------------------
bool Zombies::CameraController::frameStarted(const FrameEvent& evt){
    cameraBinding->moveTo(sourceBinding->_getDerivedPosition(), targetBinding->_getDerivedPosition());
    return true;
}
//camera controller==================================================