/// @description InitGame

//	Window Size
global.game_width = 1280;
global.game_height = 1024;
surface_resize(application_surface, global.game_width, global.game_height);
display_set_gui_size(global.game_width, global.game_height);
window_set_size(global.game_width, global.game_height);

//	Game System
global.point = 0;

//딱총
//기관단총
//샷건
//소총
//기관총
//스나이퍼
//미니건

#region Weapon
global.wp_dmg[0] = 2;
global.wp_dmg[1] = 1;
global.wp_dmg[2] = 2;
global.wp_dmg[3] = 3;
global.wp_dmg[4] = 2;
global.wp_dmg[5] = 100;
global.wp_dmg[6] = 1;

global.wp_atkD[0] = 0.5;
global.wp_atkD[1] = 0.12;
global.wp_atkD[2] = 1.5;
global.wp_atkD[3] = 0.2;
global.wp_atkD[4] = 0.1;
global.wp_atkD[5] = 1.5;
global.wp_atkD[6] = 0.05;

global.wp_recoil[0] = 3;
global.wp_recoil[1] = 5;
global.wp_recoil[2] = 20;
global.wp_recoil[3] = 4;
global.wp_recoil[4] = 6;
global.wp_recoil[5] = 0;
global.wp_recoil[6] = 8;

global.wp_many[0] = 1;
global.wp_many[1] = 1;
global.wp_many[2] = 5;
global.wp_many[3] = 1;
global.wp_many[4] = 2;
global.wp_many[5] = 1;
global.wp_many[6] = 2;

global.wp_bullet[0] = obj_bullet1;
global.wp_bullet[1] = obj_bullet1;
global.wp_bullet[2] = obj_bullet2;
global.wp_bullet[3] = obj_bullet1;
global.wp_bullet[4] = obj_bullet1;
global.wp_bullet[5] = obj_bullet2;
global.wp_bullet[6] = obj_bullet3;

global.wp_spr[0] = spr_weapon1;
global.wp_spr[1] = spr_weapon2;
global.wp_spr[2] = spr_weapon3;
global.wp_spr[3] = spr_weapon4;
global.wp_spr[4] = spr_weapon5;
global.wp_spr[5] = spr_weapon6;
global.wp_spr[6] = spr_weapon7;

global.wp_ammoM[0] = -1;
global.wp_ammoM[1] = 200;
global.wp_ammoM[2] = 80;
global.wp_ammoM[3] = 120;
global.wp_ammoM[4] = 300;
global.wp_ammoM[5] = 20;
global.wp_ammoM[6] = 1000;

global.wp_ammo[0] = global.wp_ammoM[0];
global.wp_ammo[1] = global.wp_ammoM[1];
global.wp_ammo[2] = global.wp_ammoM[2];
global.wp_ammo[3] = global.wp_ammoM[3];
global.wp_ammo[4] = global.wp_ammoM[4];
global.wp_ammo[5] = global.wp_ammoM[5];
global.wp_ammo[6] = global.wp_ammoM[6];

global.wp_name[0] = "Pistol";
global.wp_name[1] = "SMG";
global.wp_name[2] = "Shotgun";
global.wp_name[3] = "Rifle";
global.wp_name[4] = "HMG";
global.wp_name[5] = "Sniper";
global.wp_name[6] = "MINIGUN";
#endregion

//	Font
draw_set_font(ft_main);
draw_set_halign(fa_middle);

//	Zombie
global.mgrid = noone;








