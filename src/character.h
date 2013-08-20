# pragma once

//# include "gridmap.h"
# include <iostream>
# include "OgreVector3.h"

using namespace Ogre;
using namespace std;


class Character
{
private:
	

public:
	bool chasingtheball;
	float x;
	float y;
	float z;
	int id_pos;
	float m; /* mass */
	Vector3 p; /* position vector */
	Vector3 p_next;
	Vector3 p_old;
	Vector3 goal;
	Vector3 v; /* velocity vector */
	Vector3 f; /* force accumulator */
	//Path pathing;
	//Gridmap_Node gman;
	// Constructors
	Character();
	Character(float X, float Y, float Z);
	~Character();
	
	
	

	// Debug Functions
	void PrintXYZ();

};


void compute_force(std::vector<Character*> VecChar,Vector3 redball);
void EulerStep(float delta,std::vector<Character*> VecChar);
std::vector<int> CollisionDetection(std::vector<Character*> VecChar);
void Constraint_Correction(std::vector<Character*> VecChar);