#include "button.h"

namespace GUI{
	button::button(unsigned int newID, Gorilla::Layer* inLayer, float nWidth, float nHeight, bool newSelect){
		id = newID;
		selected = newSelect;
		buttonLayer = inLayer;
		
		message = NULL;
		box = NULL;

		width = nWidth;
		height = nHeight;
		//Gorilla::Rectangle* box;
	}

	void button::rect(Ogre::Vector2 pt1, Ogre::Vector2 pt2){
		//Bottom Bar
		box = buttonLayer->createRectangle(pos.x, pos.y, pos.x + width, pos.y + height);
		box->background_gradient(Gorilla::Gradient_Diagonal, Gorilla::rgb(99, 99, 99), Gorilla::rgb(99, 99, 99));
	}
	void button::text(Ogre::String caption){
		if(message == NULL){
			message = buttonLayer->createCaption(24, 50, 0, "");
			message->width(width);
			message->height(height);
			message->align(Gorilla::TextAlign_Left);
			message->vertical_align(Gorilla::VerticalAlign_Top);
		}
		message->text(caption);
	}
	bool button::isSelected(){
		return selected;
	}
	void button::setSelected(bool newSelect){
		selected = newSelect;
	}
}