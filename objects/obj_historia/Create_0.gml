/// @description Contiene las escenas y secuencias del juego

escena = 1;
secuencia = 1;

/*
	Escena 1
		- OBJETIVO: buscar el curriculum, dárselo a Ratonila, e irse a casa.
		- no se puede salir de [oficinas]
		1:	[despacho]
			- SI usar currículum ENTONCES pasa a sec.2
		2:	[despacho]
			- SI usar currículum ENTONCES pasa a sec.3
		3:	[despacho]
			- SI usar currículum ENTONCES pasa a sec.4
		4:	[despacho]
			- SI coger currículum ENTONCES pasa a sec.5
		5:	[oficinas]
			- SI hablar con Ratonila ENTONCES pasa a esc.2

	Escena 2
		- OBJETIVO: buscar el maletín y las llaves, ir al despacho y ponerse a trabajar.
		1:	[casa]
			- SI coger maletín Y coger llaves ENTONCES pasa a sec.2
			- no se puede salir
		2:	[casa]
			- se puede salir a [calle]
			- SI se sale a [calle] ENTONCES pasa a sec.3
		3:	[calle]
			- SI usar coche ENTONCES pasa a sec.4
			- no se puede salir
		4:	[exterior redaccion]
			- no se puede usar el coche
			- SI entrar en [oficinas] ENTONCES pasa a sec.5
		5:	[oficinas]
			- no se puede salir de [oficinas]
			- SI entrar en despacho ENTONCES pasa a sec.6
		6:	[despacho]
			- no se puede salir de [despacho]
			- SI usar papeles ENTONCES pasa a esc.3

	Escena 3
		
*/

