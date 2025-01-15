global.hp -= 10;
				if(!global.mute)
			{
				audio_play_sound(snd_impact,0,false);
			}
instance_destroy(id, false);