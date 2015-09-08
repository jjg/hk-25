speaker_diameter = 52;

union(){
	difference(){
		// top bounding "box"
		cylinder(r=(speaker_diameter/2)+1,h=speaker_diameter/2,$fn=100);
		
		// side holes
		for(i=[1:5]){
			rotate([0,0,(i * 360)/5]){
				translate([-(speaker_diameter/2)-1,-speaker_diameter/7,speaker_diameter/20]){
					cube([speaker_diameter+2, speaker_diameter/3.5, speaker_diameter/2.5]);
				}
			}
		}
		
		// bottom hole
		translate([0,0,-1]){
			cylinder(r=speaker_diameter/2.17,h=4,$fn=100);
		}
	}

	// dispirtion cone
	translate([0,0,4]){
		hull(){
			cylinder(r2=(speaker_diameter/2)+1, r1=1, h=(speaker_diameter/2)-5,$fn=100);
			translate([-1,-15,11]){
				rotate([0,90,0]){
					cylinder(r=6,h=2,$fn=50);
				}
			}
		}
	}
}