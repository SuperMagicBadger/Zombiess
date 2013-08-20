# include "gridmap.h"
# include <iostream>

//# include "../src/app_main.h"
# include <math.h>
# include <queue>




queue<Gridmap_Node*> Q;	// Holds Nodes to be checked
std::vector<Gridmap_Node*> N;	// Holds Index of the Parent Nodes

Gridmap_Node** node_map;
Gridmap gridmap;

Gridmap_Node** GetNodeMap()
{

	return node_map;
}

/*
SnBox* GetNodeMap(int i, int j)
{
	
	return node_map[i][j].box;
}
*/

Gridmap::Gridmap()
{
	x = 0;
	y = 0;
	dimsize = 1;	



}
Gridmap::Gridmap(int x, int y)
{

	this->x = x;
	this->y = y;
	this->dimsize = 1;
	float dim = dimsize;
	map = new char*[x];
	node_map = new Gridmap_Node*[x];
	for(int i=0;i<x;i++)
	{
		map[i] = new char[y];
		node_map[i] = new Gridmap_Node[y];
		for(int j=0;j<y;j++)
		{
			map[i][j] = '.';
			//node_map[i][j].SetXY(i*dimsize,j*dimsize);
			//cout << map[i][j];
		}
		//cout << endl;
	}





}

Gridmap::Gridmap(int id)
{

	this->x = 128;
	this->y = 128;
	this->dimsize = 1;
	float dim = dimsize;
	map = new char*[x];
	node_map = new Gridmap_Node*[x];
	for(int i=0;i<x;i++)
	{
		map[i] = new char[y];
		node_map[i] = new Gridmap_Node[y];
		for(int j=0;j<y;j++)
		{
			map[i][j] = '.';

			node_map[i][j].SetXY(i*10+-640,j*10+-640);
			//node_map[i][j].SetXY(i*dimsize,j*dimsize);
			//cout << map[i][j];
		}
		//cout << endl;
	}





}




Gridmap::Gridmap(int x, int y, char* Map)
{
	this->x = x;
	this->y = y;
	this->dimsize = 1;
	float dim = dimsize;
	map = new char*[x];
	node_map = new Gridmap_Node*[x];
	for(int i=0;i<x;i++)
	{
		map[i] = new char[y];
		node_map[i] = new Gridmap_Node[y];
		for(int j=0;j<y;j++)
		{
			map[i][j] = '.';
			//node_map[i][j].SetXY(i*dimsize,j*dimsize);
			//cout << map[i][j];
		}
		//cout << endl;
	}

	//cout << endl << endl;
	//cout << "Done Initializing..." << endl << endl;

	
	this->Map = Map;
	char tempchar;
	
	for(int i=0;i<x;i++)
	{
		for(int j=0;j<y;j++)
		{
			
			tempchar = Map[i*y+j];
			node_map[i][j].SetXY(i*dim,j*dim);	// Not true coordinates but how many blocks there are
			if(tempchar == '.')
			{				
				
			}
			else if(tempchar == 'X')
			{
				node_map[i][j].SetIsFree(false);
			}
		}
	}

	




/*
	//Borders
	for(int i =0;i<x;i++)
	{
		map[i][0]	= 'X';
		map[i][y-1] = 'X';
		node_map[i][0].SetIsFree(false);		
		node_map[i][y-1].SetIsFree(false);
	}

	for(int i =0;i<y;i++)
	{
		map[0][i]	= 'X';
		map[x-1][i] = 'X';
		node_map[0][i].SetIsFree(false);		
		node_map[x-1][i].SetIsFree(false);
	}

	map[5][5] = 'X';
	map[5][4] = 'X';
	map[5][3] = 'X';
	node_map[5][5].SetIsFree(false);
	node_map[5][4].SetIsFree(false);
	node_map[5][3].SetIsFree(false);

	map[5][2] = 'X';
	map[5][1] = 'X';
	
	node_map[5][2].SetIsFree(false);
	node_map[5][1].SetIsFree(false);
	
	map[6][5] = 'X';
	map[7][5] = 'X';
	
	node_map[6][5].SetIsFree(false);
	node_map[7][5].SetIsFree(false);
	

	*/


	// Print Check to see if the indices are correctly created
	
	
	
}

// You'll want in internal "GRIDSIZE" variable to multiply b
char Gridmap::GetMapValue(int x, int y)
{
	return map[x][y];
}
int Gridmap::GetDimX()
{
	return x;
}

int Gridmap::GetDimY()
{
	return y;
}

float Gridmap::GetDim()
{
	return dimsize;
}







