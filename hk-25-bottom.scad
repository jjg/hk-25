speaker_diameter = 52;
jack_barrel_diameter = 6;

difference(){
	// bottom bounding "box"
	cylinder(r=(speaker_diameter/2)+1,h=speaker_diameter,$fn=100);
	
	// center hole
	translate([0,0,1]){
		cylinder(r=speaker_diameter/2.1,h=speaker_diameter,$fn=100);
	}
	
	// speaker jack hole
	translate([0,0,10]){
		rotate([0,90,0]){
			cylinder(r=jack_barrel_diameter/2,h=speaker_diameter,$fn=25);
		}
	}
}