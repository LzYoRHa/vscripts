//**************************************************************\\
//CSGO map script by LzYoRHa (STEAM_1:0:191848162)for ze_nora   \\
//This controls level 2 boss hp scale, attaks, laser ending     \\
//put at csgo\scripts\vscripts\LzYoRHa\_mapscripts\ze_nora	    \\
//**************************************************************\\

HP_One <- 1000;
HP_Two <- 1000;
HP_Thr <- 1000;

Walls_maker_one_w <- ["20B_Walls_w_1_1", "20B_Walls_w_1_2", "20B_Walls_w_1_3", 
"20B_Walls_w_1_4", "20B_Walls_w_1_5", "20B_Walls_w_1_6", "20B_Walls_w_1_7"]
Walls_maker_one_e <- ["20B_Walls_e_1_1", "20B_Walls_e_1_2", "20B_Walls_e_1_3", 
"20B_Walls_e_1_4", "20B_Walls_e_1_5", "20B_Walls_e_1_6", "20B_Walls_e_1_7"]

Walls_maker_two_w <- ["20B_Walls_w_2_1", "20B_Walls_w_2_2", "20B_Walls_w_2_3", 
"20B_Walls_w_2_4", "20B_Walls_w_2_5", "20B_Walls_w_2_6", "20B_Walls_w_2_7"]
Walls_maker_two_e <- ["20B_Walls_e_2_1", "20B_Walls_e_2_2", "20B_Walls_e_2_3", 
"20B_Walls_e_2_4", "20B_Walls_e_2_5", "20B_Walls_e_2_6", "20B_Walls_e_2_7"]

Walls_maker_thr_w <- ["20B_Walls_w_3_1", "20B_Walls_w_3_2", "20B_Walls_w_3_3", 
"20B_Walls_w_3_4", "20B_Walls_w_3_5", "20B_Walls_w_3_6", "20B_Walls_w_3_7"]
Walls_maker_thr_e <- ["20B_Walls_e_3_1", "20B_Walls_e_3_2", "20B_Walls_e_3_3", 
"20B_Walls_e_3_4", "20B_Walls_e_3_5", "20B_Walls_e_3_6", "20B_Walls_e_3_7"]

function random_from_list(Array){
    local r_number = rand();
    local index = r_number % Array.len();
    return Array[index];
}


function set_hp_one(){
    EntFire("20B_Boss_Hp_1", "SetHealth", HP_One, 0);
}

function set_hp_two(){
    EntFire("20B_Boss_Hp_2", "SetHealth", HP_Two, 0);
}

function set_hp_thr(){
    EntFire("20B_Boss_Hp_3", "SetHealth", HP_Thr, 0);
}

function hp_one_cal(){
    HP_One = HP_One + 1200;
}

function hp_two_cal(){
    HP_Two = HP_Two + 1200;
}

function hp_thr_cal(){
    HP_Thr = HP_Thr + 1200;
}

function hp_one_dec(){
    local hp_handle = Entities.FindByName(null, "20B_Boss_Hp_1");
    local current_hp = hp_handle.GetHealth();
    if (current_hp > 1300)
    {
        local new_hp = current_hp - 1200;
        hp_handle.SetHealth(new_hp);
    }
    else
    {
        EntFire("20B_Boss_Hp_1", "Break");
    }
}

function hp_two_dec(){
    local hp_handle = Entities.FindByName(null, "20B_Boss_Hp_2");
    local current_hp = hp_handle.GetHealth();
    if (current_hp > 1300)
    {
        local new_hp = current_hp - 1200;
        hp_handle.SetHealth(new_hp);
    }
    else
    {
        EntFire("20B_Boss_Hp_2", "Break");
    }
}

function hp_thr_dec(){
    local hp_handle = Entities.FindByName(null, "20B_Boss_Hp_3");
    local current_hp = hp_handle.GetHealth();
    if (current_hp > 1300)
    {
        local new_hp = current_hp - 1200;
        hp_handle.SetHealth(new_hp);
    }
    else
    {
        EntFire("20B_Boss_Hp_3", "Break");
    }
}