void Gridmap::GridPath(Vector3 start, Vector3 end)
{
	//cout << "Resetting Nodes..." << endl;
	for(int i =0;i<x;i++)
	{
		for (int j=0;j<y;j++)
		{
			node_map[i][j].hasvisited = false;
			node_map[i][j].SetParent(0);
			node_map[i][j].SetIsGoal(false);
			//node_map[i][j].box->color(GsColor::gray);
		}

	}

	
	float dim = this->GetDim();
	int s_x = start.x/dim;
	int s_y = start.z/dim;
	int e_x = end.x/dim;
	int e_y = end.z/dim;
	
	
	// Create initial Node
	while(!N.empty())
	{
		N.pop_back();
	}
	
	while(!Q.empty())
	{
		Q.pop();
	}
	if(s_x < 0 
	|| s_y < 0 
	|| e_x < 0 
	|| e_y < 0
	|| s_x > this->x*dim-1
	|| s_y > this->y*dim-1
	|| e_x > this->x*dim-1
	|| e_y > this->y*dim-1 )
	{
		cout << "Start or End Point is out of bounds" << endl;
		return;
	}

	if(!node_map[s_x][s_y].GetIsFree()
	|| !node_map[e_x][e_y].GetIsFree())
	{
		cout << "Start or End Point is an obstacle" << endl;
		return;
	}


	//node_map[s_x][s_y].box->color(GsColor::green);
	//node_map[e_x][e_y].box->color(GsColor::red);
	Gridmap_Node* temp;
	node_map[s_x][s_y].SetParent(-1);
	node_map[e_x][e_y].SetIsGoal(true);
	
	if(node_map[s_x][s_y].GetParent() == -1)
	{
		cout << "Correct Parent" << endl;
	}

	if(node_map[e_x][e_y].GetIsGoal())
	{
		cout << "Goal is correct" << endl;
	}

	Q.push(&node_map[s_x][s_y]);
	int counter = 0;

	while(!Q.front()->GetIsGoal() )
	{
		
		temp = Q.front();
		//temp.SetParent(counter-1);
		//cout << "Parent " << temp.GetParent() << endl;
		//cout << "---";
		//temp.PrintXY();
		temp->hasvisited = true;
		
		N.push_back(temp);
		if(Q.empty())
		{
			cout << "Q is empty" << endl;
			return;
		}
		Q.pop();
		
		if(temp->x -1 >= 0)
		{
			if(node_map[temp->x-1][temp->y].GetIsFree() && !node_map[temp->x-1][temp->y].hasvisited)
			{
				node_map[temp->x-1][temp->y].SetParent(counter);
				//N.push(node_map[temp.x-1][temp.y]);
				Q.push(&node_map[temp->x-1][temp->y]);
				node_map[temp->x-1][temp->y].hasvisited = true;
				//node_map[temp.x-1][temp.y].PrintXY();
			}
		}
		if(temp->x +1 < x*dim)
		{
			if(node_map[temp->x+1][temp->y].GetIsFree() && !node_map[temp->x+1][temp->y].hasvisited)
			{
				node_map[temp->x+1][temp->y].SetParent(counter);
				//N.push(node_map[temp.x+1][temp.y]);
				Q.push(&node_map[temp->x+1][temp->y]);
				node_map[temp->x+1][temp->y].hasvisited = true;
				//node_map[temp.x+1][temp.y].PrintXY();
			}

		}
		if(temp->y -1 >= 0)
		{
			if(node_map[temp->x][temp->y-1].GetIsFree() && !node_map[temp->x][temp->y-1].hasvisited)
			{
				node_map[temp->x][temp->y-1].SetParent(counter);
				//N.push(node_map[temp.x][temp.y-1]);
				Q.push(&node_map[temp->x][temp->y-1]);
				node_map[temp->x][temp->y-1].hasvisited = true;
				//node_map[temp.x][temp.y-1].PrintXY();
			}

		}
		if(temp->y +1 < y*dim)
		{
			if(node_map[temp->x][temp->y+1].GetIsFree() && !node_map[temp->x][temp->y+1].hasvisited)
			{
				node_map[temp->x][temp->y+1].SetParent(counter);
				//N.push(node_map[temp.x][temp.y+1]);
				Q.push(&node_map[temp->x][temp->y+1]);
				node_map[temp->x][temp->y+1].hasvisited = true;
				//node_map[temp.x][temp.y+1].PrintXY();
			}

		}
		counter++;

		if(Q.empty())
		{
			cout << "Q is empty" << endl;
			return;
		}

	}
	//cout << "----------------" << endl;
	int temp_int;
	temp_int = Q.front()->GetParent();
	cout << temp_int << endl;
	//Q.front()->PrintXY();
	//Q.front()->box->color(GsColor::red);
	//node_map[Q.front()->x][Q.front()->y].box->color(GsColor::red);
	//line->begin_polyline();
	//line->push(Q.front().x+0.5,0,Q.front().y+0.5);
	Gridmap_Node* temp_node;
	temp_node = Q.front();
	while(temp_int != -1)
	{
		
		temp_node = N[temp_node->GetParent()];	
		//temp_node->PrintXY();
		//node_map[temp_node->x][temp_node->y].box->color(GsColor::blue);
		//temp_node->box->color(GsColor::blue);
		//line->push(temp_node.x+0.5,0,temp_node.y+0.5);
		temp_int = temp_node->GetParent();
		//cout << temp_int << endl;
	}
	//temp_node->box->color(GsColor::green);
	//node_map[temp_node->x][temp_node->y].box->color(GsColor::green);
	//line->color(GsColor::red);
	//line->end_polyline();
	//tempG->add(line);
	
}




