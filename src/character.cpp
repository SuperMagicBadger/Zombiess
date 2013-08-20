# include "character.h"
# include <math.h>

int total_chars =0;


float max_speed = 2.5f;
float max_force = 0.5;
float max_displacement = 3.0f;

float steering_force = 1.0f;


Character::Character()
{
	chasingtheball = false;
	x = 0;
	y = 0;
	z = 0;
	Vector3 temp;
	temp.x = 0;
	temp.y = 0;
	temp.z = 0;
	this->goal = temp;
	this->m = 1;
	this->v = temp;
	this->f = temp;
	this->p = temp;
	this->p_old = temp;
	this->p_next = temp;
	id_pos = total_chars;
	total_chars++;
}

Character::Character(float X, float Y, float Z)
{
	chasingtheball = false;
	x = X;
	y = Y;
	z = Z;
	Vector3 temp;
	temp.x = 0;
	temp.y = 0;
	temp.z = 0;
	this->goal = temp;
	this->m = 1;
	this->v = temp;
	this->f = temp;
	this->p_next = temp;
	temp.x = X;
	temp.y = Y;
	temp.z = Z;
	this->p = temp;
	this->p_old = temp;
	id_pos = total_chars;
	total_chars++;
}

Character::~Character()
{
	
}

void Character::PrintXYZ()
{
	cout << x << "," << y << "," << z << endl;
}


void compute_force(std::vector<Character*> VecChar,Vector3 redball)
{
	for(int i =0;i<VecChar.size();i++)
	{
		// Steering
		VecChar[i]->f = Vector3(0,0,0);
		Vector3 curr = VecChar[i]->p;
		Vector3 next = VecChar[i]->p_next;
		Vector3 result = next - curr;
		result.normalise();
		//result.normalize();
		result *= steering_force; 

		VecChar[i]->f = result;

		// Gathering
		result = redball - curr;
		//if(result.len() < 2.0f)
		if(result.length() < 2.0f)
		{
			VecChar[i]->f = Vector3(0,0,0);
			result.normalise();
			//result.normalize();
			result *= steering_force; 
			VecChar[i]->f = result;
			VecChar[i]->chasingtheball = true;
			VecChar[i]->v = Vector3(0,0,0);
		}
		else
		{
			VecChar[i]->chasingtheball = false;
		}

	}


}
void EulerStep(float delta,std::vector<Character*> VecChar)
{

	for(int i =0;i<VecChar.size();i++)
	{
		
		float m = VecChar[i]->m; 
		Vector3 f = VecChar[i]->f;
		Vector3 v = VecChar[i]->v;
		Vector3 p = VecChar[i]->p;
		VecChar[i]->p_old = p;
		
		Vector3 a = f / m;

		Vector3 next_v = v + (delta * a);
		next_v.x = min(next_v.x,max_speed);
		next_v.y = min(next_v.y,max_speed);
		next_v.z = min(next_v.z,max_speed);
		next_v.normalise();
		next_v *= max_speed;

		Vector3 next_p = p + (delta * v);
		

		VecChar[i]->v = next_v;
		VecChar[i]->p = next_p;
		VecChar[i]->x = next_p.x;
		VecChar[i]->y = next_p.y;
		VecChar[i]->z = next_p.z;
	}
}
std::vector<int> CollisionDetection(std::vector<Character*> VecChar)
{
	// Wall Collisions
	std::vector<int> tempvec;
	for(int i =0;i<VecChar.size();i++)
	{
		if(	VecChar[i]->x < 1 
		 || VecChar[i]->x > 19
		 || VecChar[i]->z < 1
		 || VecChar[i]->z > 19 )
		{
			//VecChar[i]->p = VecChar[i]->p_old;
			//VecChar[i]->x = VecChar[i]->p_old.x;
			//VecChar[i]->y = VecChar[i]->p_old.y;
			//VecChar[i]->z = VecChar[i]->p_old.z;
			VecChar[i]->v = Vector3(0,0,0);
			tempvec.push_back(i);
		}
		
		if(	VecChar[i]->x < 1)
		{
			VecChar[i]->p.x = 1.5;
			VecChar[i]->x = 1.5;
			VecChar[i]->v = Vector3(0,0,0);
		}
		if(VecChar[i]->x > 19)
		{
			VecChar[i]->p.x = 18.5;
			VecChar[i]->x = 18.5;
			VecChar[i]->v = Vector3(0,0,0);
		}
		if(VecChar[i]->z < 1)
		{
			VecChar[i]->p.z = 1.5;
			VecChar[i]->z = 1.5;
			VecChar[i]->v = Vector3(0,0,0);
		}
		if(VecChar[i]->z > 19 )
		{
			VecChar[i]->p.z = 18.5;
			VecChar[i]->z = 18.5;
			VecChar[i]->v = Vector3(0,0,0);
		}
		

	}

	for(int i =0;i<VecChar.size();i++)
	{
		for(int j =0;j<VecChar.size();j++)
		{
			
			if(i != j)
			{
				// Bouncing Off Each other
				Vector3 result = VecChar[i]->p - VecChar[j]->p;
				if(result.length() < 0.1)
				{
					VecChar[i]->p += result;
					VecChar[j]->p -= result;
				}
			}
		}
	}

	return tempvec;
	//Character Collisions

}
void Constraint_Correction(std::vector<Character*> VecChar)
{
	

}
