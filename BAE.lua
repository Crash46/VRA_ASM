-- mounting 3d model paths and texture paths 

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path (current_mod_path.."/Textures/BAE.zip")
mount_vfs_texture_path (current_mod_path.."/Textures/bae_cockpit.zip")
mount_vfs_sound_path (current_mod_path.."/Sounds")

BAE =  {
        
	Name 				=   'BAE',
	DisplayName			= _('BAE Hawk'),
	Cannon = "yes",
	HumanCockpit 		= true,
	HumanCockpitPath    = current_mod_path..'/Cockpit/',
	
	Picture 			= "BAE.png",
	Rate 				= 40, -- RewardPoint in Multiplayer
	Shape 				= "BAE",
	
	shape_table_data 	= 
	{
		{
			file  	 	= 'BAE';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'BAE_destr'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'BAE';
			index    	=  WSTYPE_PLACEHOLDER;
		},
		{
			name  = "BAE_destr";
			file  = "BAE_destr";
			fire  = { 240, 2};
		},

	},
	mapclasskey 		= "P0091000025",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER ,"Battleplanes",},
	Categories          = {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
	
		M_empty	=	12790,
		M_nominal	=	19000,
		M_max	=	30845,
		M_fuel_max	=	6103,
		H_max	=	19700,
		average_fuel_consumption	=	0.271,
		CAS_min	=	58,
		V_opt	=	220,
		V_take_off	=	61,
		V_land	=	71,
		has_afteburner	=	false,
		has_speedbrake	=	true,
		
		nose_gear_pos 				                = { 5.255, -1.952 , 0},   -- nosegear coord 

	    main_gear_pos 						 	    = {-0.504, -2.037 , 2.079}, -- main gear coords 

		radar_can_see_ground	=	true,
		AOA_take_off	=	0.16,
		stores_number	=	12,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	403,
		V_max_h	=	736.11,
		tanker_type	=	1,
		wing_area	=	56.5,
		wing_span	=	13.05,
		thrust_sum_max	=	13347,
		thrust_sum_ab	=	21952,
		Vy_max	=	275,
		length	=	19.44,
		height	=	6.4,
		flaps_maneuver	=	0.5,
		Mach_max	=	2.5,
		range	=	2540,
		crew_size	=	1,
		RCS	=	5,
		Ny_max_e	=	8,
		detection_range_max	=	250,
		IR_emission_coeff	=	0.91,
		IR_emission_coeff_ab	=	4.0,
		engines_count	=	2,
		wing_tip_pos = 	{-2.9, 0.1 , 7.1},
		nose_gear_wheel_diameter	=	0.42,
		main_gear_wheel_diameter	=	0.550,
		engines_nozzles = {
		[1] = 
		{
			pos 		=  {-2.459,	0.03,	0}, -- nozzle coords
			elevation   =  0, -- AFB cone elevation
			diameter	 = 1, -- AFB cone diameter
			exhaust_length_ab   = 7, -- lenght in m
			exhaust_length_ab_K = 0.76, -- AB animation
		}, -- end of [1]
	}, -- end of engines_nozzles
		crew_members = 
	{
		[1] = 
		{
			drop_canopy_name	 = "L-39_C_fonar_1",
			ejection_seat_name	 = "pilot_l39_seat",
			pilot_name		     = "pilot_l39",
			pos 				 = {3.925,	0.936,	0},
			can_be_playable 	 = true,
			canopy_arg           = 38, 
			ejection_order 		 = 1,
			canopy_pos			 = {2.916,0.798,0},
			ejection_added_speed = {-5,15,0},
			role 				 = "pilot",
			role_display_name    = _("Pilot"),
		},-- end of [1]
		[2] = 
		{
			drop_canopy_name	= "L-39_C_fonar_2",
			ejection_seat_name	= "pilot_l39_seat",
			pilot_name		    = "pilot_l39",
			pos 				= {1.955,	1.501,	0},
			can_be_playable 	= true,
			canopy_arg          = 421, 
			pilot_body_arg		= 472,
			ejection_order 		= 2,
			canopy_pos			=  {1.563,0.895,0},
			ejection_added_speed = {-5,15,0},
			role 				 = "instructor",
			role_display_name    = _("Instructor pilot"),
		},-- end of [2]
	}, -- end of crew_members
		brakeshute_name	=	0,
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{-0.051,	0.911,	0},
		fires_pos = 
		{
			[1] = 	{-0.707,	0.553,	-0.213},
			[2] = 	{-0.037,	0.285,	1.391},
			[3] = 	{-0.037,	0.285,	-1.391},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.003,	0.261,	0},
			[9] = 	{-5.003,	0.261,	0},
			[10] = 	{-0.707,	0.453,	1.036},
			[11] = 	{-0.707,	0.453,	-1.036},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	-0.878},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	0.878},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser

        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
         EmptyWeight = "12790",
        MaxFuelWeight = "6103",
        MaxHeight = "19700",
        MaxSpeed = "2650",
        MaxTakeOffWeight = "30845",
        Picture = "BAE.png",
        Rate = "50",
        Shape = "BAE",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier With Catapult",
            }, -- end of [1]
			[2] = 
            {
				Name = "AircraftCarrier With Tramplin",
            }, -- end of [2]
        }, -- end of TakeOffRWCategories
        WingSpan = "11.43",
        WorldID = BAE,

       -- Countermeasures
