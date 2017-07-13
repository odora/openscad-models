module bottom(){
    difference(){
        cube([109,147,3]);
        translate([7,7,2])cube([95,140,1]);
    }
}

module frame(){
    points=[
        [0,0,0],[109,0,0],[109,147,0],[0,147,0],
        [0,0,7],[109,0,7],[109,147,7],[0,147,7],
        [10,10,0],[98,10,0],[98,136,0],[10,136,0],
        [10,10,2],[98,10,2],[98,136,2],[10,136,2]
    ];

    faces=[
        [0,1,9,8],[1,2,10,9],[2,3,11,10],[3,0,8,11],
        [4,5,13,12],[5,6,14,13],[6,7,15,14],[7,4,12,15],
        [0,1,5,4],[1,2,6,5],[2,3,7,6],[3,0,4,7],
        [8,9,13,12],[9,10,14,13],[10,11,15,14],[11,8,12,15]
    ];

    translate([0,0,3])polyhedron(points,faces);
}

//frame();
bottom();