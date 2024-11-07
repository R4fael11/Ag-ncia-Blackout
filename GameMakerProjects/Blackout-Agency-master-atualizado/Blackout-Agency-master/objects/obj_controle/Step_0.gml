var numSlots = gamepad_get_device_count();

if (!global.controleConectado) 
{
    for (var i = 0; i <= numSlots; i++) 
	{
        if (gamepad_is_connected(i)) 
		{
            global.controle = i;
            if (!instance_exists(obj_controle_conectado)) 
			{
                instance_create_layer(0, 0, "Controle", obj_controle_conectado);
                alarm[0] = 120;
            }
            global.controleConectado = true;
            break;
        }
		else
		{
			if (instance_exists(obj_controle_conectado)) 
			{
			    instance_destroy(obj_controle_conectado);
			}
		}
    }
} else {
    if (!gamepad_is_connected(global.controle)) 
	{
        global.controleConectado = false;
    }
}