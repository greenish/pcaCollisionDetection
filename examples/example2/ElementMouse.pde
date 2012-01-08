class ElementMouse extends CollisionElement{
////////////////////////////////////////////////////////////////////////////////
	ArrayList<Color>		colors = new ArrayList();
	Color					elementColor;
////////////////////////////////////////////////////////////////////////////////
	public ElementMouse(){	
		location = new PVector (mouseX, mouseY);
		actionRadius= 50;
		elementColor = new Color(0,0,0);
	}
////////////////////////////////////////////////////////////////////////////////
	public void collision(CollisionElement element, CollisionMap collisionMap, boolean mainCollision) {
		ElementCircle thisElement = (ElementCircle) element;
		colors.add(thisElement.elementColor);
	}
////////////////////////////////////////////////////////////////////////////////
	void draw() {
		location = new PVector (mouseX, mouseY);

		if(colors.size() >0) {
			for(int i=0; i<colors.size(); i++) {
				Color thisColor= (Color) colors.get(i);
				fill(thisColor.getRed(),thisColor.getGreen(),thisColor.getBlue(), 200/colors.size());				
				ellipse(mouseX,mouseY, actionRadius*2,actionRadius*2);	
			}
			colors=new ArrayList();
		}
		else {
			fill(elementColor.getRed(),elementColor.getGreen(),elementColor.getBlue(), 50);				
			ellipse(mouseX,mouseY, actionRadius*2,actionRadius*2);
		}
	}
////////////////////////////////////////////////////////////////////////////////
}