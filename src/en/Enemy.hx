package en;
/* Enemy class
*/


class Enemy extends Entity {
    /* hp
    //shield (extra hp)
    //armour (resistance (ex: 50% = 1 > 0.5))
    //walk
    //speed
    //extras (below)
    //ghosts
    // types 
    */
    public function new (x,y) {
        super (x,y) ;
   
        var g = new h2d.Graphics (spr);
        g.beginFill (0x00ffff);
        g.drawRect ( 0, 0,16,16);

    }
    override function dispose () { 
       super.dispose ();
    
    }

    override function update () {
        super.update();
        dx += 0.001*tmod;
        
    } 

}
