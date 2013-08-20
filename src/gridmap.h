# pragma once

# include <OGRE/OgreVector3.h>
//# include "character.h"
# include <iostream>
# include <vector>
# include "Actor.h"

/*

# include "../src/app_viewer.h"
# include "../src/app_main.h"
*/


using namespace Ogre;
using namespace std;



class Gridmap
{
private:
	float dimsize;
	char** map;
	
	int x;
	int y;
	
	
public:
	char* Map;
	Gridmap();
	Gridmap(int id);
	Gridmap(int x, int y);
	Gridmap(int x, int y, char* Map);
	char** GetMap();
	char GetMapValue(int x, int y);

	int GetDimX();
	int GetDimY();
	float GetDim();
	void GridPath(Vector3 start, Vector3 end);
	
};


class Gridmap_Node
{
private:
	int parent;	// Position of parent in the array
	int cost;   // Cost of the traveling to this node from the start
	
	bool isfree;
	bool isgoal;
	
public:
	int x,y,z;
	//SnBox* box;
	bool hasvisited;
	Gridmap_Node();
	~Gridmap_Node();
	int GetParent();
	int GetCost();
	void SetParent(int parent);
	void SetCost(int cost);
	bool GetIsFree();
	bool GetIsGoal();
	void SetIsFree(bool isfree);
	void SetIsGoal(bool isgoal);
	void SetXY(int x, int y);
	void PrintXY();
	void PrintXY(int x, int y);
	void SetXYZ(int x, int y, int z);
	bool ReachedNode(float x, float y, float z);
};




Gridmap_Node** GetNodeMap(); // get whole map
std::vector<Gridmap_Node*> CharacterPath(Vector3 start, Vector3 end, Gridmap map);
