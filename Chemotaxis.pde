Bacteria [] colony; 
 void setup()   
 {     
 	size(500,500);
 	colony = new Bacteria[1000];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {   
 	background(255); 
 	fill(255,140,0);
 	ellipse(250,15,500,50);
 	fill(0);
 	ellipse(250,15,450,40);
 	fill(0,191,295);
 	ellipse(250,485,500,50);
 	fill(0);
 	ellipse(250,485,450,40);
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i].spread();
 		colony[i].show();
 	}
 } 
 class Bacteria    
 {     
 	int x, y, c;
 	Bacteria ()
 	{
 		x = 250;
 		y = 500;
 		//c = (int)(Math.random()*255)+1;
 	}  
 	void spread()
 	{
 		if (mouseX > x)
 		{
 			x = x + (int)(Math.random()*3)-2;
    		y = y + (int)(Math.random()*5)-3;
    	}
    	else if (mouseX < x) 
    	{
    		x = x + (int)(Math.random()*3);
    		y = y + (int)(Math.random()*5)-3;
    	} 
    	if (y < 25)
    	{
    		y = 475;
    	}
    	else if (y > 475)
    	{
    		y = 25;
    	}
 	}
 	void show()
 	{
 		fill(255,255,0);
 		ellipse(x,y,10,10);
 		fill(0);
 		rect(x-5,y-1,10,3,5);
 		fill(211,211,211);
 		ellipse(x-5,y,5,5);
 		ellipse(x+5,y,5,5);
 	}
 }    