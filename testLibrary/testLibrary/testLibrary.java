package testLibrary;
import processing.core.*;

public class testLibrary {
  PApplet parent;
  
  PVector hello=new PVector(0,0,0);

  public testLibrary(PApplet parent) {
    this.parent = parent;
    parent.registerDraw(this);
    
    parent.println("Hallo");
    
    
  }

  public void draw() {
	parent.println(hello);
	}
}