SingleChargeTotal = 180,
CMDS_Incrementation = 30,
ChaffDefault = 90, -- RR-170
ChaffChargeSize = 1,
FlareDefault = 45, -- MJU-7
FlareChargeSize = 2,
CMDS_Edit = true,
	
        CanopyGeometry = {
            azimuth = {-145.0, 145.0},
            elevation = {-50.0, 90.0}
        },
		
--		ammo_type ={ _("CM Combat Mix"),
--                     _("HEI High Explosive Incendiary"),
--                     _("TP Target Practice"),
--                   },

Sensors = {
RADAR = "AN/APG-68",--63
RWR = "Abstract RWR"
},
Countermeasures = {
ECM = "AN/ALQ-165"
},
	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},
--	mapclasskey = "P0091000024",

Guns = {gun_mount("M_61", { count = 511 },{muzzle_pos = {3.183,  0.404,-0.79}})
-- 1 × 20-mm-Gatling-Revolverkanone M61A1 „Vulcan“ mit 511 Schuss Munition

},


	Pylons =     {
       pylon(1, 2, -7.0, 0.28000, 0,
            {
                use_full_connector_position = true, connector = "PYLON_1" 
            },
            {
                { CLSID    = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --    White Smoke 
            }
        ),
        pylon(2, 2, -7.0, 0.28000, 0,
            {
                use_full_connector_position = true, connector = "PYLON_2" 
            },
            {
                { CLSID    = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --    Red Smoke
                { CLSID    = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --    Blue Smoke
            }
        ),

},
	
	Tasks = {
		aircraft_task(CAP),				
        aircraft_task(CAS),				
        aircraft_task(Escort),			
        aircraft_task(FighterSweep),	
        aircraft_task(GroundAttack),	
        aircraft_task(Intercept),		
    },	
	DefaultTask = aircraft_task(CAP),

	SFM_Data = {
	aerodynamics = 
		{
			Cy0	=	0,
			Mzalfa	=	6,
			Mzalfadt	=	1,
			kjx = 2.95,
			kjz = 0.00125,
			Czbe = -0.016,
			cx_gear = 0.0268,
			cx_flap = 0.05,
			cy_flap = 0.52,
			cx_brk = 0.06,
			table_data = 
			{
			--      M	 Cx0		 Cya		 B		 B4	      Omxmax	Aldop	Cymax
				{0.0,	0.0215,		0.070,		0.08,		0.22,	0.5,	30.0,	1.5 	},
				{0.2,	0.0215,		0.070,		0.08,		0.22,	1.5,	30.0,	1.5     },
				{0.4,	0.0215,		0.070,		0.08,	   	0.22,	2.5,	30.0,	1.5     },
				{0.6,	0.0215,		0.073,		0.05,		0.28,	3.5,	30.0,	1.5     },
				{0.7,	0.0215,		0.076,		0.05,		0.28,	3.5,	28.5,	1.4    },
				{0.8,	0.0215,		0.079,		0.05,		0.28,	3.5,	27.0,	1.3     },
				{0.9,	0.0230,		0.083,		0.09,		0.20,	3.5,	25.5,	1.2    },
				{1.0,	0.0320,		0.085,		0.17,		0.15,	3.5,	27.0,	1.15    },
				{1.1,	0.0430,		0.086,	   	0.235,		0.09,	3.15,	18.0,	1.1    },
				{1.2,	0.0460,		0.083,	   	0.285,		0.08,	2.45,	17.0,	1.05 	},		
				{1.3,	0.0470,		0.077,	   	0.29,		0.10,	1.75,	16.0,	0.1 	},				
				{1.4,	0.0470,		0.062,	   	0.3,		0.136,	1.5,	13.0,	0.9 	},					
				{1.6,	0.0470,		0.046,	   	0.34,		0.21,	0.9,	12.0,	0.7 	},					
				{1.8,	0.0460,		0.039,	   	0.34,		2.43,	0.8,	10.5,	0.55 	},		
				{2.2,	0.0420,		0.034,	   	0.49,		3.5,	0.7,	 9.0,	0.4 	},					
				{2.5,	0.0420,		0.033,		0.6,		4.7,	0.7,	 9.0,	0.4 	},		
				{3.9,	0.0400,		0.033,		0.9,		6.0,	0.7,	 9.0,	0.4		},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			typeng	=	1,
			hMaxEng	=	19.5,
			dcx_eng	=	0.0124,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	6000,
			dpdh_f	=	14000.0,
			table_data = 
			{
				{0.0,	115000,		212000},
				{0.2,	 94000,		200000},
				{0.4,	 92000,		205000},
				{0.6,	103000,		207000},
				{0.7,	105000,		210000},
				{0.8,	105000,		220000},
				{0.9,	105000,		235000},
				{1.0,	107000,		250000},
				{1.1,	103000,		258000},
				{1.2,	 94000,		268000},
				{1.3,	 84000,		285000},
				{1.4,	 71000,		300000},
				{1.6,	 34000,		318000},
				{1.8,	 19000,		337000},
				{2.2,	 17000,		370000},
				{2.5,	 19000,		390000},
				{3.9,	 82000,		310000},
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},--****NOSE_CENTER
	[1]  = {critical_damage = 3,  args = {296}},
	[2]  = {critical_damage = 3,  args = {297}},
	[3]  = {critical_damage = 8,  args = {65}},
	[4]  = {critical_damage = 2,  args = {298}},
	[5]  = {critical_damage = 2,  args = {301}},
	[7]  = {critical_damage = 2,  args = {249}},
	[8]  = {critical_damage = 3,  args = {265}},
	[9]  = {critical_damage = 3,  args = {154}},
	[10] = {critical_damage = 3,  args = {153}},
	[11] = {critical_damage = 1,  args = {167}},
	[12] = {critical_damage = 1,  args = {161}},
	[13] = {critical_damage = 2,  args = {169}},
	[14] = {critical_damage = 2,  args = {163}},
	[15] = {critical_damage = 2,  args = {267}},
	[16] = {critical_damage = 2,  args = {266}},
	[17] = {critical_damage = 2,  args = {168}},
	[18] = {critical_damage = 2,  args = {162}},
	[20] = {critical_damage = 2,  args = {183}},
	[23] = {critical_damage = 5,  args = {223}},--****WING_L_OUT
	[24] = {critical_damage = 5,  args = {213}},--****WING_R_OUT
	[25] = {critical_damage = 2,  args = {226}},--****ELERON_L
	[26] = {critical_damage = 2,  args = {216}},--****ELERON_R
	[29] = {critical_damage = 5,  args = {224}, deps_cells = {23, 25}},--****WING_L_CENTER
	[30] = {critical_damage = 5,  args = {214}, deps_cells = {24, 26}},--****WING_R_CENTER
	[35] = {critical_damage = 6,  args = {225}, deps_cells = {23, 29, 25, 37}},--****WING_L_IN
	[36] = {critical_damage = 6,  args = {215}, deps_cells = {24, 30, 26, 38}},--****WING_R_IN
	[37] = {critical_damage = 2,  args = {228}},--****FLAP_L_IN
	[38] = {critical_damage = 2,  args = {218}},--****FLAP_R_IN
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}},--*****FIN_L_TOP
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}},--*****FIN_R_TOP
--	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}},--****FIN_R_BOTTOM
	[43] = {critical_damage = 2,  args = {245}, deps_cells = {39, 53}},--****FIN_L_BOTTOM
	[51] = {critical_damage = 2,  args = {240}}, 
	[52] = {critical_damage = 2,  args = {238}},
	[53] = {critical_damage = 2,  args = {248}},--****RUDDER_L
	[54] = {critical_damage = 2,  args = {247}},--****RUDDER_R
	[56] = {critical_damage = 2,  args = {158}},
	[57] = {critical_damage = 2,  args = {157}},
	[59] = {critical_damage = 3,  args = {148}},
