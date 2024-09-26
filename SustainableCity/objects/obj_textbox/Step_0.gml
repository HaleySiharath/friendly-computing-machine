/// @description keep textbox at bottom of screen

// move text box position with camera/view

if(room = room_townhall)
{
	image_xscale = 2;
	image_yscale = 2;
	x = room_width / 2;
	y = room_height - (room_height / 7.5);
}
else
{
	image_xscale = 1;
	image_yscale = 1;
	
	x = camera_get_view_x(view_camera[0]) + global.textboxX;
	y = camera_get_view_y(view_camera[0]) + global.textboxY;
}







