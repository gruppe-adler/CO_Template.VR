tf_no_auto_long_range_radio = true;
TF_give_personal_radio_to_regular_soldier = false;
TF_give_microdagr_to_soldier = false;

tf_same_lr_frequencies_for_side = true;
tf_same_sw_frequencies_for_side = true;

TF_terrain_interception_coefficient = 6.0;

tf_freq_west = [0,7,["50","60","70","80","90","100","110","120","130"],0,"_bluefor",-1,0,getplayerUID player,false];
tf_freq_east = [0,7,["50","60","70","80","90","100","110","120","130"],0,"_opfor",-1,0,getplayerUID player,false];
tf_freq_guer = [0,7,["50","60","70","80","90","100","110","120","130"],0,"_guer",-1,0,getplayerUID player,false];

tf_freq_west_lr = [0,7,["30","31","32","33","34","35","36","37","38","39"],0,"_bluefor",-1,0,false];
tf_freq_east_lr = [0,7,["30","31","32","33","34","35","36","37","38","39"],0,"_opfor",-1,0,false];
tf_freq_guer_lr = [0,7,["30","31","32","33","34","35","36","37","38","39"],0,"_guer",-1,0,false];