Gridmap_Node::Gridmap_Node()
{
	parent = 0;
	cost = 0;
	x = 0;
	y = 0;
	z = 0;
	isfree = true;
	isgoal = false;
	hasvisited = false;
	//box = new SnBox();
}

Gridmap_Node::~Gridmap_Node()
{

	
}

int Gridmap_Node::GetParent()
{
	return parent;
}
int Gridmap_Node::GetCost()
{
	return cost;
}
void Gridmap_Node::SetParent(int parent)
{
	this->parent = parent;
}
void Gridmap_Node::SetCost(int cost)
{
	this->cost = cost;
}
bool Gridmap_Node::GetIsFree()
{
	return isfree;
}
bool Gridmap_Node::GetIsGoal()
{
	return isgoal;
}
void Gridmap_Node::SetIsFree(bool isfree)
{
	this->isfree = isfree;
}
void Gridmap_Node::SetIsGoal(bool isgoal)
{
	this->isgoal = isgoal;
}

void Gridmap_Node::SetXY(int x, int y)
{
	this->x = x;
	this->y = y;
}

void Gridmap_Node::SetXYZ(int x, int y, int z)
{
	this->x = x;
	this->y = y;
	this->z = z;
}

void Gridmap_Node::PrintXY()
{
	cout << this->x << "," << this->y << endl;

}



void Gridmap_Node::PrintXY(int x, int y)
{
	cout << "Position " << x << "," << y << " = Node Position " << this->x << "," << this->y << endl;

}


