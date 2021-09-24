//creates a blank camera to assing some settins to
camera = camera_create();


//view matrix
	//creates the point in space for the camera
	//determines where in 3D space where the camera is and where up is
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);

//projection matrix
										//width, height, min dist, max dist
var pm = matrix_build_projection_ortho(800, 800, 1, 1000);

//set variables from before to the camera
camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

//set the created camera to viewport 0
view_camera[0] = camera;

//to follow the player
follow = obj_Player;

xTo = x;
yTo = y;

