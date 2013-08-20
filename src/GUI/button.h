#ifndef _BUTTON_H_
#define _BUTTON_H_

#include "../Gorilla.h"

namespace GUI{
	class button{
		private:
			unsigned int id;
			bool selected;
			float width, height;
			Ogre::Vector2 pos;

			Gorilla::Layer* buttonLayer;
			Gorilla::Rectangle* box;
			Gorilla::Caption* message;
		public:
			button(unsigned int newID, Gorilla::Layer* inLayer, float nWidth, float nHeight, bool select = false);
			void rect(Ogre::Vector2 pt1, Ogre::Vector2 pt2);
			void text(Ogre::String);
			bool isSelected();
			void setSelected(bool newSelect);
	};
}

#endif