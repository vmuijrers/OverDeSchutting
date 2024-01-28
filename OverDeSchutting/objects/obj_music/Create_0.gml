/// @description Insert description here
// You can write your code in this editor
audio_falloff_set_model(audio_falloff_linear_distance);
audio_listener_set_position(0, room_width / 2, room_height, 0)
audio_play_sound(music, 100, true);
audio_play_sound(ambience_base_layer, 100, true, 0.6);
audio_play_sound(ambience_detail_layer, 100, true, 0.3);


