#include "character.h"

character::character(unsigned int ident, float posX, float posY, float posZ){
	this->ID = ident;
	this->x = posX;
	this->y = posY;
	this->z = posZ;
}