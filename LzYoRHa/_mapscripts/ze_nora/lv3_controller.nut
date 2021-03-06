//**************************************************************\\
//CSGO map script by LzYoRHa (STEAM_1:0:191848162)for ze_nora   \\
//This controls level 3 boss attacks, logic, timing			    \\
//put at csgo\scripts\vscripts\LzYoRHa\_mapscripts\ze_nora	    \\
//**************************************************************\\

mv_lvl_handle <- Entities.FindByName(null, "Map_LVL")
mp_lvl <- mv_lvl_handle.GetHealth();

function three_two() {
    EntFire("01B_4_1_1_ATK_M", "Kill", null, 0);
    EntFire("3_2_fall_1", "ForceSpawn", null, 5);
    EntFire("3_2_1", "ForceSpawn", null, 10);
    EntFire("3_2_rise_1", "ForceSpawn", null, 10);
    EntFire("3_2_rise_2", "ForceSpawn", null, 10.75);
    EntFire("3_2_rise_3", "ForceSpawn", null, 11.5);
    EntFire("3_2_rise_4", "ForceSpawn", null, 12.25);
    EntFire("3_2_rise_8", "ForceSpawn", null, 13);
    EntFire("3_2_rise_7", "ForceSpawn", null, 13.75);
    EntFire("3_2_rise_6", "ForceSpawn", null, 14.5);
    EntFire("3_2_rise_5", "ForceSpawn", null, 15.25);
    EntFire("3_2_rise_9", "ForceSpawn", null, 16);
    EntFire("3_2_rise_10", "ForceSpawn", null, 16.75);
    EntFire("3_2_rise_11", "ForceSpawn", null, 17.5);
    EntFire("3_2_rise_12", "ForceSpawn", null, 18.25);
    EntFire("3_2_rise_16", "ForceSpawn", null, 19);
    EntFire("3_2_rise_15", "ForceSpawn", null, 19.75);
    EntFire("3_2_rise_14", "ForceSpawn", null, 20.5);
    EntFire("3_2_rise_13", "ForceSpawn", null, 21.25);
    EntFire("3_2_rise_17", "ForceSpawn", null, 22);
    EntFire("3_2_rise_18", "ForceSpawn", null, 22.75);
    EntFire("3_2_rise_19", "ForceSpawn", null, 23.5);
    EntFire("3_2_rise_20", "ForceSpawn", null, 24.25);
    EntFire("3_2_rise_24", "ForceSpawn", null, 25);
    EntFire("3_2_rise_23", "ForceSpawn", null, 25.75);
    EntFire("3_2_rise_22", "ForceSpawn", null, 26.5);
    EntFire("3_2_rise_21", "ForceSpawn", null, 27.25);
    EntFire("3_2_rise_25", "ForceSpawn", null, 28);
    EntFire("3_2_rise_26", "ForceSpawn", null, 28.75);
    EntFire("3_2_rise_27", "ForceSpawn", null, 29.5);
    EntFire("3_2_rise_28", "ForceSpawn", null, 30.25);
    EntFire("3_2_rise_32", "ForceSpawn", null, 31);
    EntFire("3_2_rise_31", "ForceSpawn", null, 31.75);
    EntFire("3_2_rise_30", "ForceSpawn", null, 32.5);
    EntFire("3_2_rise_29", "ForceSpawn", null, 33.25);
    EntFire("3_2_fall_2", "ForceSpawn", null, 34);
    EntFire("3_2_rise_pt", "kill", null, 38);
    EntFire("3_2_1_tracktrain", "kill", null, 38);
    EntFire("3_2_1_2", "kill", null, 38);
    EntFire("3_2_fall_tp_1", "Enable", null, 40);
    EntFire("3_2_rise_end_1", "ForceSpawn", null, 40);
    EntFire("3_2_rise_end_2", "ForceSpawn", null, 40.5);
    EntFire("3_2_rise_end_3", "ForceSpawn", null, 41);
    EntFire("3_2_rise_end_4", "ForceSpawn", null, 41.5);
    EntFire("3_2_rise_end_8", "ForceSpawn", null, 42);
    EntFire("3_2_rise_end_7", "ForceSpawn", null, 42.5);
    EntFire("3_2_rise_end_6", "ForceSpawn", null, 43);
    EntFire("3_2_rise_end_5", "ForceSpawn", null, 43.5);
    EntFire("3_2_rise_end_9", "ForceSpawn", null, 44);
    EntFire("3_2_rise_end_10", "ForceSpawn", null, 44.5);
    EntFire("3_2_rise_end_11", "ForceSpawn", null, 45);
    EntFire("3_2_rise_end_12", "ForceSpawn", null, 45.5);
    EntFire("3_2_rise_end_16", "ForceSpawn", null, 46);
    EntFire("3_2_rise_end_15", "ForceSpawn", null, 46.5);
    EntFire("3_2_rise_end_14", "ForceSpawn", null, 47);
    EntFire("3_2_rise_end_13", "ForceSpawn", null, 47.5);
    EntFire("3_2_rise_end_17", "ForceSpawn", null, 48);
    EntFire("3_2_rise_end_18", "ForceSpawn", null, 48.5);
    EntFire("3_2_rise_end_19", "ForceSpawn", null, 49);
    EntFire("3_2_rise_end_20", "ForceSpawn", null, 49.5);
    EntFire("3_2_rise_end_24", "ForceSpawn", null, 50);
    EntFire("3_2_rise_end_23", "ForceSpawn", null, 50.5);
    EntFire("3_2_rise_end_22", "ForceSpawn", null, 51);
    EntFire("3_2_rise_end_21", "ForceSpawn", null, 51.5);
    EntFire("3_2_rise_end_25", "ForceSpawn", null, 52);
    EntFire("3_2_rise_end_26", "ForceSpawn", null, 52.5);
    EntFire("3_2_rise_end_27", "ForceSpawn", null, 53);
    EntFire("3_2_rise_end_28", "ForceSpawn", null, 53.5);
    EntFire("3_2_rise_end_32", "ForceSpawn", null, 54);
    EntFire("3_2_rise_end_31", "ForceSpawn", null, 54.5);
    EntFire("3_2_rise_end_30", "ForceSpawn", null, 55);
    EntFire("3_2_rise_end_29", "ForceSpawn", null, 55.5);
    EntFire("3_2_rise_end_33", "ForceSpawn", null, 56);
    EntFire("3_2_rise_end_34", "ForceSpawn", null, 56.5);
    EntFire("3_2_rise_end_35", "ForceSpawn", null, 57);
    EntFire("3_2_rise_end_36", "ForceSpawn", null, 57.5);
    EntFire("3_2_rise_end_40", "ForceSpawn", null, 58);
    EntFire("3_2_rise_end_39", "ForceSpawn", null, 58.5);
    EntFire("3_2_rise_end_38", "ForceSpawn", null, 59);
    EntFire("3_2_rise_end_37", "ForceSpawn", null, 59.5);
    EntFire("3_2_rise_end_41", "ForceSpawn", null, 60);

    EntFire("3_2_Tree", "Kill", null, 61);
    EntFire("Tree_explo", "Start", null, 61);

    EntFire("3_2_rise_end_42", "ForceSpawn", null, 60.5);
    EntFire("3_2_rise_end_43", "ForceSpawn", null, 61);
    EntFire("3_2_rise_end_44", "ForceSpawn", null, 61.5);
    EntFire("3_2_rise_end_48", "ForceSpawn", null, 62);
    EntFire("3_2_rise_end_47", "ForceSpawn", null, 62.5);
    EntFire("3_2_rise_end_46", "ForceSpawn", null, 63);
    EntFire("3_2_rise_end_45", "ForceSpawn", null, 63.5);
    EntFire("3_2_rise_end_49", "ForceSpawn", null, 64);
    EntFire("3_2_rise_end_50", "ForceSpawn", null, 64.5);
    EntFire("3_2_rise_end_51", "ForceSpawn", null, 65);
    EntFire("3_2_rise_end_52", "ForceSpawn", null, 65.5);
    EntFire("3_2_rise_end_56", "ForceSpawn", null, 66);
    EntFire("3_2_rise_end_55", "ForceSpawn", null, 66.5);
    EntFire("3_2_rise_end_54", "ForceSpawn", null, 67);
    EntFire("3_2_rise_end_53", "ForceSpawn", null, 67.5);
    EntFire("3_2_rise_end_57", "ForceSpawn", null, 68);
    EntFire("3_2_rise_end_58", "ForceSpawn", null, 68.5);
    EntFire("3_2_rise_end_59", "ForceSpawn", null, 69);
    EntFire("3_2_rise_end_60", "ForceSpawn", null, 69.5);
    EntFire("3_2_rise_end_64", "ForceSpawn", null, 70);
    EntFire("3_2_rise_end_63", "ForceSpawn", null, 70.5);
    EntFire("3_2_rise_end_62", "ForceSpawn", null, 71);
    EntFire("3_2_rise_end_61", "ForceSpawn", null, 71.5);
    EntFire("3_2_rise_end_65", "ForceSpawn", null, 72);
    EntFire("3_2_rise_end_66", "ForceSpawn", null, 72.5);
    EntFire("3_2_rise_end_67", "ForceSpawn", null, 73);
    EntFire("3_2_rise_end_68", "ForceSpawn", null, 73.5);
    EntFire("3_2_rise_end_72", "ForceSpawn", null, 74);
    EntFire("3_2_rise_end_71", "ForceSpawn", null, 74.5);
    EntFire("3_2_rise_end_70", "ForceSpawn", null, 75);
    EntFire("3_2_rise_end_69", "ForceSpawn", null, 75.5);
    EntFire("3_2_rise_end_73", "ForceSpawn", null, 76);
    EntFire("3_2_rise_end_74", "ForceSpawn", null, 76.5);
    EntFire("3_2_rise_end_75", "ForceSpawn", null, 77);
    EntFire("3_2_rise_end_76", "ForceSpawn", null, 77.5);
    EntFire("3_2_rise_end_80", "ForceSpawn", null, 78);
    EntFire("3_2_rise_end_79", "ForceSpawn", null, 78.5);
    EntFire("3_2_rise_end_78", "ForceSpawn", null, 79);
    EntFire("3_2_rise_end_77", "ForceSpawn", null, 79.5);
    EntFire("3_2_rise_end_81", "ForceSpawn", null, 80);
    EntFire("3_2_rise_end_82", "ForceSpawn", null, 80.5);
    EntFire("3_2_rise_end_83", "ForceSpawn", null, 81);
    EntFire("3_2_rise_end_84", "ForceSpawn", null, 81.5);
    EntFire("3_2_rise_end_88", "ForceSpawn", null, 82);
    EntFire("3_2_rise_end_87", "ForceSpawn", null, 82.5);
    EntFire("3_2_rise_end_86", "ForceSpawn", null, 83);
    EntFire("3_2_rise_end_85", "ForceSpawn", null, 83.5);
    EntFire("3_2_rise_end_89", "ForceSpawn", null, 84);
    EntFire("3_2_rise_end_90", "ForceSpawn", null, 84.5);
    EntFire("3_2_rise_end_91", "ForceSpawn", null, 85);
    EntFire("3_2_rise_end_92", "ForceSpawn", null, 85.5);
    EntFire("3_2_rise_end_96", "ForceSpawn", null, 86);
    EntFire("3_2_rise_end_95", "ForceSpawn", null, 86.5);
    EntFire("3_2_rise_end_94", "ForceSpawn", null, 87);
    EntFire("3_2_rise_end_93", "ForceSpawn", null, 87.5);
    EntFire("3_2_rise_end_97", "ForceSpawn", null, 88);
    EntFire("3_2_rise_end_98", "ForceSpawn", null, 88.5);
    EntFire("3_2_rise_end_99", "ForceSpawn", null, 89);
    EntFire("3_2_rise_end_100", "ForceSpawn", null, 89.5);
    EntFire("3_2_fall_3", "ForceSpawn", null, 90);
    EntFire("3_2_rise_pt", "kill", null, 110);
    EntFire("3_2_fall_tp_2", "Enable", null, 120);
    EntFire("lv_3_nuke", "Enable", null, 130);
    EntFire("sp_nuke_temp", "ForceSpawn", null, 130);

    if (mp_lvl == 4){
        EntFire("3_2_final_move_laser", "ForceSpawn", null, 45);
        EntFire("3_2_CJ_laser_picker", "PickRandom", null, 45);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 50);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 55);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 60);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 63);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 66);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 69);
        EntFire("3_2_CJ_laser_picker3", "PickRandom", null, 72);
        EntFire("3_2_CJ_laser_picker3", "PickRandom", null, 75);
        EntFire("3_2_CJ_laser_picker3", "PickRandom", null, 78);
        EntFire("3_2_CJ_laser_picker3", "PickRandom", null, 81);
        EntFire("3_2_CJ_laser_picker", "PickRandom", null, 84);
        EntFire("3_2_CJ_laser_picker", "PickRandom", null, 87);
        EntFire("3_2_CJ_laser_picker", "PickRandom", null, 90);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 93);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 96);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 97.5);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 99);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 100.5);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 102);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 103.5);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 105);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 106.5);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 108);

        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 60);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 66);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 72);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 78);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 84);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 90);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 96);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 102);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 105);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 108);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 111);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 114);
        EntFire("lv_3_human_win_check", "Enable", null, 120);
    }
    else if (mp_lvl == 12){
        EntFire("3_2_final_move_laser", "ForceSpawn", null, 45);
        EntFire("3_2_CJ_laser_picker", "PickRandom", null, 45);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 50);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 55);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 60);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 62);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 64);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 66);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 68);
        EntFire("3_2_CJ_laser_picker3", "PickRandom", null, 70);
        EntFire("3_2_CJ_laser_picker3", "PickRandom", null, 72);
        EntFire("3_2_CJ_laser_picker3", "PickRandom", null, 74);
        EntFire("3_2_CJ_laser_picker3", "PickRandom", null, 76);
        EntFire("3_2_CJ_laser_picker3", "PickRandom", null, 78);
        EntFire("3_2_CJ_laser_picker", "PickRandom", null, 80);
        EntFire("3_2_CJ_laser_picker", "PickRandom", null, 82);
        EntFire("3_2_CJ_laser_picker", "PickRandom", null, 84);
        EntFire("3_2_CJ_laser_picker", "PickRandom", null, 86);
        EntFire("3_2_CJ_laser_picker", "PickRandom", null, 88);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 90);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 92);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 94);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 96);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 97);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 98);
        EntFire("3_2_CJ_laser_picker1", "PickRandom", null, 99);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 100);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 101);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 102);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 103);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 104);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 105);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 106);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 107);
        EntFire("3_2_CJ_laser_picker2", "PickRandom", null, 108);

        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 60);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 64);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 68);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 72);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 76);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 80);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 84);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 88);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 92);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 96);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 100);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 102);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 104);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 106);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 108);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 110);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 112);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 114);
        EntFire("3_2_Wall_laser_picker", "PickRandom", null, 116);
        EntFire("3_Troll_tele", "Disable", null, 120);
        EntFire("3_2_troll_nuke", "Enable", null, 130);
    }
}