std::vector<Gridmap_Node*> CharacterPath(Vector3 start, Vector3 end, Gridmap map)
{
	std::vector<Gridmap_Node*> path;
	Gridmap gridmap = map;
	//cout << "Resetting Nodes..." << endl;
	int x = gridmap.GetDimX();
	int y = gridmap.GetDimY();
	float dim = gridmap.GetDim();
	for(int i =0;i<x;i++)
	{
		for (int j=0;j<y;j++)
		{
			node_map[i][j].hasvisited = false;
			node_map[i][j].SetParent(0);
			node_map[i][j].SetIsGoal(false);
			//node_map[i][j].box->color(GsColor::gray);
		}

	}

	
	if(start.z <0.3)
	{
		cout << "Maybe?!!?" << endl;
	}

	int s_x = (start.x +640) / 10;
	int s_y = (start.z +640) / 10;
	int e_x = (end.x +640) / 10;
	int e_y = (end.z +640) / 10;
	// Create initial Node
	
	if(s_x < 0 
	|| s_y < 0 
	|| e_x < 0 
	|| e_y < 0
	|| s_x > x-1
	|| s_y > y-1
	|| e_x > x-1
	|| e_y > y-1 )
	{
		//cout << "Start or End Point is out of bounds" << endl;
		//cout << "Start = " << s_x << "," << s_y << endl;
		//cout << "End = " << e_x << "," << e_y << endl;
		return path;
	}

	if(!node_map[s_x][s_y].GetIsFree()
	|| !node_map[e_x][e_y].GetIsFree())
	{
		//cout << "Start or End Point is an obstacle" << endl;
		//cout << "Start = " << s_x << "," << s_y << endl;
		//cout << "End = " << e_x << "," << e_y << endl;
		return path;
	}
	while(!N.empty())
	{
		N.pop_back();
	}
	
	while(!Q.empty())
	{
		Q.pop();
	}


	//node_map[s_x][s_y].box->color(GsColor::green);
	//node_map[e_x][e_y].box->color(GsColor::red);
	Gridmap_Node* temp;
	node_map[s_x][s_y].SetParent(-1);
	node_map[e_x][e_y].SetIsGoal(true);
	
	if(node_map[s_x][s_y].GetParent() == -1)
	{
		//cout << "Correct Parent" << endl;
	}

	if(node_map[e_x][e_y].GetIsGoal())
	{
		//cout << "Goal is correct" << endl;
	}

	Q.push(&node_map[s_x][s_y]);
	int counter = 0;

	while(!Q.front()->GetIsGoal())
	{
		temp = Q.front();
		int temp_x = (temp->x +640) / 10;
		int temp_y = (temp->y +640) / 10;
		//temp.SetParent(counter-1);
		//cout << "Parent " << temp.GetParent() << endl;
		//cout << "---";
		//temp.PrintXY();
		temp->hasvisited = true;
		//cout << "Queue size = " << Q.size() << endl;
		//cout << "Array size = " << N.size() << endl;


		N.push_back(temp);
		if(Q.empty())
		{
			cout << "Q is empty no path!!" << endl;
			return path;
		}
		Q.pop();
		if(temp_x -1 >= 0)
		{
			if(node_map[temp_x-1][temp_y].GetIsFree() && !node_map[temp_x-1][temp_y].hasvisited)
			{
				node_map[temp_x-1][temp_y].SetParent(counter);
				//N.push(node_map[temp.x-1][temp.y]);
				Q.push(&node_map[temp_x-1][temp_y]);
				node_map[temp_x-1][temp_y].hasvisited = true;
				//node_map[temp.x-1][temp.y].PrintXY();
			}
		}
		if(temp_x +1 < x)
		{
			if(node_map[temp_x+1][temp_y].GetIsFree() && !node_map[temp_x+1][temp_y].hasvisited)
			{
				node_map[temp_x+1][temp_y].SetParent(counter);
				//N.push(node_map[temp.x+1][temp.y]);
				Q.push(&node_map[temp_x+1][temp_y]);
				node_map[temp_x+1][temp_y].hasvisited = true;
				//node_map[temp.x+1][temp.y].PrintXY();
			}

		}
		if(temp_y -1 >= 0)
		{
			if(node_map[temp_x][temp_y-1].GetIsFree() && !node_map[temp_x][temp_y-1].hasvisited)
			{
				node_map[temp_x][temp_y-1].SetParent(counter);
				//N.push(node_map[temp.x][temp.y-1]);
				Q.push(&node_map[temp_x][temp_y-1]);
				node_map[temp_x][temp_y-1].hasvisited = true;
				//node_map[temp.x][temp.y-1].PrintXY();
			}

		}
		if(temp_y +1 < y)
		{
			if(node_map[temp_x][temp_y+1].GetIsFree() && !node_map[temp_x][temp_y+1].hasvisited)
			{
				node_map[temp_x][temp_y+1].SetParent(counter);
				//N.push(node_map[temp.x][temp.y+1]);
				Q.push(&node_map[temp_x][temp_y+1]);
				node_map[temp_x][temp_y+1].hasvisited = true;
				//node_map[temp.x][temp.y+1].PrintXY();
			}

		}
		counter++;
		if(Q.empty())
		{
			cout << "Q is empty" << endl;
			return path;
		}
	}
	//cout << "----------------" << endl;
	int temp_int;
	temp_int = Q.front()->GetParent();
	//cout << temp_int << endl;
	//Q.front().PrintXY();
	//Q.front().box->color(GsColor::red);		// End Point
	//path.push(Q.front());
	path.push_back(Q.front());
	//line->begin_polyline();
	//line->push(Q.front().x+0.5,0,Q.front().y+0.5);
	Gridmap_Node* temp_node;
	temp_node = Q.front();
	while(temp_int != -1)
	{
		
		temp_node = N[temp_node->GetParent()];	
		//temp_node.PrintXY();
		path.push_back(temp_node);
		//temp_node.box->color(GsColor::blue);
		//line->push(temp_node.x+0.5,0,temp_node.y+0.5);
		temp_int = temp_node->GetParent();
		//cout << temp_int << endl;
	}
	//temp_node.box->color(GsColor::green);		// Start Point
	//line->color(GsColor::red);
	//line->end_polyline();
	//tempG->add(line);
	while(!N.empty())
	{
		N.pop_back();
	}
	
	while(!Q.empty())
	{
		Q.pop();
	}
	

	return path;
}
								// This x,y,z is the position of the character that you are testing to see if he is at the node yet
bool Gridmap_Node::ReachedNode(float x, float y, float z)
{
	// REMEMBER THAT GRIDMAP BELIEVED THAT ITS X,Y WAS X,Z
	// THUS NODE Y VALUE IS ACTUALLY Z, AND Z IS Y
	// NODE Y = REAL Z
	// NODE Z = REAL Y
	float node_x = this->x +0.5;
	float node_y = this->z +0.5;
	float node_z = this->y +0.5;

	//cout << "Node Position = " << node_x << "," << node_y << "," << node_z << " Compare to " << x << "," << y << "," << z << endl;

	if(	  
		   abs(node_x - x) <= 10
	    //&& abs(node_y - y) <= 0.6
	    && abs(node_z - z) <= 10	
									)
		{
			return true;
		}
		else
		{
			
			return false;
		}
}