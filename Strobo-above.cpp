		////////Simulating Kapitza equation//////////

	//Compile :g++ <filename>.cpp

	//Run::./a.out

	#include <stdio.h>

	#include <iostream>

	#include <math.h>

	#include <fstream>
	
	#include<stdlib.h>

	#include<sstream>
	
	using namespace std;	

	#define ARRAY_SIZE	2

	#define Omega 		40	

	#define ITERATION	20000

	#define Combination	50

	////////////////////////Defining class for pendulum/////////////////////////

	class Pendulum 

		{

		private:

		double pi,Real_Time,Time_Step_Size,t;

		public:

		void Derivatives(double,double*,double*);//This member function holds the equations to be integrated

        	Pendulum() { pi= 4.0*atan(1.0);}  //no argument constructor
 
		void Runge_Kutta4(double,double,double*,double*);/*Integrates those 8 equations by RK4 Algorithm*/ 

		void test(void); /*Initialises the eqn ,integrates and writes to the file*/

		};


	
	void Pendulum::Derivatives(double t,double* yy, double* dy)

	{

		double Amp,g,Length,beta; //Parameters for the system


		g=9.8;		

		Length=1.0;

		Amp=0.2;


	///////////////////////////Equations to be integrated///////////////////////////

		dy[0]  = yy[1];

		dy[1]  = -(g*sin(yy[0])+Amp*Omega*Omega*sin(yy[0])*cos(Omega*t));

	//	cout<<-g*sin(yy[0])-Amp*Omega*Omega*sin(yy[0])*cos(Omega*t)<<endl;

	}
	
	//////////////RK4 Algorithm////////////////

	void Pendulum::Runge_Kutta4(double t, double Time_Step_Size,double *yin,double *yout)
	{	
	
	double k1[ARRAY_SIZE],k2[ARRAY_SIZE],k3[ARRAY_SIZE],k4[ARRAY_SIZE],y_k[ARRAY_SIZE];

	Derivatives(t,yin,yout);

	for (int s=0;s<ARRAY_SIZE;s++){

	k1[s]=yout[s]*Time_Step_Size;

	y_k[s]=yin[s]+k1[s]*0.5;
					}	

	Derivatives(t+Time_Step_Size*0.5,y_k,yout);

	for (int s=0;s<ARRAY_SIZE;s++){

	k2[s]=yout[s]*Time_Step_Size;
	
	y_k[s]=yin[s]+k2[s]*0.5;

					} 

	
	Derivatives(t+Time_Step_Size*0.5,y_k,yout);

	for(int s=0;s<ARRAY_SIZE;s++){

	k3[s]=yout[s]*Time_Step_Size;
	
	y_k[s]=yin[s]+k3[s];
			
			     		}

	Derivatives(t+Time_Step_Size,y_k,yout);

	for(int s=0;s<ARRAY_SIZE;s++){

	k4[s]=yout[s]*Time_Step_Size;
	
	yout[s]=yin[s]+(1.0/6.0)*(k1[s]+2*k2[s]+2*k3[s]+k4[s]);

	//cout<<s<<"\n";
					 }
	

	}

	

	void Pendulum::test(void)

	{

	//double yy[8], dy[nm];

	//cout<<nm<<"\n";

	t  = 0.0;/*Initial Time*/
	
	Time_Step_Size=(2.0*pi/40.0)*0.001;

//	cout<<Time_Step_Size<<"\n";

	int Sampling_Interval=1000;

	Real_Time=Time_Step_Size*Sampling_Interval;


	//////////////////////Initialization of the variables//////////////////////////

	double y_Initial[ARRAY_SIZE],y1_IN[Combination],y2_IN[Combination],y_Final[ARRAY_SIZE];;

	ofstream Write_To_File("Strobo-above.dat");

	Write_To_File.setf(ios::scientific);

	Write_To_File.precision(4);


	for(int Condition=0;Condition<Combination;Condition++){

	//y1_IN[Condition] = 0.0+(2*pi/Combination)*Condition;

	y1_IN[Condition] = 0.0+.20*Condition;//

	//y1_IN[Condition] = pi+.010*Condition;//

	//y2_IN[Condition] =-2*pi+(4*pi/Combination)*Condition;

	y2_IN[Condition] =-2.0+.10*Condition;

	

	y_Initial[0]=y1_IN[Condition];

	y_Initial[1]=y2_IN[Condition];




	

	for(int iter=1; iter<ITERATION;iter++){

		for(int ii=0;ii<Sampling_Interval;ii++){

	Runge_Kutta4( t,Time_Step_Size,y_Initial,y_Final); /*Calling Runge_Kutta Algorithm*/              
		
	t+=Time_Step_Size;
	
	for( int jj=0;jj<ARRAY_SIZE;jj++){

				y_Initial[jj]=y_Final[jj];	  

        	   			  }

							}

	Write_To_File<<iter*Time_Step_Size<<"\t\t"<<y_Final[0]<<"\t\t"<<"\t\t"<<y_Final[1]<<endl;				

		}

	Write_To_File<<"\n";	

		}

	Write_To_File.close();
	
	

								}

	//////////////////////////////////////Main Function////////////////////////////////////////

		int main()
	
		{

		Pendulum Kapitza ;

		Kapitza.test();

		return 0;
        
		}



      
	
	



