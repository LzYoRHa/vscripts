//**********************************************************************\\
//CSGO map script by LzYoRHa (STEAM_1:0:191848162)for zm_re2r_lab       \\
//This controls the secrets on the map          					              \\
//put this file at csgo\scripts\vscripts\LzYoRHa\_mapscripts\zm_re2r_lab\\
//**********************************************************************\\

lab_b1_n_ladder_state <- 0

//the pos get from the game
//setpos 289.073486 2022.000000 128.093811;setang -14.500000 -90.000000 0.000000
//setpos -2034.067749 3185.742676 128.093811;setang -14.475728 90.000000 0.000000
lab_teleport_pos <- [Vector(289, 2022, 128.1), Vector(-2034, 3186, 128.1)]
lab_teleport_ang <- [-90,                      90]

function random_index_from_list(Array){
    local r_number = rand();
    local index = r_number % Array.len();
    return index;
}

function random_item_from_list(Array){
    local r_number = rand();
    local index = r_number % Array.len();
    return Array[index];
}

function lab_b_o_n_ladder_function1(){
    if (lab_b1_n_ladder_state == 0){
        lab_b1_n_ladder_state = 1;
    }
    else{
        lab_b1_n_ladder_state = 0;
    }
}

function lab_b_o_n_ladder_function2(){
    if (lab_b1_n_ladder_state == 3){
        EntFire("lab_b1_n_ladder_template", "ForceSpawn", null, 0);
        EntFire("lab_b1_n_ladder_button_1", "kill", null, 1);
        EntFire("lab_b1_n_ladder_button_2", "kill", null, 1);
        EntFire("lab_b1_n_ladder_button_3", "kill", null, 1);
        EntFire("lab_b1_n_ladder_button_4", "kill", null, 1);
    }
    else{
        lab_b1_n_ladder_state = 0;
    }
    
}

function lab_b_o_n_ladder_function3(){
    if (lab_b1_n_ladder_state == 2){
        lab_b1_n_ladder_state = 3;
    }
    else{
        lab_b1_n_ladder_state = 0;
    }
}

function lab_b_o_n_ladder_function4(){
    if (lab_b1_n_ladder_state == 1){
        lab_b1_n_ladder_state = 2;
    }
    else{
        lab_b1_n_ladder_state = 0;
    }
}

function lab_teleport(){
    local index = random_index_from_list(lab_teleport_pos)
    activator.SetOrigin(lab_teleport_pos[index]);
    activator.SetAngles(-14.5, lab_teleport_ang[index], 0);
}
