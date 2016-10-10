///scr_set_res(global.full_screen)

var flag = argument0;

//Height and width should increased by same multiple to keep resolution consistent,
//therefore we pick the smaller of the two.
//The minimum resolution possible is the ideal resolution, so mult must by >= 1
var height_mult = floor(display_get_height() / global.res_height);
var width_mult = floor(display_get_width() / global.res_width);
var full_mult = max(min(height_mult, width_mult), 1);
//windowed mode is currently one multiple less than maximum possible
var window_mult = max(full_mult - 1, 1);

//Set window size and view size
if (flag == 1){
    var window_height = display_get_height();
    var window_width = display_get_width();
    //start game in full screen
    window_set_fullscreen(true);
    
    var app_height = full_mult * global.res_height;
    var app_width = full_mult * global.res_width;
}
else
{
      
    var window_height = window_mult * global.res_height;
    var window_width = window_mult * global.res_width;
    //start game in windowed mode
    window_set_fullscreen(false);
    window_set_size(window_width, window_height);
    
    var app_height = window_height;
    var app_width = window_width;
}

//Set the application surface size and GUI size
surface_resize(application_surface, app_width, app_height);

for (var i = 1; i <= room_last; i++)
{
    if (room_exists(i))
    {
        room_set_view(i, 0, true, 0, 0, global.res_height, global.res_width, 0, 0, app_height, app_width, 0, 0, 0, 0, -1);
        room_set_view_enabled(i, true);
    }
}
