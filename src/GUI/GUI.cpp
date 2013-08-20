#include "GUI.h"
#include <map>

namespace GUI{
	GUI::GUI(Ogre::Viewport *vp){
		mSilverback = Gorilla::Silverback::getSingletonPtr();
		mSilverback->loadAtlas("dejavu");

		mViewport = vp;

		mScreen = mSilverback->createScreen(mViewport, "GUI");
	}

	Gorilla::Layer* GUI::createLayer(Ogre::String name){
		layers[name] =mScreen->createLayer();
		return layers[name];
	}
	Gorilla::Layer* GUI::getLayer(Ogre::String name){
		return layers[name];
	}
	
}