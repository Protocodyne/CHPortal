bind(region_change, null, null, @e,

	try(

		@to = @e['toRegions'];
		@array = yml_decode(read("config.yml"));
		
		foreach(@key: @value in @array){
		
			if(array_contains(@to, @key)
				,set_ploc(player(), @value))
		
		}
	
	,@ex,

		if(@ex[0] == InvalidWorldException
			,tmsg('~console', "[ Portal ] 월드가 존재하지 않습니다")die())
		chd_write("config_broken.yml", read("config.yml"));
		@array = array("survival": array("x": 1, "y": 2, "z": 3, "world": "test"), "sample": array("x": 10, "y": 20, "z": 3, "world": "sample"));
		chd_write("config.yml", _yaml_fix(yml_encode(@array)));
		
	)

)