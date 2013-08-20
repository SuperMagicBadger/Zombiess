#ifndef NX_Quaternion_H_
#define NX_Quaternion_H_

//Makes Byte Align for Raknet
#pragma pack(push, 1)
struct nxQuaternion{
	float w;
	float x;
	float y;
	float z;
};

#pragma pack(pop)
#endif