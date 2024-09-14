/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//controlando o player
var _chao = place_meeting(x, y + 1, obj_chao);

var _left, _right, _jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);

velh = (_right - _left) * vel;




//pulando
if (_chao)
{
	if (_jump)
	{
		velv = -vel_jump;
	}
	//quando ele se mover ou parar, terá uma sprite especifica
	if (velh != 0)
	{
		//mudo a sprite para ele correndo
		sprite_index = spr_player_run;
		
		//mudo a sprite para olhar na direção que eu estou me mexendo
		image_xscale = sign(velh);
	}
	else
	{
		//mudo a sprite para ele parado
		sprite_index = spr_player_idle;
	}
}
else //não estou no chão
{
	if (velv < 0)
	{
		sprite_index = spr_player_jump;
	}
	else
	{
		sprite_index = spr_player_fall
	}
	
	//aplicando a gravidade
	velv += grav;
	if (velh != 0)
	{
	image_xscale = sign(velh);
	}
}
