//******************************************************************\\
//CSGO map script by LzYoRHa (STEAM_1:0:191848162)for ze_nora       \\
//This is the main script that contorl teleports, part of lvl logic \\
//put at csgo\scripts\vscripts\LzYoRHa\_mapscripts\ze_nora	        \\
//******************************************************************\\

mv_lvl_handle <- Entities.FindByName(null, "Map_LVL")
mp_lvl <- mv_lvl_handle.GetHealth();

function spawn_tp()
{
    local cl_team = activator.GetTeam();
    print(mp_lvl);
    if (mp_lvl == 1 || mp_lvl == 11)
    {
        if (cl_team == 3)
        {
            activator.SetOrigin(Vector(-1023, 1024, 921));
            activator.SetAngles(0, 90, 0);
        }
        else if (cl_team == 2)
        {
            local rand_pos = rand();
            local pos = rand_pos % 4;
            if (pos == 0)
            {
                activator.SetOrigin(Vector(-1923, 1024, 921));
            }
            else if (pos == 1)
            {
                activator.SetOrigin(Vector(-123, 1024, 921));
            }
            else if (pos == 2)
            {
                activator.SetOrigin(Vector(-1023, 1924, 921));
            }
            else
            {
                activator.SetOrigin(Vector(-1023, 124, 921));
            }
        }
    }
    else if (mp_lvl == 12)
    {
        if (cl_team == 3)
        {
            activator.SetOrigin(Vector(-2253, -11386, 1201));
            activator.SetAngles(0, 90, 0);
        }
        else if (cl_team == 2)
        {
            local rand_pos = rand();
            local pos = rand_pos % 2;
            if (pos == 0)
            {
                activator.SetOrigin(Vector(-906, -10984, 1201));
                activator.SetAngles(0, 90, 0);
            }
            else
            {
                activator.SetOrigin(Vector(-3605, -10985, 1201));
                activator.SetAngles(0, 90, 0);
            }
        }
    }
    else if (mp_lvl == 2)
    {
        if (cl_team == 3)
        {
            activator.SetOrigin(Vector(-1215, 348, -3033));
            activator.SetAngles(0, 90, 0);
        }
        else if (cl_team == 2)
        {
            activator.SetOrigin(Vector(-1215, 348, -3033));
            activator.SetAngles(0, 90, 0);
        }
    }
    else if (mp_lvl == 3){
        if (cl_team == 3){
            activator.SetOrigin(Vector(-3059, 504, 544));
            activator.SetAngles(0, 90, 0);
        }
        else if (cl_team == 2)
        {
            local rand_pos = rand();
            local pos = rand_pos % 2;
            if (pos == 0)
            {
                activator.SetOrigin(Vector(-3954, 137, 544));
                activator.SetAngles(0, 90, 0);
            }
            else
            {
                activator.SetOrigin(Vector(-2164, 137, 544));
                activator.SetAngles(0, 90, 0);
            }
        }
    }
    else if (mp_lvl == 4){
        if (cl_team == 3){
            activator.SetOrigin(Vector(264, 520, -1034));
            activator.SetAngles(0, 90, 0);
        }
        else if (cl_team == 2)
        {
            local rand_pos = rand();
            local pos = rand_pos % 2;
            if (pos == 0)
            {
                activator.SetOrigin(Vector(-1784, 1800, -1034));
                activator.SetAngles(0, 90, 0);
            }
            else
            {
                activator.SetOrigin(Vector(2312, 1800, -1034));
                activator.SetAngles(0, 90, 0);
            }
        }
    }
}

function zero_one_b_end_tp()
{
    local cl_team = activator.GetTeam();
    if (cl_team == 3)
    {
        activator.SetOrigin(Vector(-1023, 926, 2010));
    }
    else if (cl_team == 2)
    {
        activator.SetOrigin(Vector(-1023, 1150, 2010));
    }
}

