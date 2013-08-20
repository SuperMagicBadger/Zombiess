#ifndef NX_MOVEMENT_H_
#define NX_MOVEMENT_H_

#include "nxQuaternion.h"
#include "nxPosition.h"

//Makes Byte Align for Raknet
#pragma pack(push, 1)

struct nxMovement{
	unsigned int ID;
	nxQuaternion q;
	nxPosition pos;
};

#pragma pack(pop)
#endif