var confim = (keyboard_check(ord("E"))) or (gamepad_button_check_pressed(global.controle, gp_face1));


if (distance_to_object(obj_player) <= distancia_ativacao) {
    mostrar_icone = true;
} else {
    mostrar_icone = false;
}
if((distance_to_object(obj_player) <= distancia_ativacao) and confim){
	room_goto(sala);
}