function two_push_one(){
    EntFire("server_command_main", "Command", "say Pull");
    EntFire("20B_Push_trigger_push", "Enable", null, 0);
    EntFire("20B_Push_trigger_push", "Disable", null, 5);
    EntFire("20B_Boss_Picker_1", "PickRandom", null, 10);
}

function two_push_two(){
    EntFire("server_command_main", "Command", "say Pull");
    EntFire("20B_Push_trigger_push1", "Enable", null, 0);
    EntFire("20B_Push_trigger_push1", "Disable", null, 5);
    EntFire("20B_Boss_Picker_2", "PickRandom", null, 9);
}

function two_push_thr(){
    EntFire("server_command_main", "Command", "say Pull");
    EntFire("20B_Push_trigger_push2", "Enable", null, 0);
    EntFire("20B_Push_trigger_push2", "Disable", null, 5);
    EntFire("20B_Boss_Picker_3", "PickRandom", null, 8);
}

function two_diamond_one(){
    EntFire("server_command_main", "Command", "say Diamond");
    local r = rand();
    local r_one = r % 2;
    if (r_one == 0)
    {
        EntFire("20B_Diamond_1_1_1", "ForceSpawn");
    }
    else
    {
        EntFire("20B_Diamond_1_1_2", "ForceSpawn");
    }
    r = rand();
    local r_two = r % 2;
    if (r_two == 0)
    {
        EntFire("20B_Diamond_1_2_1", "ForceSpawn");
    }
    else
    {
        EntFire("20B_Diamond_1_2_2", "ForceSpawn");
    }
    EntFire("20B_Boss_Picker_1", "PickRandom", null, 8);
}

function two_diamond_two(){
    EntFire("server_command_main", "Command", "say Diamond");
    local r = rand();
    local r_one = r % 2;
    if (r_one == 0)
    {
        EntFire("20B_Diamond_2_1_1", "ForceSpawn");
    }
    else
    {
        EntFire("20B_Diamond_2_1_2", "ForceSpawn");
    }
    r = rand();
    local r_two = r % 2;
    if (r_two == 0)
    {
        EntFire("20B_Diamond_2_2_1", "ForceSpawn");
    }
    else
    {
        EntFire("20B_Diamond_2_2_2", "ForceSpawn");
    }
    EntFire("20B_Boss_Picker_2", "PickRandom", null, 7);
}

function two_diamond_thr()
{
    EntFire("server_command_main", "Command", "say Diamond");
    local r = rand();
    local r_one = r % 2;
    if (r_one == 0)
    {
        EntFire("20B_Diamond_3_1_1", "ForceSpawn");
    }
    else
    {
        EntFire("20B_Diamond_3_1_2", "ForceSpawn");
    }
    r = rand();
    local r_two = r % 2;
    if (r_two == 0)
    {
        EntFire("20B_Diamond_3_2_1", "ForceSpawn");
    }
    else
    {
        EntFire("20B_Diamond_3_2_2", "ForceSpawn");
    }
    EntFire("20B_Boss_Picker_3", "PickRandom", null, 6);
}

function two_walls_one(){
    EntFire("server_command_main", "Command", "say Wall");
    EntFire(random_from_list(Walls_maker_one_w), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_one_e), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_one_w), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_one_e), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_one_w), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_one_e), "ForceSpawn", null, 1);
    EntFire("20B_Boss_Picker_1", "PickRandom", null, 10);
}

function two_walls_two(){
    EntFire("server_command_main", "Command", "say Wall");
    EntFire(random_from_list(Walls_maker_two_w), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_two_e), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_two_w), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_two_e), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_two_w), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_two_e), "ForceSpawn", null, 1);
    EntFire("20B_Boss_Picker_2", "PickRandom", null, 9);
}

function two_walls_thr(){
    EntFire("server_command_main", "Command", "say Wall");
    EntFire(random_from_list(Walls_maker_thr_w), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_thr_e), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_thr_w), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_thr_e), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_thr_w), "ForceSpawn", null, 1);
    EntFire(random_from_list(Walls_maker_thr_e), "ForceSpawn", null, 1);
    EntFire("20B_Boss_Picker_3", "PickRandom", null, 8);
}

