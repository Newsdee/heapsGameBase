package en;

class Hero extends Entity {

	var ca : dn.legacy.Controller.ControllerAccess;

	var spd: Float;

    public function new(x,y,speed) {
		super(x,y);

		spd = speed;

		// Some default rendering for our character
		var g = new h2d.Graphics(spr);
		g.beginFill(0x6468D8);
		g.drawRect(0,0,16,16);
		
		ca = Main.ME.controller.createAccess("hero"); // creates an instance of controller

	}

	override function dispose() { // call on garbage collection
		super.dispose();
		ca.dispose(); // release on destruction
	}

	override function update() { // the Entity main loop
		super.update();

		if( ca.leftDown() || ca.isKeyboardDown(hxd.Key.LEFT) )
			dx -= spd*tmod;

		if( ca.rightDown() || ca.isKeyboardDown(hxd.Key.RIGHT) )
			dx += spd*tmod;

		if( ca.upDown() || ca.isKeyboardDown(hxd.Key.UP) )
			dy -= spd*tmod;

		if( ca.downDown() || ca.isKeyboardDown(hxd.Key.DOWN) )
			dy += spd*tmod;
	}

}

