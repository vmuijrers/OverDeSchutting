/// @description Insert description here
// You can write your code in this editor
show_debug_message("Event = " + async_load[? "event_type"]);        // Debug code so you can see which event has been
show_debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.

switch(async_load[? "event_type"])             // Parse the async_load map to see which event has been triggered
{
case "gamepad discovered":                     // A game pad has been discovered
    var pad = async_load[? "pad_index"];       // Get the pad index value from the async_load map
    gamepad_set_axis_deadzone(pad, 0.5);       // Set the "deadzone" for the axis
    gamepad_set_button_threshold(pad, 0.1);    // Set the "threshold" for the triggers
    if !(instance_exists(player[pad]))         // Check to see if an instance is associated with this pad index
        {
        // Create a player object and assign it a pad number
        player[pad] = instance_create_layer(100,100, "Instances", obj_player);
        with (player[pad])
            {
            image_index = instance_number(object_index);
            pad_num = pad;
			show_debug_message(pad_num);
			x = pad_num * global.screen_part + global.screen_part / 2;
			y = room_height / 2
			show_debug_message("x: " + string(x));
			show_debug_message("y: " + string(y));
            }
        }
    break;
case "gamepad lost":                           // Gamepad has been removed or otherwise disabled
    var pad = async_load[? "pad_index"];       // Get the pad index
    if (instance_exists(player[pad]))          // Check for a player instance associated with the pad and remove it
        {
        with (player[pad])
            {
            instance_destroy();
            }
        player[pad] = noone;                   // Set the controller array to "noone" so it detects a new pad being connected
        }
    break;
}