function two_flame_one(){
    EntFire("server_command_main", "Command", "say Flame");
    EntFire("20B_Flame_Indi_1", "ForceSpawn");
    EntFire("20B_Flame_1", "ForceSpawn", null, 3);
    EntFire("20B_Boss_Picker_1", "PickRandom", null, 10);
}

function two_flame_two(){
    EntFire("server_command_main", "Command", "say Flame");
    EntFire("20B_Flame_Indi_2", "ForceSpawn");
    EntFire("20B_Flame_2", "ForceSpawn", null, 3);
    EntFire("20B_Boss_Picker_2", "PickRandom", null, 9);
}

function two_flame_thr(){
    EntFire("server_command_main", "Command", "say Flame");
    EntFire("20B_Flame_Indi_3", "ForceSpawn");
    EntFire("20B_Flame_3", "ForceSpawn", null, 3);
    EntFire("20B_Boss_Picker_3", "PickRandom", null, 8);
}

function two_c_atk_one(){
    EntFire("server_command_main", "Command", "say Push");
    EntFire("20B_C_ATK_pt1_1", "ForceSpawn");
    EntFire("20B_C_ATK_pt2_1", "ForceSpawn");
    EntFire("20B_Boss_Picker_1", "PickRandom", null, 10);
}

function two_c_atk_two(){
    EntFire("server_command_main", "Command", "say Push");
    EntFire("20B_C_ATK_pt1_2", "ForceSpawn");
    EntFire("20B_C_ATK_pt2_2", "ForceSpawn");
    EntFire("20B_Boss_Picker_2", "PickRandom", null, 9);
}

function two_c_atk_thr(){
    EntFire("server_command_main", "Command", "say Push");
    EntFire("20B_C_ATK_pt1_3", "ForceSpawn");
    EntFire("20B_C_ATK_pt2_3", "ForceSpawn");
    EntFire("20B_Boss_Picker_3", "PickRandom", null, 8);
}

function two_laser_one(){
    EntFire("20B_end_laser_east_1", "ForceSpawn");
    EntFire("20B_end_laser_west_1", "ForceSpawn");
    EntFire("20B_laser_picker", "PickRandom", null, 2.5);
}

function two_laser_two(){
    EntFire("20B_end_laser_east_1", "ForceSpawn");
    EntFire("20B_end_laser_west_2", "ForceSpawn");
    EntFire("20B_laser_picker", "PickRandom", null, 2.5);
}

function two_laser_thr(){
    EntFire("20B_end_laser_east_1", "ForceSpawn");
    EntFire("20B_end_laser_west_3", "ForceSpawn");
    EntFire("20B_laser_picker", "PickRandom", null, 2.5);
}

function two_laser_fou(){
    EntFire("20B_end_laser_east_2", "ForceSpawn");
    EntFire("20B_end_laser_west_1", "ForceSpawn");
    EntFire("20B_laser_picker", "PickRandom", null, 2.5);
}

function two_laser_fiv(){
    EntFire("20B_end_laser_east_2", "ForceSpawn");
    EntFire("20B_end_laser_west_2", "ForceSpawn");
    EntFire("20B_laser_picker", "PickRandom", null, 2.5);
}

function two_laser_six(){
    EntFire("20B_end_laser_east_2", "ForceSpawn");
    EntFire("20B_end_laser_west_3", "ForceSpawn");
    EntFire("20B_laser_picker", "PickRandom", null, 2.5);
}

function two_laser_sev(){
    EntFire("20B_end_laser_east_3", "ForceSpawn");
    EntFire("20B_end_laser_west_1", "ForceSpawn");
    EntFire("20B_laser_picker", "PickRandom", null, 2.5);
}

function two_laser_eig(){
    EntFire("20B_end_laser_east_3", "ForceSpawn");
    EntFire("20B_end_laser_west_2", "ForceSpawn");
    EntFire("20B_laser_picker", "PickRandom", null, 2.5);
}

function two_laser_nin(){
    EntFire("20B_end_laser_east_3", "ForceSpawn");
    EntFire("20B_end_laser_west_3", "ForceSpawn");
    EntFire("20B_laser_picker", "PickRandom", null, 2.5);
}