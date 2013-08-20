#ifndef _GUI_H_
#define _GUI_H_

#include "../Gorilla.h"
#include <map>

namespace GUI{
	class GUI{
		private:
			Gorilla::Silverback *mSilverback;
			Ogre::Viewport *mViewport;
			Gorilla::Screen* mScreen;

			std::map<Ogre::String, Gorilla::Layer*> layers;
		public:
			GUI(Ogre::Viewport *vp);
			Gorilla::Layer* createLayer(Ogre::String);
			Gorilla::Layer* getLayer(Ogre::String);
	};
}

#endif