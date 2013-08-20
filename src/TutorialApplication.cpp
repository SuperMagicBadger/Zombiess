/*
-----------------------------------------------------------------------------
Filename:    TutorialApplication.cpp
-----------------------------------------------------------------------------

This source file is part of the
   ___                 __    __ _ _    _ 
  /___\__ _ _ __ ___  / / /\ \ (_) | _(_)
 //  // _` | '__/ _ \ \ \/  \/ / | |/ / |
/ \_// (_| | | |  __/  \  /\  /| |   <| |
\___/ \__, |_|  \___|   \/  \/ |_|_|\_\_|
      |___/                              
      Tutorial Framework
      http://www.ogre3d.org/tikiwiki/
-----------------------------------------------------------------------------
 */
#include "TutorialApplication.h"
#include "OgreOverlayManager.h"
#include "OgreOverlayElement.h"
#include "OgreFont.h"
#include "OgreFontManager.h"
#include "OgreQuaternion.h"
//GUI Stuff
#include "Gorilla.h"
#include "hud.h"
#include "Client/ZombiesClient.h"

//#include <random>

//actor and stage
#include "Actor.h"
//enum {
//    PLAYER_MOVE_SPEED = 20
//};


char fakemap[] = "XXXXXXXXXX"
        "X........X"
        "X........X"
        "X........X"
        "X........X"
        "X........X"
        "X........X"
        "X........X"
        "X........X"
        "XXXXXXXXXX";


std::vector<Zombies::Actor*> ZombieList;
std::vector<std::vector<Gridmap_Node* > > Paths;

int MAX_ZOMBIE = 5;
float PLAYER_MOVE_SPEED = 25;

//-------------------------------------------------------------------------------------
TutorialApplication::TutorialApplication(void) {
    mTimer = new Ogre::Timer();
}
//-------------------------------------------------------------------------------------
TutorialApplication::~TutorialApplication(void) {
}
void UpdatePositons(Zombies::Stage* stage) {
    for (int i = 0; i < MAX_ZOMBIE; i++) {
        //std::stringstream ss;
        //ss << "z" << i;
        //string temp = ss.str();
        //Vector3 next_pos = stage->getActor(temp)->position;
        //stage->getActor(temp)->place(next_pos);

        Vector3 next_pos = ZombieList[i]->p;
        ZombieList[i]->place(next_pos);

    }


}


