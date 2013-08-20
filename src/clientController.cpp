#include <OGRE/OgreVector3.h>
#include "clientController.h"
#include "Actor.h"
clientController::clientController(Zombies::Actor *binding) {
    mActor = binding;
    go = false;
}
void clientController::setTarget(Zombies::Actor *target) {
    mActor = target;
}
void clientController::place(Ogre::Vector3 position) {
    mActor->place(position);
}
void clientController::setOrientation(Ogre::Quaternion q) {
    mActor->getSceneNode()->setOrientation(q);   
}
void clientController::recieveGo() {
    mActor->useAnim("Anim.Body.Walk", true);
    mActor->unuseAnim("Anim.Body.Idle");
    go = true;
}
void clientController::recieveStop() {
    mActor->useAnim("Anim.Body.Idle", true);
    mActor->unuseAnim("Anim.Body.Walk");
    go = false;
}
bool clientController::frameStarted(const FrameEvent& evt) {
    if (go) {
        Vector3 dist = Vector3::UNIT_Z;
        dist *= move_speed;
        mActor->travel(dist);
        Zombies::Stage::getActive()->fixHeight(mActor);
    }
    return true;
}