

if (!obj_player.dead)
{
	if (place_meeting(x,y,obj_wall))
	{
		moveTimer = 0;
		x = irandom_range(1,room_width/16) * 16;
		y = irandom_range(1,room_height/16) * 16;
	}



	if (moveTimer < moveTimerMAX)
	{
		moveTimer++;
	}
	else
	{
		if (!place_meeting(x,y,obj_wall))
		{
			var spawnEnemy = choose(1);
			if (spawnEnemy == 1) { instance_create_depth(x,y,-1,obj_enemy); }
			moveTimerMAX = irandom_range(15,60);
			x = irandom_range(1,room_width/16) * 16;
			y = irandom_range(1,room_height/16) * 16;
		}
		moveTimer = 0;
	}
}