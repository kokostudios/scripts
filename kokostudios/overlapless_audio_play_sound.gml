/// @param audio
/// @param loop
/// @param pitch
/// @param gain

function overlapless_audio_play_sound(argument0, argument1, argument2, argument3)
{
	if (!audio_is_playing(argument0) && is_undefined(argument2))
	{
		audio_play_sound(argument0, 0, argument1, argument3);
	}
	else if (!audio_is_playing(argument0))
	{
		audio_play_sound(argument0, 0, argument1, argument3, 0, argument2);
	}
	
	if (is_undefined(argument3) || is_undefined(argument2)) then return 1;
}