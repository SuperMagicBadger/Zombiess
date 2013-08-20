#ifndef _HUD_H_
#define _HUD_H_
#include "Gorilla.h"

class HUD{
	private:
		Gorilla::Silverback* mSilverback;
		Gorilla::Screen* mHUD;
		
		Gorilla::Layer* mHUDLayer;
		Gorilla::Layer* chatLayer;

		Ogre::Viewport * mViewport;
		Gorilla::Caption* inputChat;
		
		Gorilla::Caption* fakeHealth;
		bool chatting;
	public:
		HUD(Ogre::Viewport *viewPort);
		void createHUD();
		bool isChatUp();
		void toggleChat();
		void setChatText(Ogre::String s);
		
		
		Gorilla::Caption* debugMsg;
};

#endif