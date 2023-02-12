module rounded_box(w,d,h,r)
{
	union(){
		translate([-w/2+r, -d/2+r, 0]) cylinder(h, r, r);
		translate([-w/2+r, d/2-r, 0]) cylinder(h, r, r);
		translate([w/2-r, -d/2+r, 0]) cylinder(h, r, r);
		translate([w/2-r, d/2-r, 0]) cylinder(h, r, r);
		
		translate([-w/2+r, -d/2, 0]) cube([w-r*2,d,h]);
		translate([-w/2, -d/2+r, 0]) cube([w,d-r*2,h]);
	}
}