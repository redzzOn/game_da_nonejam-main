if (global.fases == 0) {
    if (!instance_exists(obj_transicao_pingpong)) {
        var t = instance_create_layer(0, 0, "Instances", obj_transicao_pingpong);
        t.sala_destino = Room2; 
        global.fases +=1;
		
        x = x_inicial;
        y = y_inicial;
        hspeed = 0;
        vspeed = 0;
	}
}else if global.fases == 1{
		
		  if (!instance_exists(obj_transicao_pingpong)) {
        var t = instance_create_layer(0, 0, "Instances", obj_transicao_pingpong);
        t.sala_destino = Room3; 
        global.fases +=1;
		
        x = x_inicial;
        y = y_inicial;
        hspeed = 0;
        vspeed = 0;
		
	}
}