//-------------------------------------------------------------------------------------
void TutorialApplication::createScene(void) {
    Gorilla::Silverback* sb = new Gorilla::Silverback();
    splash = new Zombies::SplashScreen(mViewport);

    fake = Gridmap(1);
    t0 = 0;

    //create the camera
    Zombies::Camera* cam = new Zombies::Camera("zCam", mSceneMgr, mCamera);
    pcon = new Zombies::PlayerControll();
    pcon->bindCamera(cam);

    //load up the stage
    stage = new Zombies::Stage("map.scene", mSceneMgr, 20);
	
    //add the player
    Zombies::Actor* player = new Zombies::Actor("scout_mesh.mesh", "player", mSceneMgr);
    player->setMoveSpeed(PLAYER_MOVE_SPEED);
    player->place(Vector3(50, 50, 50));
    player->face(Vector3(0, 0, 10));
    player->initHealth(10, 10, 0);

    //add a network player standin
    Zombies::Actor* zom = new Zombies::Actor("scout_mesh.mesh", "zom", mSceneMgr);
    zom->setMoveSpeed(PLAYER_MOVE_SPEED);
    zom->place(Vector3(0, 50, 0));
    zom->initHealth(10, 10, 0);
    stage->fixHeight(zom);
    
    clientController* c = new clientController(zom);
    

    for (int i = 0; i < MAX_ZOMBIE; i++) {

        std::stringstream ss;
        ss << "z" << i;
        string temp = ss.str();
        Zombies::Actor* zombie = new Zombies::Actor("zombie_mesh.mesh", temp, mSceneMgr);
        zombie->getSceneNode()->scale(1.5, 1.5, 1.5);
        zombie->setMoveSpeed(10);
        zombie->initHealth(1, 1, 0);	
        zombie->place(Vector3(-35 + 10 * i, 50, 500));
	stage->fixHeight(zombie);
        stage->addActor(zombie);
        ZombieList.push_back(zombie);
    }

    
    for(int i =0;i<ZombieList.size();i++) {
        //int temp = i % 18;
        Vector3 end = Vector3(((float) rand() / (float) RAND_MAX)*300, ZombieList[i]->p.y, ((float) rand() / (float) RAND_MAX)*300);	   
        Paths.push_back(CharacterPath(Vector3(ZombieList[i]->p.x,ZombieList[i]->p.x,ZombieList[i]->p.x), end,fake));
        ZombieList[i]->p_next = end;
        Paths[i].clear();
        stage->fixHeight(ZombieList[i]);
   }
    

    //link eerything
    stage->addActor(player);
    stage->addActor(zom);
    pcon->bindActor(player);
    mRoot->addFrameListener(pcon);
    mRoot->addFrameListener(c);
    mRoot->addFrameListener(stage);


    this->mHUD = new HUD(mViewport);
    mClient = new ZombiesClient(mSceneMgr, stage);
    this->mClient->connectHUD(mHUD);
    this->mClient->connectActor(player);

    stage->getPassable(Vector3(100, 200, 0));
    stage->getPassable(Vector3(0, 200, 0));
    stage->getPassable(Vector3(50, 200, 50));
}
bool TutorialApplication::keyPressed(const OIS::KeyEvent &arg) {
    if (this->mHUD->isChatUp()) {//Currently Chatting
        if (mKeyboard->isKeyDown(OIS::KC_RETURN)) {
            this->mHUD->toggleChat();
            //Send Message
            mClient->sendChatMsg(chatMsg);

            //Clear
            chatMsg = "";
            this->mHUD->setChatText(chatMsg);
            return true;
        } else if (mKeyboard->isKeyDown(OIS::KC_SPACE)) {
            chatMsg += ' ';
        } else if (mKeyboard->isKeyDown(OIS::KC_BACK)) {
            if (chatMsg.size() > 6)chatMsg = chatMsg.substr(0, chatMsg.size() - 1);
        } else if (!mKeyboard->isKeyDown(OIS::KC_LSHIFT)) {
            if (!mKeyboard->isKeyDown(OIS::KC_LSHIFT)) {
                chatMsg += tolower(mKeyboard->getAsString(arg.key)[0]);
            } else {
                chatMsg += mKeyboard->getAsString(arg.key)[0];
            }
        }
        this->mHUD->setChatText(chatMsg);
    } else {
        //Start Time when Key was Pressed
        timePressed = mTimer->getMilliseconds();
        if (!splash->onKeys(arg)) {
            mShutDown = true;
            return false;
        }
        pcon->keyPressed(arg);

        //mCameraMan->injectKeyDown(arg);
    }
    return true;
}
bool TutorialApplication::keyReleased(const OIS::KeyEvent &arg) {
    /* Display time pressed
	char buffer [50];
    int n = sprintf(buffer, "%lu", mTimer->getMilliseconds() - timePressed);
	/*
	for(int i =0;i<Paths.size();i++)
	{
		Paths[i].clear();
		Vector3 end = mClient->mPlayer->p;
		Paths[i] = CharacterPath(ZombieList[i]->p, end,fake);


	}
	*/


    //this->mHUD->debugMsg->text(buffer);
	
    //mCameraMan->injectKeyUp(arg);
    pcon->keyReleased(arg);
    return true;
}
bool TutorialApplication::mouseMoved(const OIS::MouseEvent& arg) {
    pcon->mouseMoved(arg);
    return true;
}
bool TutorialApplication::mousePressed(const OIS::MouseEvent& arg, OIS::MouseButtonID id) {
    pcon->mousePressed(arg, id);
    return true;
}
bool TutorialApplication::mouseReleased(const OIS::MouseEvent& arg, OIS::MouseButtonID id) {
    pcon->mouseReleased(arg, id);
    return true;
}
bool TutorialApplication::frameRenderingQueued(const Ogre::FrameEvent& evt) {
    if (mWindow->isClosed())return false;
    if (mShutDown) return false;

    stage->updateAnimation(evt.timeSinceLastFrame);

    float delta = (float) 1 / 60;
	
    //Need to capture/update each device
    mKeyboard->capture();
    mMouse->capture();

    if (!(this->mHUD->isChatUp())) {//Main Game Controls
        float mSpeed = 50.0f;
        if (mKeyboard->isKeyDown(OIS::KC_T)) {
            this->mHUD->toggleChat();
            chatMsg = "Chat: ";
            this->mHUD->setChatText(chatMsg);
        } else if (mKeyboard->isKeyDown(OIS::KC_ESCAPE)) {
            mShutDown = true;
        }
    }

    if (mTimer->getMilliseconds() - timePressed > 50 && (mKeyboard->isKeyDown(OIS::KC_LEFT) || mKeyboard->isKeyDown(OIS::KC_RIGHT)
            || mKeyboard->isKeyDown(OIS::KC_UP) || mKeyboard->isKeyDown(OIS::KC_DOWN))) { // delta T is greater than 50ms, notify server;
        timePressed += 50;
        //Send Character Update stuff.
        Ogre::Vector3 movePosition = Vector3::ZERO;

        if (mKeyboard->isKeyDown(OIS::KC_LEFT)) {
            movePosition.x += 1.0f;
        } else if (mKeyboard->isKeyDown(OIS::KC_RIGHT)) {
            movePosition.x -= 1.0f;
        } else if (mKeyboard->isKeyDown(OIS::KC_UP)) {
            movePosition.z += 1.0f;
        } else if (mKeyboard->isKeyDown(OIS::KC_DOWN)) {
            movePosition.z -= 1.0f;
        }
        Ogre::Quaternion q = mClient->mPlayer->getSceneNode()->getOrientation();
        movePosition = q * movePosition;
		movePosition.normalise();
		mClient->sendMove(movePosition, q, 50);
    }

    //mCameraMan->frameRenderingQueued(evt);   // Update the camera

    compute_force(ZombieList);
    EulerStep(delta, ZombieList);
	std::vector<int> colliders;
	colliders = CollisionDetection(ZombieList);
	for(int i =0;i<colliders.size();i++)
	{
			
		Paths[colliders[i]].clear();
		
	}
    //-------------------------------------------------------------------------------------------------------------------
	if(mTimer->getMilliseconds() > t0 + 1000)
	{
		t0 = mTimer->getMilliseconds();
		for (int i = 0; i < MAX_ZOMBIE; i++) 
		{
			//stage->fixHeight(ZombieList[i]);
			
			//ZombieList[i]->v = Vector3(0, 0, 0);
		}
	}



    // if(interval + 1< gs_time())
    if (true) {

        for (int i = 0; i < ZombieList.size(); i++) {
            // Check to see if there the next i is on the vector
            if (Paths.size() > i) {
                //Check to seee if the path is empty.
                // If Empty, then make a new path
                //if(App->viewer->CharVec[i]->chasingtheball)
                if (true) {
                    //Paths[i].clear();
                }
                if (Paths[i].empty()) 
				{
                    if (false) {
                        //cout << "Done with Path" << endl;
                    } else {
                        //cout << "Done with Path" << endl;

                        // Go To Position After Done
                        //GsVec newpathend(App->viewer->end.x,0,App->viewer->end.x);
                        Vector3 newpathend;
                        // Random Movement
                        //if(App->viewer->CharVec[i]->chasingtheball)
                        if (false) {
                            //newpathend = Vector3(App->viewer->start.x,0,App->viewer->start.z);
                        } else {
                            //newpathend = Vector3(((float) rand() / (float) RAND_MAX)*300, ZombieList[i]->p.y, ((float) rand() / (float) RAND_MAX)*300);
							newpathend = mClient->mPlayer->p;
                        }
                        Paths[i] = (CharacterPath(Vector3(ZombieList[i]->p.x, ZombieList[i]->p.y, ZombieList[i]->p.z), newpathend, fake));
                        //cout << "Going to = " << newpathend.x << "," << newpathend.y << "," << newpathend.z << endl;
                        //cout << "New Path:" << endl;
                        ZombieList[i]->p_next = newpathend;
                        for (int j = Paths[i].size() - 1; j >= 0; j--) {
                            //Paths[i][j]->PrintXY();

                        }
                    }
					
                }
				// Else:
                    // 1) Check the if the character is at the next node
                    // 2) If it is at the next node remove the node from the path and move towards the next node
                else {
                    float pos_x = ZombieList[i]->p.x;
                    float pos_y = ZombieList[i]->p.y;
                    float pos_z = ZombieList[i]->p.z;

					Vector3 z_man(pos_x,pos_y,pos_z);

					if((z_man - mClient->mPlayer->p).length() < 10)
					{
						Paths[i].clear();
						ZombieList[i]->p_next = mClient->mPlayer->p;
						continue;
					}
					else if((z_man - mClient->mPlayer->p).length() > 250)
					{
						ZombieList[i]->v = Vector3(0, 0, 0);
						continue;
					}

					

					
					if(ZombieList[i]->bumps >50)
					{
						Paths[i].clear();
						Vector3 end = mClient->mPlayer->p;
						Paths[i] = CharacterPath(ZombieList[i]->p, end,fake);
						ZombieList[i]->bumps =0;
					}
					

                    if (Paths[i].back()->ReachedNode(pos_x, pos_y, pos_z)) {
                        Paths[i].pop_back();
                        ZombieList[i]->v = Vector3(0, 0, 0);
                        
                        //cout << "Popped" << endl;
                        // REMEMBER THAT GRIDMAP BELIEVED THAT ITS X,Y WAS X,Z
                        // THUS NODE Y VALUE IS ACTUALLY Z, AND Z IS Y
                        // NODE Y = REAL Z
                        // NODE Z = REAL Y
                        if (!Paths[i].empty()) {
                            // Normal Moving
                            Vector3 next((float) (Paths[i].back()->x + 0.5), ZombieList[i]->p.y, (float) (Paths[i].back()->y + 0.5));
                            ZombieList[i]->p_next = next;

                            // Teleport moving
                            /*
                            App->viewer->CharVec[i]->x = Paths[i].back()->x + 0.5;
                            App->viewer->CharVec[i]->y = Paths[i].back()->z;
                            App->viewer->CharVec[i]->z = Paths[i].back()->y + 0.5;
                             */
                        }
                    }
                }
            }// If i is greater than the number of paths found in the vector stop the loop
            else {
                break;
            }

            if (ZombieList[i]->standingstill > 100) {
                Paths[i].clear();
                stage->fixHeight(ZombieList[i]);
                ZombieList[i]->standingstill = 0;
            }

        }


        //interval = gs_time();

    }





    //-------------------------------------------------------------------------------------------------------------------
    for (int i = 0; i < MAX_ZOMBIE; i++) {
        //ZombieList[i]->position.z += 0.01;
        Vector3 moving_to = ZombieList[i]->p;

        ZombieList[i]->place(moving_to);

        stage->fixHeight(ZombieList[i]);

    }



    mClient->listen();
    return true;
}















#if OGRE_PLATFORM == OGRE_PLATFORM_WIN32
#define WIN32_LEAN_AND_MEAN
#include "windows.h"
#endif

#ifdef __cplusplus
extern "C" {
#endif

#if OGRE_PLATFORM == OGRE_PLATFORM_WIN32
    INT WINAPI WinMain(HINSTANCE hInst, HINSTANCE, LPSTR strCmdLine, INT)
#else
    int main(int argc, char *argv[])
#endif
    {
        // Create application object
        TutorialApplication app;

        try {
            app.go();
        } catch (Ogre::Exception& e) {
#if OGRE_PLATFORM == OGRE_PLATFORM_WIN32
            MessageBox(NULL, e.getFullDescription().c_str(), "An exception has occured!", MB_OK | MB_ICONERROR | MB_TASKMODAL);
#else
            std::cerr << "An exception has occured: " <<
                    e.getFullDescription().c_str() << std::endl;
#endif
        }

        return 0;
    }

#ifdef __cplusplus
}
#endif
