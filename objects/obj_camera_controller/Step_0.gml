if (instance_exists(obj_player)) {
    var _player_x = obj_player.x;
    var _player_y = obj_player.y;

    // Define the view in the room you want to control
    var _view_id = 0; 

    // Calculate the new camera position based on the player's position
    var _new_view_x = _player_x - view_wview[_view_id] / 2;
    var _new_view_y = _player_y - view_hview[_view_id] / 2;

    // Update the camera view position
    camera_set_view_pos(view_camera[_view_id], _new_view_x, _new_view_y);
}