function warmup_lvl_switch()
{
    if (mp_lvl == 1)
    {
        mv_lvl_handle.SetHealth(2);
    }
    else if (mp_lvl == 11)
    {
        mv_lvl_handle.SetHealth(12);
    }
    else if (mp_lvl == 12)
    {
        mv_lvl_handle.SetHealth(11);
    }
}

function lvl_switch()
{
    if (mp_lvl == 2)
    {
        mv_lvl_handle.SetHealth(3);
    }
    if (mp_lvl == 3)
    {
        mv_lvl_handle.SetHealth(4);
    }
    if (mp_lvl == 4)
    {
        mv_lvl_handle.SetHealth(11);
    }
}

function lvl_one_ct_tp_to_end(){
    if (activator.GetTeam() == 3){
        activator.SetOrigin(Vector(-3516, 564, -1216));
    }
}

function lvl_twp_boss_tp_ct()
{
    local cl_team = activator.GetTeam();
    if (cl_team == 3)
    {
        activator.SetOrigin(Vector(-2313, 521, 2774));
    }
}

function lvl_three_break_sides()
{
    EntFire("3_1_1_to_2_tp", "kill", null, 0);
    EntFire("3_1_1_1", "break", null, 2);
    EntFire("3_1_1_2", "break", null, 4);
    EntFire("3_1_1_to_2_elevator", "kill", null, 6);
    EntFire("3_1_2_0", "break", null, 8);
    EntFire("3_1_2_1", "break", null, 10);
    EntFire("3_1_2_2", "break", null, 12);
    EntFire("3_1_2_tp", "kill", null, 12);
    EntFire("3_1_2_movelinear", "kill", null, 14);
    EntFire("3_1_2_3", "break", null, 16);
    EntFire("3_1_2_4", "break", null, 18);
    EntFire("3_1_2_5", "break", null, 20);
    EntFire("3_1_3_0", "break", null, 22);
    EntFire("3_1_2_to_3_tp", "kill", null, 22);
    EntFire("3_1_2_to_3_move", "kill", null, 24);
    EntFire("3_1_4_0", "break", null, 26);
    EntFire("3_1_4_1", "break", null, 28);
    EntFire("3_1_4_2", "break", null, 28.5);
    EntFire("3_1_4_3", "break", null, 29);
    EntFire("3_1_4_4", "break", null, 29.5);
    EntFire("3_1_4_5", "break", null, 30);
    EntFire("3_1_mid_6", "break", null, 30);
    EntFire("3_1_4_6", "break", null, 30.5);
    EntFire("3_1_4_7", "break", null, 31);
    EntFire("3_1_4_8", "break", null, 31.5);
    EntFire("3_1_4_9", "break", null, 32);
}

function lvl_three_break_midle(){
    EntFire("3_1_1_0", "break", null, 0);
    EntFire("3_1_four_side_tp", "Enable", null, 0);
    EntFire("3_1_push_5", "Enable", null, 8);
    EntFire("3_1_mid_5", "Break", null, 10);
    EntFire("3_1_push_4", "Enable", null, 18);
    EntFire("3_1_mid_4", "Break", null, 20);
    EntFire("3_1_push_3", "Enable", null, 28);
    EntFire("3_1_mid_3", "Break", null, 30);
    EntFire("3_1_push_2", "Enable", null, 38);
    EntFire("3_1_mid_2", "Break", null, 40);
    EntFire("3_1_push_1", "Enable", null, 48);
    EntFire("3_1_push_1", "Disable", null, 50);
    EntFire("3_1_to_2_human_tp", "Enable", null, 50);
    EntFire("3_1_to_2_tp", "Enable", null, 55); 
}

function lvl_wu_set(){
    mv_lvl_handle.SetHealth(11);
}

function lvl_one_set(){
    mv_lvl_handle.SetHealth(2);
}

function lvl_two_set(){
    mv_lvl_handle.SetHealth(3);
}

function lvl_thr_set(){
    mv_lvl_handle.SetHealth(4);
}

function lvl_rtv_set(){
    mv_lvl_handle.SetHealth(12);
}