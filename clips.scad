
CLIP_STOPPER = 2;


module sampleclipsocket() {
    translate([0, 0, 0]) {
        union() {
            clip(1);
            //translate([-6, -10, 0]) cube([12, 10, 1]);
            mirror([0, 1, 0]) clip(1);
        }
    }
    //%cliphollow(2);

    rotate([-90, 0, 0]) {
    translate([20, -13, 0]) {
        difference() {
            translate([-10, 0, 0]) cube([20, 13, 3]);
            translate([0, 0, 1.4/2]) socket(1.6);
        }
    }
}
}

//sampleclipsocket();

clipmainpoints = [
    [4.9, 5.695],
    [5.197, 5.905],
        // Edges of outer corner
        [5.253, 5.991],
        [5.297, 6.103],
        [5.324, 6.233],
        [5.331, 6.37],
    [5.318, 6.50],
    [4.868, 7.284],
    [2.55, 9.60],
    ];

clipstopperpoints = [
    [0,0],
    [6.6, 0],
    [6.6, CLIP_STOPPER],
    [4.9, CLIP_STOPPER],
];

cliphollowpoints = concat(clipmainpoints, [[0,  9.60], [0, 1.5], [4.9, 1.5]]);

//for(x=clipmainpoints) translate(x) color("aqua") cylinder(h=2, d=0.1);
//for(x=clipstopperpoints) translate(x) color("red") cylinder(h=2, d=0.1);
//for(x=clipmainpoints) translate(x) color("aqua") cylinder(h=2, d=0.1);
    
// The area to hollow out around a clip so the arms can bend
// Area should be hollowed, before clip is then built in place
module cliphollow(h) {
    linear_extrude(h) polygon(cliphollowpoints);
    linear_extrude(h) mirror([1, 0 ,0]) polygon(cliphollowpoints);
}

module socket(h) {
    linear_extrude(h) socketpolygon();
}

module socketpolygon() {
    socketedge();
    mirror([1, 0 ,0]) socketedge();
    
    module socketedge() {
        polygon([
            [0, 0], 
            [7, 0],
            [7, 2],
            [6, 2],
            [5, 5],
            [5, 6],
            [7, 6],
            [7, 10.6],
            [0, 10.6],
            ]);
    }
}

module clip(h, scale_width=1) {
    scale([scale_width, 1, 1]) linear_extrude(h) clippolygon();
}



module clippolygon() {
    //W = 13.2;
    D = 3.7;
    H = 3.5;
    H = 1.5;
    
    clipedge();
    mirror([1, 0, 0]) clipedge();

    module clipedge() {
        resolution = 20;




        curve = [
            [1, 9.60],
            [2.1, 5.85],
            [2.7, 1.55],
            [0, 1.578],
            ];
        curvepoints = bezier(curve);

        fullpoints = concat(curvepoints, clipstopperpoints, clipmainpoints);
        polygon(fullpoints);


        function choose(n, k)=
             k == 0 ? 1 : (n * choose(n - 1, k - 1)) / k;

        function _point_on_bezier_rec(points,t,i,c)=
            len(points) == i ? c
            : _point_on_bezier_rec(points,t,i+1,c+choose(len(points)-1,i) * pow(t,i) * pow(1-t,len(points)-i-1) * points[i]);

        function _point_on_bezier(points,t)=
            _point_on_bezier_rec(points,t,0,[0,0]);

        //a bezier curve with any number of control points
        //parameters: 
        //points - the control points of the bezier curve (number of points is variable)
        //returns:
        //resolution number of samples on the bezier curve
        function bezier(points)=[
            for (t =[0:1.0/resolution:1+1.0/(resolution/2)]) _point_on_bezier(points,t)
        ];

    }
}