["MAIN"] = {critical_damage = 2,  args = {147}},--****
["MAIN"] = {critical_damage = 2,  args = {152}},--****
["MAIN"] = {critical_damage = 2,  args = {151}},-------------
["MAIN"] = {critical_damage = 2,  args = {155}},-------------
--["WING_R_OUT"] = {critical_damage = 3,  args = {220}},-------------
--["WING_L_OUT"] = {critical_damage = 3,  args = {230}},------------
--["WING_L_IN"] = {critical_damage = 4,  args = {232}},-------------
--["WING_R_IN"]] = {critical_damage = 4,  args = {222}},-------------
["STABILIZATOR_R"] = {critical_damage = 3,  args = {234}},-------------
["STABILIZATOR_L"] = {critical_damage = 3,  args = {236}},------------
	
	
	},
	
	DamageParts = 
	{  
		[1] = "BAE_destr-wing-r", -- wing R
		[2] = "BAE_destr-wing-l", -- wing L
--		[3] = "Hawk_destr-noise", -- nose
--		[4] = "Hawk_destr-tail-r", -- tail
--		[5] = "Hawk_destr-tail-l", -- tail
	},
	
	lights_data = {
	typename = "collection",
	lights = {
	[2] = { typename = "collection",
							lights = {-- Landing light
									  {typename = "spotlight",
									   connector = "MAIN_SPOT_PTR_02",
									   argument = 209,
									   dir_correction = {elevation = math.rad(-1)}
									  },
									  {-- Landing/Taxi light
									   typename = "spotlight",
									   connector = "MAIN_SPOT_PTR_01",
									   argument = 208,
									   dir_correction = {elevation = math.rad(3)}
									  }
									 }
						},
    [3]	= {	typename = "collection",
								lights = {-- Left Position Light (red)
								{typename = "omnilight",
								 connector = "BANO_1",
								 color = {0.99, 0.11, 0.3},
								 pos_correction  = {0.1, 0, -0.2},
								 argument  = 190
								},
								 -- Right Position Light (green)
								{typename = "omnilight",
								connector = "BANO_2",
								color = {0, 0.894, 0.6},
								pos_correction = {0.1, 0, 0.2},
								argument  = 191
								},
								-- Tail Position Light (white)
								{typename = "omnilight",
								connector = "BANO_0",
								color = {1, 1, 1},
								pos_correction  = {0, 0, 0},
								argument  = 192
								}}
							},
    [4] = { typename = "collection",
								lights = { -- white strobe upper)
								{typename = "natostrobelight",
								connector = "WHITE_TOP",
								argument_1 = 512,
								period = 1.0,
								color = {0.8, 0.8, 1.0},
								phase_shift = 0.0},
								{typename = "natostrobelight",
								connector = "WHITE_BOTTOM",
								argument_1 = 513,
								period = 1.0,
								color = {0.8, 0.8, 1.0},
								phase_shift = 0.3},
			 }
		},
		}
	},
	Countries = {"UK"},
}

add_aircraft(BAE)
