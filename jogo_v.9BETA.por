programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util  --> u
	funcao inicio()
	{

		
	 //enviaar para outras funções: armad_eq, arma,esqu_stat, ara_stat, matou, exp, exp_up, HP, max_HP, nivel, lvl


	logico louco = falso
	logico entidade = falso
	logico espirito = falso
	inteiro dano_final
	inteiro limite_hp = 0
	inteiro limite_mn = 0
	inteiro limite_flecha = 0
	logico armadFerro = falso
	logico armadPrata = falso
	logico armadEspectral = falso
	logico compEspFerro = falso
	logico compEspGelo = falso
	logico compEspFogo = falso
	logico compEspEletricidade = falso
	logico compEspMult = falso
	logico compArco = falso
	logico compBesta = falso
	logico compMgf = falso
	logico compMge = falso
	logico compMfe = falso
	logico compMgfe = falso
	logico efeito_choque = falso
	logico efeito_fogo = falso
	logico efeito_gelo = falso
	inteiro magia_eq = 0
	cadeia max_mp = "\n ____    ____    ________    ___    ___     ____    ____    _____\n|  _ \\  / _  |  |  ____  |   \\  \\__/  /    |  _ \\  / _  |  |  __ \\ \n| | \\ \\/ / | |  | |____| |    \\      /     | | \\ \\/ / | |  | |__) )\n| |  \\  /  | |  |  ____  |    /  __  \\     | |  \\  /  | |  |  ___/\n|_|   \\/   |_|  |_|    |_|   /__/  \\__\\    |_|   \\/   |_|  |_|"
	cadeia eq_m
	cadeia vila = "                                                         __\n          _______              __________              _|  |_  \n" + " _______ /_______\\            /__________\\           _|_    _|_" + "\n/_______\\|#  _ : |            | |_____#| |          |   |__|   |" + "\n|   _ ##||L]| |[T|            | (______) |          |[O]____[O]|\n|[]|{|[]||__|_|__|            | |}____#| |          |  |   *|  |" + "\n|\\_|_|__|                     |_||____||_|          |__|____|__|"
	cadeia morre = "oooooo     oooo                                                                                                      .o. \n  888.     .8                                                                                                        888 \n   888.   .8     .ooooo.   .ooooo.   .ooooo.     ooo. .oo.  .oo.    .ooooo.  oooo d8b oooo d8b  .ooooo.  oooo  oooo  888 \n    888. .8     d88   88b d88    Y8 d88   88b     888P Y88bP Y88b  d88   88b  888  8P  888  8P d88   88b  888   888  Y8P \n     888.8      888   888 888       888ooo888     888   888   888  888   888  888      888     888ooo888  888   888   8  \n      888       888   888 888    o8 888     o     888   888   888  888   888  888      888     888     o  888   888   o  \n       8         Y8bod8P   Y8bod8P   Y8bod8P     o888o o888o o888o  Y8bod8P  d888b    d888b     Y8bod8P    V88V V8P  Y8P"
	cadeia n = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
	cadeia cod_fas = "0" //sditc, cfsad, ggttm, gdtim
	cadeia m_f = "0", m_g = "0", m_e = "0", m_fg = "0", m_fe = "0", m_ge = "0", m_fge
	cadeia m_eq = "0"
	inteiro mapa = 0
	inteiro esqu_stat = 0, ara_stat = 0, ataq_AEC //acerta, erra ou crítico
	inteiro inim_hp = 10, inim_dmg = 2
	inteiro lutar = 0, turno = 1
	inteiro dinheiro = 0
	logico loja_usada = falso
	cadeia acao_mun = ""
	inteiro cobra = 0, aranha = 0, esqueleto = 1
	inteiro armadura, armad_eq = 0
	cadeia mid_fight = "0"
	cadeia f_be = " _____ _                 _                                         ______      _        \n |  ___(_)               | |                                        | ___ \\    | |       \n| |_   _ _ __ ___     __| | __ _  __   _____ _ __ ___  __ _  ___   | |_/ / ___| |_ __ _ \n|  _| | |  _   _ \\   / _  |/ _  | \\ \\ / / _ \\  __/ __|/ _  |/ _ \\  | ___ \\/ _ \\ __/ _  | \n| |   | | | | | | | | (_| | (_| |  \\ V /  __/ |  \\__ \\ (_| | (_) | | |_/ /  __/ |_ (_| | \n\\_|   |_|_| |_| |_|  \\__,_|\\__,_|   \\_/ \\___|_|  |___/\\__,_|\\___/  \\____/ \\___|\\__\\__,_|"
	inteiro fim = 0
	inteiro especificar = 0
	inteiro arma = 0
	inteiro dano = 3
	inteiro dmg_espada_pedra = 2
	inteiro espada_ferro = 0
	inteiro dmg_espada_ferro = 3
	inteiro espada_gelo = 0
	inteiro dmg_espada_gelo = 3
	inteiro espada_fogo = 0
	inteiro dmg_espada_fogo = 2
	inteiro espada_mult = 0
	inteiro dmg_espada_eletrica = 1
	inteiro espada_eletrica = 0
	inteiro dmg_espada_mult = 5
	inteiro matou = 1
	inteiro nivel = 1
	cadeia sistema = "1"
	inteiro max_HP = 5
	inteiro HP = 5
	inteiro max_MP = 5
	inteiro MP = 5
	inteiro inimigo, it_ReMN = 0, it_ReHP = 0, it_MoHP = 0, it_MoMN = 0, it_fujir = 0
	inteiro espada = 0
	inteiro besta_dmg = 2
	inteiro besta = 0
	inteiro arco_dmg = 3
	inteiro arco = 0
	inteiro flecha = 5
	inteiro cenario = 1
	cadeia nome = ""
	cadeia pronto
	cadeia missao = "Converse com a elfa para continuar a aventura"
	inteiro momento = 0
	inteiro tecla
	inteiro n_nome = 0
	inteiro final_VBeta = 0
	cadeia ok 
	inteiro exp = 0, exp_up = 10
	cadeia esco
	cadeia it_col = "ooooo     .                                                      oooo                .                   .o8            \n 888    .o8                                                       888              .o8                   888            \n 888  .o888oo  .ooooo.  ooo. .oo.  .oo.       .ooooo.   .ooooo.   888   .ooooo.  .o888oo  .oooo.    .oooo888   .ooooo.  \n 888    888   d88   88b  888P Y88bP Y88b     d88    Y8 d88   88b  888  d88   88b   888    P  )88b  d88   888  d88   88b \n 888    888   888ooo888  888   888   888     888       888   888  888  888ooo888   888    .oP 888  888   888  888   888 \n 888    888 . 888    .o  888   888   888     888   .o8 888   888  888  888    .o   888 . d8(  888  888   888  888   888 \no888o    888   Y8bod8P  o888o o888o o888o     Y8bod8P   Y8bod8P  o888o  Y8bod8P     888   Y888  8o  Y8bod88P   Y8bod8P "
	cadeia acao_inv = "0"
	cadeia pressione = "\n _____    _____    _______    ________   ________   __   ______   __    __    _______\n|  __ \\  | ___ \\  /   __  \\  /   ____/  /   ____/  |  | |  __  | |  \\  |  |  /   __  \\ \n| |__) ) ||___) ) |  |__|_/  |  (____   |  (____   |  | | |  | | |   \\ |  |  |  |__|_/\n|  ___/  |  __ (  |  \\____   \\_____  \\  \\_____  \\  |  | | |__| | |    \\|  |  |  \\____ \n|_|      |_|  \\_\\ \\______/   /_______/  /_______/  |__| |______| |_|\\_____|  \\______/"
	cadeia esc_HP = "\n ____    ____    ________    ___    ___     __    __   _____\n|  _ \\  / _  |  |  ____  |   \\  \\__/  /    |  |__|  | |  __ \\ \n| | \\ \\/ / | |  | |____| |    \\      /     |   __   | | |__) )\n| |  \\  /  | |  |  ____  |    /  __  \\     |  |  |  | |  ___/\n|_|   \\/   |_|  |_|    |_|   /__/  \\__\\    |__|  |__| |_|"
	cadeia up = "\n		  __   __   _____       /\\ \n		 |  | |  | |  __ \\     /  \\ \n		 |  | |  | | |__) )   /_  _\\ \n		 |  |_|  | |  ___/     |  |\n		  \\_____/  |_|         |__|"
	cadeia lvl = "\n		  __        _______    ___      ___   _______   __\n		 |  |      /   __  \\  |   \\    /   | /   __  \\ |  |\n		 |  |      |  |__|_/   \\   \\  /   /  |  |__|_/ |  |\n		 |  |___   |  \\___      \\   \\/   /   |  \\____  |  |___\n		 |______|  \\______/      \\______/    \\______/  |______|"
	escreva("         ________     _______      __    ______       ________     _______    ____    ____      ___      ___    ___     __    __     ______      ______")
	escreva("\n        /?  ____/    /{  __  \\    |~~|  |$ __  |     |! ____  \\   /* *__  \\  |* _ \\  / _  |    |,  \\    /   |  |   |   |  \\  |  |   |MP__  \\    |Y __{=|")
	escreva("\n        \\____ $?\\    | }|__|_/    )~~|  | |__|£|     |!|____) /   | *|__|_/  | | \\ \\/*/ | |     \\ ##\\  / ##/   |>:(|   |   \\ |HP|   | |  \\  \\   |||  | |	A Aventura")
	escreva("\n        /_______/    |{ \\____   _/~~/   |  __  |     |'|____) \\   | *\\____   | |  \\  /  | |      \\   \\/   /    |{| |   |+HP \\|  |   | |__/  /   |V|__| |    de um campones")
     escreva("\n         (anão)      \\______/  (___/    |_|  |_|     |________/   \\______/   |_|   \\/   |_|       \\______/     |___|   |_|\\_____|   |______/    |______|         				BETA")
     escreva("\n        Um jogo onde sua criatividade se desenvolve imaginando o mundo mágico\n                 pressione ENTER                   (ENTER = START)\n")
     leia(pronto)
     enquanto(pronto == ""){
     	enquanto(momento == 0){
     	escreva(n, " Insira um código de fase\n")
     	leia(cod_fas)
     	enquanto(falso == (n_nome > 0 e n_nome <= 17)){
     		escreva("\n\n\n\n\n\n\n\n Informe seu nome (1-17 letras) \n")
     	leia(nome)
     	n_nome = t.numero_caracteres(nome)
     	}
     	se(cod_fas != "ggttm"){
     	se(cod_fas != "gdtim"){
     	se(cod_fas != "sditc"){
     		se(cod_fas != "cfsad"){
     		se(n_nome == 0 ou n_nome > 17){
     		escreva("\n\n\n\n\n\n Informe seu nome (1-17 letras) \n\n")
     	leia(nome)
     	n_nome = t.numero_caracteres(nome)
     	u.aguarde(10)
     	}enquanto(n_nome <= 0 ou n_nome >= 18){
     		escreva(n, " Informe seu nome (1-17 letras) \n\n")
     	leia(nome)
     	n_nome = t.numero_caracteres(nome)
     	u.aguarde(10)
     		}
     		momento = 2000
     	se(n_nome >= 6 e n_nome <= 11){
     	momento = 2000
     	enquanto(momento == 2000){
     		escreva("\n\n\n\n\n\n\n\n Era uma vez, em uma vila pacífica, uma pequena pessoa chamada ")
     		escreva(nome)
     		escreva(", era um(a) fazendeiro(a) que		|   |              Até que... Um portal se abriu, com um aventureiro saindo dele pedindo ajuda, ele era pequeno,\n adorava caçar no bosque ao lado de sua casa, perto das montanhas e do lado do lago de pesca")
     		escreva("			|   |             barbudo, usando um machado e uma armadura rara")
     	
     		escreva("\n	    ____    ________      __   __   __   _____     ________       ___     ____    __     ____     __    __    ______   _____    ________") //1-ajuda 2-ignora
     		escreva("\n	   /    |  |  ____  |    |  | |  | |  | |  __ \\   |  ____  |     /  /    / _  \\  |  |   /  __\\   |  \\  |  |  |  __  | | ___ \\  |  ____  |")
     		escreva("\n	  /__|  |  | |____| |    )  | |  | |  | | |  \\ \\  | |____| |    /  /     \\__/ /  |  |  /  /  _   |   \\ |  |  | |  | | ||___) ) | |____| |")
     		escreva("\n	     |  |  |  ____  |  _/  /  |  |_|  | | |__/ /  |  ____  |   /  /      __/ /_  |  |  \\  \\_| |  |    \\|  |  | |__| | |  __ (  |  ____  |") 
     		escreva("\n	     |__|  |_|    |_| (___/   \\_______/ |_____/   |_|    |_|  /__/      |______| |__|   \\_____|  |_|\\_____|  |______| |_|  \\_\\ |_|    |_|\n")
     		leia(pronto)
     		u.aguarde(10)
     		se(pronto == "2"){
     			escreva("\n ", nome, " não se encomoda com sua presença e continua sua vida pacífica						|   |	   	   Em seguida uma elfa aparece socorrendo ele e o levanto de volta sem ver sua silueta\n Final 1 'FDP'\n")
     			escreva("\n	   _______   __    ___    ___")
     			escreva("\n	  |:/_____| |  |  |   \\  /]: |")
     			escreva("\n	  | |___    |  |  |  :(\\/    |")
     			escreva("\n	  | ]:__|   |;(|  |  |\\  /|  |")
     			escreva("\n	  |__|      |__|  |__| \\/ |__|")
     			pare
     		}se(pronto == "1"){
     		escreva("\n\n\n\n\n\n Nesse momento já percebeu que sua vida pacífica estava no fim. Mesmo assim ele decide ajudar		|   |	  Repentinamente uma elfa de orelhas pontiacudas, cabelo loiro de olhos azuis aparece, porém, fica em silêncio \ntirando a parte da armadura de seus braços e usando uma atatudura e enfaixando eles		        |   |	 por um momento, logo você nota sua presença e se pergunta de onde vieram\n")
     		momento = 3
     		leia(ok)
     		}
     	}
     	}se(n_nome <= 3 e n_nome >= 1){
     	enquanto(momento == 2000){
     		escreva("\n\n\n\n\n\n\n\n Era uma vez, em uma vila pacífica, uma pequena pessoa chamada ")
     		escreva(nome)
     		escreva(", era um(a) fazendeiro(a) que			|   |              Até que... Um portal se abriu, com um aventureiro saindo dele pedindo ajuda, ele era pequeno,\n adorava caçar no bosque ao lado de sua casa, perto das montanhas e do lado do lago de pesca")
     		escreva("			|   |             barbudo, usando um machado e uma armadura rara")
     	
     		escreva("\n	    ____    ________      __   __   __    _____     ________       ___     ____    __     ____     __    __    ______   _____    ________") //1-ajuda 2-ignora
     		escreva("\n	   /    |  |  ____  |    |  | |  | |  |  |  __ \\   |  ____  |     /  /    / _  \\  |  |   /  __\\   |  \\  |  |  |  __  | | ___ \\  |  ____  |")
     		escreva("\n	  /__|  |  | |____| |    )  | |  | |  |  | |  \\ \\  | |____| |    /  /     \\__/ /  |  |  /  /  _   |   \\ |  |  | |  | | ||___) ) | |____| |")
     		escreva("\n	     |  |  |  ____  |  _/  /  |  |_|  |  | |__/ /  |  ____  |   /  /      __/ /_  |  |  \\  \\_| |  |    \\|  |  | |__| | |  __ (  |  ____  |") 
     		escreva("\n	     |__|  |_|    |_| (___/   \\_______/  |_____/   |_|    |_|  /__/      |______| |__|   \\_____|  |_|\\_____|  |______| |_|  \\_\\ |_|    |_|\n")
     		leia(pronto)
     		u.aguarde(10)
     		se(pronto == "2"){
     			escreva("\n ", nome, " não se encomoda com sua presença e continua sua vida pacífica						|   |	   	   Em seguida uma elfa aparece socorrendo ele e o levanto de volta sem ver sua silueta\n Final 1 'FDP'\n")
     			escreva("\n	   _______   __    ___    ___")
     			escreva("\n	  |:/ ____| |  |  |   \\  /]: |")
     			escreva("\n	  |  |__    |  |  |  :(\\/    |")
     			escreva("\n	  | ]:__|   |;(|  |  |\\  /|  |")
     			escreva("\n	  |__|      |__|  |__| \\/ |__|")
     			pare
     		}se(pronto == "1"){
     			escreva(n, "Nesse momento já percebeu que sua vida pacífica estava no fim. Mesmo assim ele decide ajudar		|   |	  Repentinamente uma elfa de orelhas pontiacudas, cabelo loiro de olhos azuis aparece, porém, fica em silêncio \ntirando a parte da armadura de seus braços e usando uma atatudura e enfaixando eles		        |   |	 por um momento, logo você nota sua presença e se pergunta de onde vieram\n")
     			momento = 3
     			leia(ok)
     		}
     		}
     	}se(n_nome <= 17 e n_nome >= 12){
     	enquanto(momento == 2000){
     		escreva(n, " Era uma vez, em uma vila pacífica, uma pequena pessoa chamada ")
     		escreva(nome)
     		escreva(", era um(a) fazendeiro(a) que	|   |              Até que... Um portal se abriu, com um aventureiro saindo dele pedindo ajuda, ele era pequeno,\n adorava caçar no bosque ao lado de sua casa, perto das montanhas e do lado do lago de pesca")
     		escreva("			|   |             barbudo, usando um machado e uma armadura rara")
     	
     		escreva("\n	    ____    ________      __   __   __     _____     ________       ___     ____    __     ____     __    __    ______   _____    ________") //1-ajuda 2-ignora
     		escreva("\n	   /    |  |  ____  |    |  | |  | |  |   |  __ \\   |  ____  |     /  /    / _  \\  |  |   /  __\\   |  \\  |  |  |  __  | | ___ \\  |  ____  |")
     		escreva("\n	  /__|  |  | |____| |    )  | |  | |  |   | |  \\ \\  | |____| |    /  /     \\__/ /  |  |  /  /  _   |   \\ |  |  | |  | | ||___) ) | |____| |")
     		escreva("\n	     |  |  |  ____  |  _/  /  |  |_|  |   | |__/ /  |  ____  |   /  /      __/ /_  |  |  \\  \\_| |  |    \\|  |  | |__| | |  __ (  |  ____  |") 
     		escreva("\n	     |__|  |_|    |_| (___/    \\_____/    |_____/   |_|    |_|  /__/      |______| |__|   \\_____|  |_|\\_____|  |______| |_|  \\_\\ |_|    |_|\n")
     		leia(pronto)
     		u.aguarde(10)
     		se(pronto == "2"){
     			escreva("\n ", nome, " não se encomoda com sua presença e continua sua vida pacífica						|   |	      Em seguida uma elfa aparece socorrendo ele e o levanto de volta sem ver sua silueta\n Final 1 'FDP'\n")
     			escreva("\n	   _______   __    ___    ___")
     			escreva("\n	  |:/ ____| |  |  |   \\  /]: |")
     			escreva("\n	  |  |__    |  |  |  :(\\/    |")
     			escreva("\n	  | ]:__|   |;(|  |  |\\  /|  |")
     			escreva("\n	  |__|      |__|  |__| \\/ |__|")
     			pare
     		}
     		se(pronto == "1"){
     			escreva(n, " Nesse momento já percebeu que sua vida pacífica estava no fim. Mesmo assim ele decide ajudar		|   |	  Repentinamente uma elfa de orelhas pontiacudas, cabelo loiro de olhos azuis aparece, porém, fica em silêncio \ntirando a parte da armadura de seus braços e usando uma atatudura e enfaixando eles		        |   |	 por um momento, logo você nota sua presença e se pergunta de onde vieram\n")
     			momento = 3
     			leia(ok)
     		}
     	}
     	}se(n_nome == 5 ou n_nome == 4){
     	u.aguarde(1)
     	enquanto(momento == 2000){
     		escreva(n, " Era uma vez, em uma vila pacífica, uma pequena pessoa chamada ")
     		escreva(nome)
     		escreva(", era um(a) fazendeiro(a) que		        |   |              Até que... Um portal se abriu, com um aventureiro saindo dele pedindo ajuda, ele era pequeno,\n adorava caçar no bosque ao lado de sua casa, perto das montanhas e do lado do lago de pesca")
     		escreva("		        	|   |             barbudo, usando um machado e uma armadura rara")
     	
     		escreva("\n	    ____    ________      __   __   __   _____     ________       ___     ____    __     ____     __    __    ______   _____    ________") //1-ajuda 2-ignora
     		escreva("\n	   /    |  |  ____  |    |  | |  | |  | |  __ \\   |  ____  |     /  /    / _  \\  |  |   /  __\\   |  \\  |  |  |  __  | | ___ \\  |  ____  |")
     		escreva("\n	  /__|  |  | |____| |    )  | |  | |  | | |  \\ \\  | |____| |    /  /     \\__/ /  |  |  /  /  _   |   \\ |  |  | |  | | ||___) ) | |____| |")
     		escreva("\n	     |  |  |  ____  |  _/  /  |  |_|  | | |__/ /  |  ____  |   /  /      __/ /_  |  |  \\  \\_| |  |    \\|  |  | |__| | |  __ (  |  ____  |") 
     		escreva("\n	     |__|  |_|    |_| (___/   \\______/  |_____/   |_|    |_|  /__/      |______| |__|   \\_____|  |_|\\_____|  |______| |_|  \\_\\ |_|    |_|\n")
     		leia(pronto)
     		u.aguarde(10)
     		se(pronto == "2"){
     			escreva("\n ", nome, " não se encomoda com sua presença e continua sua vida pacífica						|   |		  	   Em seguida uma elfa aparece socorrendo ele e o levanto de volta sem ver sua silueta\n Final 1 'FDP'\n")
     			escreva("\n	   _______   __    ___    ___")
     			escreva("\n	  |:/ ____| |  |  |   \\  /]: |")
     			escreva("\n	  |  |__    |  |  |  :(\\/    |")
     			escreva("\n	  | ]:__|   |;(|  |  |\\  /|  |")
     			escreva("\n	  |__|      |__|  |__| \\/ |__|")
     			pare
     		}
     		se(pronto == "1"){
     		escreva(n, " Nesse momento já percebeu que sua vida pacífica estava no fim. Mesmo assim ele decide ajudar		|   |	  Repentinamente uma elfa de orelhas pontiacudas, cabelo loiro de olhos azuis aparece, porém, fica em silêncio \ntirando a parte da armadura de seus braços e usando uma atatudura e enfaixando eles	 	        |   |	 por um momento, logo você nota sua presença e se pergunta de onde vieram\n")
     		momento = 3
     		leia(ok)
     		}
     		}
	     	}
	     	momento = 3
     		enquanto(momento == 3){
     		escreva(n, "elfa:Obrigada por ajuda-ló, nós precisavamos de ajuda contra uma besta térrivel, venha conosco.		|   | (elfa) Aqui estamos, no vilarejo abandonado, infelizmente não é seguro, tive que usar o resto das minhas energias\n Sem você poder responder ela te puxa para o portal, você fica com um cala frio ao ver o local		|   |	no portal mas seu mundo não tem mana. Cuidado!! (você se vira dando o soco mais forte da sua vida em um esqueleto)\n")
     		leia(ok)
     		escreva(n, "		!CRIT! - 10 HP\n	     esqueleto:0/10HP    +10 xp\n\n\n")
     		leia(ok)
     		para(inteiro i = 0; i < 5; i++){
     		escreva(n)
     		u.aguarde(200)
     		escreva(lvl, up, "        0 --> 1")
     		u.aguarde(450)
     		}
     		inteiro i = 0
     		nivel = 1
     		leia(ok)
     		para(i; i< 5 ; i++){
     		escreva(n)
     		u.aguarde(200)
     		escreva(esc_HP, up, "   3 --> 5  MaxHP")
     		u.aguarde(450)
     		}
     		matou = 1
     		leia(ok)
     		escreva(n, "elfa:E-e-eu demorei horas para derrotar apenas u-u-um deles, E VOCÊ DERROTOU COM UM SOCO!!! ...		|   |	 Talvez a gente tenha uma chance!!(você fala sobre um painel na sua frente que tem informações de si mesmo)\nvocê entende como que isso é díficil!? espero que você saiba porque... para sua informação...		|   |	 como assim? Espera... VOCÊ! VOCÊ É O ESCOLHIDO! (você entende a situação, e acha meio gliche, mesmo assim continua)\n")
     		leia(ok)
     		escreva(n, "(Você decide ver oque o esqueleto tinha de valor ou equipamento que possa usar)\n")
     		leia(ok)
     		escreva(n, "Você encontrou uma espada de pedra\nPegar?	1- sim(+2DANO)		2-não\n")
    			esco = "0"
     		enquanto(esco != "1" e esco != "2"){
     		leia(esco)
     		se(esco == "1"){
     		espada = 4
     		momento = 4
     		escreva(n, " Você pegou 'espada de pedra'\n")
     		leia(ok)
     			}se(esco == "2"){
     				espada = 1
     			escreva(n, "Você não pegou a espada\n")	
     			leia(ok)
     			escreva(n, "elfa:Pega esssa espada que encontrei naquele esqueleto (você pega contra sua vontade)")
     			leia(ok)
     			momento = 4
     			}se(esco != "1" e esco != "2"){
     				escreva(n, "Faça uma escolha válida")
     				leia(ok)
     				escreva(n, "Você encontrou uma espada de pedra\nPegar?	1- sim(+2DANO)		2-não\n")
     			}
     			}
     		}
     		escreva(n, "precione 1 para acessar o inventário do seu personagem		'lembre de confirmar usando:ENTER'\n")
     		leia(acao_inv)
     		especificar = 1
     		}se(cod_fas == "cfsad"){
			momento = 4
     		espada = 1
     		especificar = 1
     		acao_inv = "0"
     	}
     		enquanto(momento == 4){
     		enquanto(acao_inv != "0"){
     			se(especificar == 1){
     			escreva(n, " HP:", HP, "/", max_HP, "		Mp:", MP, "/", max_MP, "		armas:")
     			se(arma == 1){
     			escreva("espada de pedra")
     			escreva("		equipamento:nada		magias:nenhuma		matou:", matou, "		dano:", dano + 2, "(+2)")
     			}senao se(arma == 0){
     				escreva("		equipamento:nada		magias:nenhuma		matou:", matou, "		dano:", dano, "\n\n0:ir no mapa		1:equipar espada		2:indisponivel			3:indisponivel			4:indisponivel\n")
     			escreva("\nPressione 1 para equipar a espada e depois confirme com ENTER\n")
     			u.aguarde(10)
     			leia(acao_inv)
     			se(acao_inv == "1"){
     			especificar = 0
     			arma = 1
     			u.aguarde(10)
     			}se(acao_inv != "1"){
					escreva(n, "Pressione 1 como manda")
					leia(ok)
     			}
     			}
     		}
     	se(arma == 1){
     		escreva(n, " HP:", HP, "/", max_HP, "		Mp:", MP, "/", max_MP, "		*armas:espada de pedra*		equipamento:nada		magias:nenhuma		matou:", matou, "		dano:", dano + dmg_espada_pedra, "(+2)\n\n0:ir no mapa		1:equipar espada		2:indisponivel			3:indisponivel			4:indisponivel\n")
     		}
     		escreva("		Pressione 0 para sair e depois confirme com ENTER\n\n")
     		leia(acao_inv)
     	}se(acao_inv == "0"){
     	momento = 5
     		}
     		}
     		}
     		momento = 5
     		se(cod_fas == "sditc"){
			momento = 5
			arma = 1
			espada = 1
     	}
     		enquanto(momento == 5){
    		escreva(n, "(elfa)Tem uma ferraria por perto venha comigo eu te levo até lá. (ela te guia mais calmamente,  	|   |	(Você a segue até a metade do caminho, você se destrai com uma lápide aberta por um momento,\npois ela sabe que você consegue defende-los sem problema algum, oque a faz sentir segura com você)	|   |	(guerreiro) estão indo aonde?? (você explica). Oh sem problema, vão sem mim, eu alcanço vocês.\n")
     	leia(ok)
     	escreva(n, "(Enquanto nosso héroi(na) caminha, fica curioso sobre a pápide aberta) 'você viu aquela tumba	|   |	(a elfa olha para você, se perguntando) elfa: Como assim? Não deveria estar assim, melhor tomar mais cuidado\nali atrás? Seria melhor tomar cuidado extra em relação a isso ou não?                        	|   |     mesmo, pode ser bem perigoso. (alguns segundos depois): elfa:um esqueleto! Socorro!!!")
     	leia(ok)
     	escreva(morre)
     	leia(ok)
     	escreva(n, "você se sente derrubado, mas vê a elfa com uma poção")
     	leia(ok)
     	escreva(n, "elfa:aqui use ssa poção que estive mantendo comigo, você salvou minha vida, eu te devo essa		|   |	(Ela te ajuda despejando a poção em sua boca, nenezinho(a) da elfinha, cuticuti, quer a mamadeiro coisa fofa)\n													|   |	(você se irrita com o programador gostosão, que pega todas e também é um comédia)")
     	leia(ok)
     	escreva(n, "		HP 0.1/5 -- > HP 5/5")
     	leia(ok)
     	escreva(n, "É aqui, que a ação começa... DE VERDADE!!!")
     	lutar = 1
     	inimigo = 1
     	esqu_stat = 1
     	arma = 1
     	inim_hp = 10
     	leia(ok)
     	enquanto(lutar == 1){
     	se(turno == 1){
     		escreva(n, " Você:Hp", HP, "/", max_HP, "		Mp", MP, "/", max_HP)
     		se(arma == 1){
     			se(dano == 3){
     				dano += dmg_espada_pedra
     			}
     		}
     		se(esqu_stat == 2){
     		escreva("\nesqueleto:", inim_hp, "/10		dano:", inim_dmg, "		aperte 1 para atacar")
     		leia(mid_fight)
     		turno = 2
     		se(mid_fight == "2"){
     			esqu_stat = 1
     			turno = 2
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(esqu_stat == 1){
     		escreva("\n\nesqueleto:", inim_hp, "		aperte 1 para atacar e 2 para inspecionar")
     		leia(mid_fight)
     		se(mid_fight == "2"){
     			esqu_stat = 2
     			turno = 2
     			escreva(n, "você inspeciona o esqueleto")
     			leia(ok)
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(inim_hp <= 0){
     		matou += 1
     		escreva(n, "+5xp	")
     		leia(ok)
     		para(inteiro i = 0; i < 5; i++){
     			exp ++
     			lutar = 0
     			u.aguarde(150)
     			escreva(n)
     			u.aguarde(150)
     			escreva("nivel:", nivel, "		exp:", exp, "/10")
     		}
     		leia(ok)
     	}
     	}se(inim_hp > 0){
     		se(turno == 2){
     	
     		ataq_AEC = u.sorteia(1, 10)
     		se(ataq_AEC <= 2){
     			escreva(n, "O esqueleto errou")
     			leia(ok)
     		}se(ataq_AEC >=3 e ataq_AEC <=8){
     			escreva(n, "Você levou ", inim_dmg, " de dano")
     			HP -= 2
			leia(ok)
     		}se(ataq_AEC >=9){
     			escreva("\n Dano crítico! ", inim_dmg, "(+1)")
     			HP -= 3
     			leia(ok)
     		}
     		turno = 1
     		}
     	}
     	}se(lutar == 0){
     		escreva(n, "	Ao derrotar o esqueleto, você vê uma poção de cura equerendo ou não, você não tem escolha\n							e o programador não quer fazer coisa complicada")
     	it_ReHP = 1
     	momento = 6
     	especificar = 5
     	leia(ok)
     	}
     		}
     	}se(cod_fas == "gdtim"){
     		arma = 1
     		it_ReHP = 1
     		momento = 6
     		matou = 2
     		exp = 5
     		especificar = 5
     		u.aguarde(10)
     		HP = 1
     	}
     		enquanto(momento == 6){
     		se(especificar == 5){
     			sistema = "10"
     		escreva(n, "Aperte 1 para acessar o inventário e em seguida se curar\n")
     		especificar = 0
     		}
     		se(especificar != 1){
     		enquanto(acao_mun != "1"){
     			leia(acao_mun)
     			se(acao_mun != "1"){
     				escreva("\n\nDigite 1\n")
     			}
     			}
     		}
     		enquanto(acao_mun == "1"){
     			escreva(n, " exp:", exp, "/", exp_up, "		lvl:", nivel, "		HP:", HP, "/", max_HP, "		Mp:", MP, "/", max_MP, "		*armas:espada de pedra*		equipamento:nada		itens:poção de cura(", it_ReHP, ")		magias:nenhuma		matou:", matou, "		dano:", dano, "(+2)\n\n0:ir no mapa		1:equipar espada		2:indisponivel			3:indisponivel			4:se curar\n")
     			leia(acao_inv)
     		se(acao_inv == "0"){
     			se(sistema == "10"){
     				escreva(n, "você deve se recuperar para sair")
     				leia(ok)
     			}senao se(sistema == "1"){
     				momento = 7
     				acao_mun = "0"
     			}
     		}se(acao_inv != "4" e sistema == "10" e acao_inv != "0"){
				escreva(n, "				Ação indisponivel, pare de zoar\n																											animal")
     			leia(ok)
     		}se(sistema == "1" e acao_inv != "0"){
     			escreva(n, "				Ação indisponivel, pare de zoar\n																											animal")
     			leia(ok)
     		}se(acao_inv == "4"){
     			se(it_ReHP >= 1){
     			para(inteiro i = HP; i < max_HP; i++){
	     				escreva(n, "		", i, "/", max_HP)
	     				u.aguarde(200)
	     			}
	     			it_ReHP = 0
	     			escreva(n, "		5", "/", max_HP)
	     			HP = max_HP
	     			leia(ok)
     			}
     			sistema = "1"
     			especificar = 1
     		}
     		}
     	}
     		enquanto(momento == 7){
     		enquanto(acao_mun == "0"){				
	     			se(especificar != 0){
		     			escreva(n, "1:inventario			2:procurar inimigos			3:conversar com a elfa			4:indisponivel			-->->->5:ver suas missões<-<-<--")
		     			leia(sistema)
	     			}
     				se(especificar == 0){
     					escreva(n, "1:inventario			2:procurar inimigos		-->->->3:conversar com a elfa<-<-<--		4:indisponivel			       5:ver suas missões")
		     			leia(sistema)
     				}
     		se(sistema != "5"){
     			se(especificar == 1){
     			escreva("Informe o valor 5 PARA FAZER OQUE DEVE")
     			sistema = "0"
     			leia(ok)
     			}
     		}se(sistema == "5"){
     			escreva(n, missao)
     			sistema = "0"
     			especificar = 0
     			leia(ok)
     		}
     		se(especificar == 0){
     			se(sistema == "1"){
     				acao_mun = "1"
     				enquanto(acao_mun == "1"){
     			escreva(n, " exp:", exp, "/", exp_up, "		lvl:", nivel, "		HP:", HP, "/", max_HP, "		Mp:", MP, "/", max_MP, "		*armas:espada de pedra*		equipamento:nada		itens:poção de cura(", it_ReHP, ")		magias:nenhuma		matou:", matou, "		dano:", dano, "(+2)\n\n0:ir no mapa		1:equipar espada		2:indisponivel			3:indisponivel			4:se curar\n")
     		leia(acao_inv)
     		se(acao_inv == "0"){
     				acao_mun = "0"
     		}se(acao_inv == "2" ou acao_inv == "3" ou acao_inv == "1"){
				escreva(n, "				Ação indisponivel, deixe de ser trouxa\n																											animal")
     		leia(ok)
     		}se(acao_inv == "4"){
     			se(it_ReHP >= 1){
     			para(inteiro i = HP; i < max_HP; i++){
     				escreva(n, "		", i, "/", max_HP)
     				u.aguarde(200)
     			}
     			it_ReHP = 0
     			escreva(n, "		5", "/", max_HP)
     			HP = max_HP
     			leia(ok)
     			}
     		}
     		}
     			}se(sistema == "2"){
     				lutar_ini(dano, armad_eq, arma, esqu_stat, ara_stat, matou, exp, exp_up, HP, max_HP, nivel, lvl)
     		}
     		}
     		se(sistema == "3"){
     			escreva(n, "elfa: venha eu te levo até lá.(se vc pensa coisa esquisita dela vsf esquisitão)			guerreiro anão:esperem por mim!")
     			leia(ok)
     			escreva(n, "(Nossos aventureiros partem para a aventura, porém nosso(a) protagonista não se sente 	|   |	elfa: tudo bem ", nome, " a gente te espera a frente\nconfiante com seu equipamento atual e decide volta para de fato usar a ferraria		|   |")
     			leia(ok)
     			momento = 8
     			acao_mun = "1"
     		}
     		}
     		}enquanto(momento == 8){
     			se(armad_eq != 1){
     			acao_mun = "0"
     			escreva(n, "(Você da uma olhada na ferraria e encontra uma armadura enferrujada)\n")
     			leia(ok)
     			escreva(n, "Dano adicional de ferrujem: +1(você causa mais 1 de dano por veneno), HP: +2\n Você pega ela?	1 - sim 	2 - sim\n")
     			leia(esco)
     			se(esco != "1" e esco != "2"){
     				escreva(n, "Espertinho, vai pega sim")
     				leia(ok)
     				esco = "1"
     		}se(esco == "1" ou esco == "2"){
     			escreva(n, "Nosso Aventureiro(a) pega a sua armadura e vai em busca de sua aventura\n")
     			leia(ok)
     		}
     		escreva(n, "Hora de se equipar	Pressione 1\n")
     			}
     		enquanto(acao_mun == "0"){
     			se(especificar == 0){
     			enquanto(especificar == 0){
     			escreva("\n1:inventario			2:procurar inimigos			3:conversar com a elfa			4:indisponivel				5:ver suas missões\n")
     		leia(acao_mun)
     		se(acao_mun == "1"){
     		especificar = 2
     		}
     			}
     			}se(acao_mun == "0"){
     				se(especificar == 2){
	     			escreva(n, "1:inventario			2:procurar inimigos			3:conversar com a elfa			4:voltar com os dois		5:ver suas missões\n")
	     			leia(acao_mun)
     				}senao se(especificar == 100){
						escreva(n, "1:inventario			2:procurar inimigos			3:conversar com a elfa			-->4:voltar com os dois<--		5:ver suas missões\n")
     				leia(acao_mun)
     				}
     			}
				se(acao_mun == "4"){
				se(especificar != 100){
				escreva(n, "Você ainda não equipou a armadura\n")
				leia(ok)
				}se(especificar == 100){
					escreva(n, " Nesse momento nosso(a) heroi(na) se recorda de seus companheiros e retorna rapidamente para encontra-los\n")
					momento = 9
					}
				}
				}
     				enquanto(acao_mun == "1"){
     					se(armad_eq != 1){
			     			escreva(n, " exp:", exp, "/", exp_up, "		lvl:", nivel, "		HP:", HP, "/", max_HP, "		Mp:", MP, "/", max_MP, "		*armas:espada de pedra*		equipamento:nada		itens:poção de cura(", it_ReHP, ")		magias:nenhuma		matou:", matou, "		dano:", dano, "(+2)\n\n0:ir no mapa		1:equipar espada		-->2:armadura<--		3:indisponivel			4:se curar\n")
			     			leia(acao_inv)
     					}se(armad_eq == 1){
     						escreva(n, " exp:", exp, "/", exp_up, "		lvl:", nivel, "		HP:", HP + 2, "/", max_HP + 2, "(+2)	Mp:", MP, "/", max_MP, "		*armas:espada de pedra*	equipamento:armadura enferrujada	itens:poção de cura(", it_ReHP, ")	magias:nenhuma		matou:", matou, "		dano:", dano + 1, "(+2)(+1)\n\n0:ir no mapa		1:equipar espada		2:armadura			3:indisponivel			4:se curar\n")
			     			leia(acao_inv)
			     			se(acao_inv == "1"){
				     			se(arma == 1){
				     			escreva(n, "A espada já está equipada")
				     			leia(ok)
				     			}se(arma != 1){
				     				escreva(n, "A espada foi equipada")
				     				leia(ok)
				     			}
							}
     					}
			se(acao_inv == "2"){
				armadura = 0
				enquanto(armadura != 1){
				se(especificar == 2){
				escreva(n, "-->1-armadura enferrujada<--		2-##########		3-##########		4-##########		5-sair")
				leia(armadura)	
				se(armadura != 1){
				escreva(n, "pare de desobedecer")
				leia(ok)
				}se(armadura == 1){		
				escreva(n, "Você equipou a armadura")
				leia(ok)
				armad_eq = 1
				armadura = 0
				especificar = 100
				}
				}se(especificar != 2){
				escreva(n, "*1-armadura enferrujada*		2-##########		3-##########		4-##########		5-sair")
				leia(armadura)
				se(armadura == 1){
					se(armad_eq != 1){		
				escreva(n, "Você equipou a armadura")
				leia(ok)
				armad_eq = 1
				especificar = 100
					}se(armad_eq == 1){
					escreva(n, "Você já equipou a armadura")
					leia(ok)
					}
				}se(armadura != 5 e armadura != 1){
					escreva(n, "Você sabe que não pode")
					leia(ok)
				}se(armadura == 5){
					armadura = 1
					acao_inv = "10"
					acao_mun = "1"
				}
				}
				}
			}
     		se(acao_inv == "0"){
     				acao_mun = "0"
     		}
     			se(it_ReHP >= 1){
     			para(inteiro i = HP; i < max_HP; i++){
     				escreva(n, "		", i, "/", max_HP)
     				u.aguarde(200)
     			}
     			it_ReHP = 0
     			escreva(n, "		5", "/", max_HP)
     			HP = max_HP
     			leia(ok)
     			}
     			}
     		se(sistema == "2"){
     			lutar_ini(dano, armad_eq, arma, esqu_stat, ara_stat, matou, exp, exp_up, HP, max_HP, nivel, lvl)
     			}
     		}
     	}
     		se(cod_fas == "ggttm"){
			momento = 9
			armad_eq = 1
			matou = 2
			espada = 1
			arma = 1
     		}
     		enquanto(momento == 9){
     			se(especificar != 11){
				escreva(n, "elfa: eu gostaria de agradece-lo por antes, aqui (eu te da um item misterioso, em		|   |	(mesmo você achando isso bizarro você obedece ela, colocando toda sua confiança nela\nque o item é semelhante a uma bala velha) elfa:agora você deve come-la, vai logo 	|   |	em seguida o ingere com desconforto, incredulo que vai comer isso)")
     			leia(ok)
     			escreva(n, "(Você começa a ficar mal, você não se sente bem, pelo contrário, você se sente pior do	|   |    (Derepente, você começa a se levanta, dessa vez mais leve, mais forte, com mais\nque nunca, você se sente traído por quem confiou, será o fim da aventura?)		|   |	energia e... mágico! Você nunca se sentiu assim)")
     			leia(ok)
     			escreva(n, "Você agora pode usar mana, hora de fica testa-la")
     			leia(ok)
     			escreva(n, "Você olha a vila abandonada para achar algo para testar")
     			leia(ok)
     			escreva(n, vila)
     			escreva("\n\n1-congelar as entidades		2-incendiar celeiro amaldiçoado		3-apagar o hospital possuído		(você só desbloquiara uma habilidade, escolha corretamente)\n")
     			leia(esco)
     			especificar = 11
     			se(esco == "1"){
					m_g = "1"
     			}se(esco == "2"){
					m_f = "1"
     			}se(esco == "3"){
					m_e = "1"
     			}
     			momento = 10
     			}
     		}enquanto(momento == 10){
     			se(m_g == "1"){
					escreva(n, "  _____________________\n |** /// * / _______// |\n |/*_______ /_______\\  |\n | /_______\\|#  _ : | /|\n | |// _*##||L]|*|[T|/ |\n |/|[]|*|[]||__|_|__|//|\n |__\\_|_|__|_//___////_|")
					m_eq = "1"
					leia(ok)
     			}se(m_f == "1"){
     				escreva(n, "                  ,\n      * _______   \n     __/_______\\ +\n    | |_____#| |* \n    |#(______) | )\n    |#|*____#| | (\n    |/  \\___||_|>=<")
     				m_eq = "2"
     				leia(ok)
     			}se(m_e == "1"){
     				escreva(n, "         __\n       _| *|_  \n     _|_*\\  _|_ \n    |   |__| **| \n    |[X]____[X]|\n  * |  |   /|  | -*\n   \\|__|__/*|__|")
     				m_eq = "3"
     				leia(ok)
     			}
     			momento = 11
     			especificar = 1
     		}enquanto(momento == 11){
     			escreva(n, "Não se preocupe tanto, você podera refazer todo o jogo denovo para pegar outro (:)")
     			leia(ok)
     			escreva(n, "1:inventario			2:procurar inimigos			3:conversar com a elfa			4:voltar com os dois			5:ver suas missões\n")
     			escreva("Hora de ver sua magia, insira 1\n\n")
     			leia(acao_mun)
     			enquanto(acao_mun == "1"){
     			escreva(n, " exp:", exp, "/", exp_up, "		lvl:", nivel, "		HP:", HP, "/", max_HP, "		Mp:", MP, "/", max_MP, "		*armas:espada de pedra*		equipamento:nada		itens:poção de cura(", it_ReHP, ")		magias:")
     			se(m_eq == "1"){
     				escreva("gelo		")
     			}se(m_eq == "1"){
     				escreva("fogo		")
     			}se(m_eq == "1"){
     				escreva("eletrecidade	")
     			}se(especificar == 1){
     				escreva("matou:", matou, "		dano:", dano + 2, "(+2)\n\n0:ir no mapa		1:equipar espada		-->2:magias<--			3:indisponivel			4:se curar\n")
     			}se(especificar != 1){
     				escreva("matou:", matou, "		dano:", dano + 2, "(+2)\n\n0:ir no mapa		1:equipar espada			2:magias			3:indisponivel			4:se curar\n")	
     			}
     			leia(acao_inv)
     			se(acao_inv == "2"){
     				eq_m = "10"
     				enquanto(eq_m == "10"){
     					especificar = 0
     					se(m_eq == "1"){
	     					escreva(n, " *1-fogo*		2-gelo		3-eletricidade(eu vou dar um choque no seu sistema)		4-sair\ncaso queira trocar selecione aqui\n\n")
     					}se(m_eq == "2"){
	     					escreva(n, " 1-fogo		*2-gelo*		3-eletricidade(eu vou dar um choque no seu sistema)		4-sair\ncaso queira trocar selecione aqui\n\n")
     					}se(m_eq == "3"){
	     					escreva(n, " 1-fogo		2-gelo		*3-eletricidade(eu vou dar um choque no seu sistema)*		4-sair\ncaso queira trocar selecione aqui\n\n")
     					}
	     				leia(eq_m)
	     				se(eq_m == "1"){
	     					escreva(n, "equipou a magia de fogo\n")
	     					m_eq = "1"
	     					leia(ok)
	     				}se(eq_m == "2"){
	     					escreva(n, "equipou a magia de gelo\n")
	     					m_eq = "2"
	     					leia(ok)
	     				}se(eq_m == "3"){
	     					escreva(n, "equipou a magia de eletricidade\n")
	     					m_eq = "3"
	     					leia(ok)
	     					para(inteiro i = 0; i<75; i++){
	     						escreva("###################################################################################################################################################################################################################################\n")
	     						escreva("###################################################################################################################################################################################################################################\n")
	     						escreva("###################################################################################################################################################################################################################################\n")
	     						escreva("###################################################################################################################################################################################################################################\n")
	     						escreva("###################################################################################################################################################################################################################################\n")
	     						escreva("###################################################################################################################################################################################################################################\n")
	     					}
	     					leia(ok)
	     					escreva(n, "Foi mal pelo choque ;)")
	     					leia(ok)
	     				}se(eq_m == "4"){
	     					acao_inv = "10"
	     				}se(eq_m != "1" e eq_m != "2" e eq_m != "3" e eq_m != "4"){
	     					escreva(n, "Ação indisponivel")
	     				}
     				}
     				//fim das magia
     			}
     			//continuação do inventário
     			se(especificar == 0){
     				se(acao_inv == "1"){
     					escreva(n, " '-'")
     					leia(ok)
     				}se(acao_inv == "2"){
     					escreva(n, "Por enquanto não mexera nela")
     					leia(ok)
     				}se(acao_inv == "3"){
     					escreva(n, "Por favor continue a aventura")
     				}se(acao_inv == "4"){
     					escreva(n, "Por favor continue sua aventura")
     				}se(acao_inv == "0"){
     					momento = 12
     				}
     			}
     		}
     		}se(momento == 12){
     			escreva(n, "(Você se depara com uma lojinha, você percebe que tem uma figura adentro, parecido com uma das entidades daquela casa)")
     			leia(ok)
     			escreva(n, "(Você se aproxima lentamente para pega-lo de surpresa)")
     			leia(ok)
     			escreva(n, "entidade: eu vejo que está assustado e tentando sobreviver, não se preocupe meu		|   |	uma oferta para você, algo imperdivel, eu tenho algumas poções de cura, eu posso dar\nnobre aventureiro, parece cansado, talvez sem forças, eu tive uma ideia, talvez 	|   |	um desconto de primeira venda, depois precisara pagar, ou descansar")
     			leia(ok)
     			escreva(n, "		LOJA DESBLOQUEADA")
     			leia(ok)
     			escreva(n, "		Você pode comprar equipamentos, poções, armas ou descansar para recuperar mana e vida")
     			leia(ok)
     			escreva(n, "1:inventario			2:procurar inimigos			3:conversar com a elfa			-->->->4:loja<-<-<--			5:ver suas missões")
		     	leia(acao_mun)
		     	se(acao_mun != "4"){
		     		escreva(n, "Vai sim")
		     		acao_mun = "4"
		     		leia(ok)
		     	}se(acao_mun == "4"){
		     		momento = 13
		     		loja(HP, MP, limite_hp, limite_mn, limite_flecha, compEspFerro, compEspGelo, compEspFogo, compEspEletricidade, compEspMult, compArco, compBesta, compMgf, compMge, compMfe, compMgfe, espada_ferro, espada_gelo, espada_fogo, espada_eletrica, espada_mult, max_HP, max_MP, it_fujir, it_ReHP, it_ReMN, dinheiro, n, loja_usada, nome, max_mp, esc_HP, up, ok, besta, arco, espada)
		     	missao = "Você deve falar com seus colegas"
		     	}
     		}enquanto(momento == 13){
     			escreva(n, "Você está livre agora, faça oque quiser.	Desde que estiver disponivel e/ou possivel\n")
     			leia(ok)
     			se(mapa == 0){
     				mundo_vila(morre, nome, ara_stat, esqu_stat, lvl, matou, louco, entidade, espirito, missao, armadFerro, armadPrata, armadEspectral, armad_eq, nivel, exp, exp_up, dinheiro, MP, max_MP, HP, it_ReHP, m_eq, magia_eq, dano, arma, compEspFerro, compEspGelo, compEspFogo, compEspEletricidade, compEspMult, compArco, compBesta, compMgf, compMge, compMfe, compMgfe, espada_ferro, espada_gelo, espada_fogo, espada_eletrica, espada_mult, max_HP, it_fujir, it_ReMN, besta, arco, espada, limite_flecha, n, ok, mapa, max_mp, esc_HP, up)
     			}
     		}
	     	}
  		   }se(pronto != ""){
  		   	escreva(" '-' ")
  		   	leia(ok)
  		   }
		}funcao fim_beta(){
     		cadeia n = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
     		cadeia ok
     		escreva(n, "(Nossa Jornada continuara em breve... caso o professor deixe terminar como um futuro trabalho")
			leia(ok)
     	}funcao inventario(cadeia morre, inteiro ara_stat, inteiro esqu_stat, cadeia lvl, inteiro matou, logico louco, logico entidade, logico espirito, cadeia missao, logico armadFerro, logico armadPrata, logico armadEspectral, inteiro armad_eq, inteiro nivel, inteiro exp, inteiro exp_up, inteiro dinheiro, inteiro MP, inteiro max_MP, inteiro HP, inteiro it_ReHP, cadeia m_eq, inteiro magia_eq, inteiro dano, inteiro arma, logico compEspFerro, logico compEspGelo, logico compEspFogo, logico compEspEletricidade, logico compEspMult, logico compArco, logico compBesta, logico compMgf, logico compMge, logico compMfe, logico compMgfe, inteiro espada_ferro, inteiro espada_gelo, inteiro espada_fogo, inteiro espada_eletrica, inteiro espada_mult, inteiro max_HP, inteiro it_fujir, inteiro it_ReMN, inteiro besta, inteiro arco, inteiro espada, inteiro limite_flecha, cadeia n, cadeia ok, cadeia nome, inteiro mapa, cadeia max_mp, cadeia esc_HP, cadeia up){
     		cadeia esco = ""
     		logico sair = falso
     		enquanto(sair == falso){
	     		escreva(n, "	", nome, "	matou:", matou, "	exp:", exp, "/", exp_up, "		lvl:", nivel, "		HP:")
	     		se(armad_eq == 1){
				escreva(HP + 2, "/", max_HP + 2, "(+2)")
				}senao se(armad_eq == 2){
					escreva(HP + 3, "/", max_HP + 3, "(+4)")
				}senao se(armad_eq == 3){
					escreva(HP + 4, "/", max_HP + 4, "(+5)")
				}senao se(armad_eq == 4){
					escreva(HP + 7, "/", max_HP + 7, "(+7)")
				}senao se(armad_eq != 4){
	     			escreva("		Mp:", MP, "/", max_MP, "		arma equipada:")
				}senao{
					escreva("		Mp:", MP + 5, "/", max_MP + 5, "(+5)		arma equipada:")
				}
				se(arma == 1){
					se(armad_eq == 1){
						escreva("espada de pedra(+2)(+1)")
					}senao{
						escreva("espada de pedra(+2)")
					}
				}senao se(arma == 2){
					se(armad_eq == 1){
						escreva("espada de ferro(+3)(+1)")
					}senao{
						escreva("espada de ferro(+3)")
					}
				}senao se(arma == 3){
					se(armad_eq == 1){
						escreva("espada de gelo(+3)(+1)")
					}senao{
						escreva("espada de gelo(+2)")
					}
				}senao se(arma == 4){
					se(armad_eq == 1){
						escreva("espada de fogo(+2)(+1)")
					}senao{
						escreva("espada de fogo(+2)")
					}
				}senao se(arma == 5){
					se(armad_eq == 1){
						escreva("espada de choque(+3)(+1)")
					}senao{
						escreva("espada de choque(+3)")
					}
				}senao se(arma == 6){
					se(armad_eq == 1){
						escreva("espada de universal(+5)(+1)")
					}senao{
						escreva("espada universal(+5)")
					}
				}senao se(arma == 7){
					se(armad_eq == 1){
						escreva("arco e flecha(+2)(+1)")
					}senao{
						escreva("arco e flecha(+2)")
					}
				}senao se(arma == 8){
					se(armad_eq == 1){
						escreva("besta de combate(+3)(+1)")
					}senao{
						escreva("besta de combate(+3)")
					}
				}
				escreva("	magia atual:")
				se(m_eq == "1"){
					escreva("gelo")
				}senao se(m_eq == "2"){
					escreva("fogo")
				}senao se(m_eq == "3"){
					escreva("eletricidade")
				}senao se(m_eq == "4"){
					escreva("gelo queimante")
				}senao se(m_eq == "5"){
					escreva("choque gelado")
				}senao se(m_eq == "6"){
					escreva("chama chocante")
				}senao se(m_eq == "7"){
					escreva("misterio elemental")
				}
				escreva("	armadura:")
				se(armad_eq == 1){
					escreva("armadura enferrujada")
				}senao se(armad_eq == 2){
					escreva("armadura de ferro")
				}senao se(armad_eq == 3){
					escreva("armadura amaldiçoada")
				}senao se(armad_eq == 4){
					escreva("armadura de aço")
				}
				escreva("\n\n0-sair		1-itens		2-armas		3-magias		4-armaduras\n\n")
				leia(esco)
				se(esco == "0"){
					sair = verdadeiro
					se(mapa == 0){
						mundo_vila(morre, nome, ara_stat, esqu_stat, lvl, matou, louco, entidade, espirito, missao, armadFerro, armadPrata, armadEspectral, armad_eq, nivel, exp, exp_up, dinheiro, MP, max_MP, HP, it_ReHP, m_eq, magia_eq, dano, arma, compEspFerro, compEspGelo, compEspFogo, compEspEletricidade, compEspMult, compArco, compBesta, compMgf, compMge, compMfe, compMgfe, espada_ferro, espada_gelo, espada_fogo, espada_eletrica, espada_mult, max_HP, it_fujir, it_ReMN, besta, arco, espada, limite_flecha, n, ok, mapa, max_mp, esc_HP, up)
					}
				}senao se(esco == "1"){
					enquanto(esco != "0"){
						escreva(n, "cura:", it_ReHP, "	mana:", it_ReMN, "	fujir:", it_fujir, "	flechas:", limite_flecha, "	HP:")
						se(armad_eq == 1){
							escreva(HP + 2, "/", max_HP + 2, "(+2)")
						}senao se(armad_eq == 2){
							escreva(HP + 3, "/", max_HP + 3, "(+4)")
						}senao se(armad_eq == 3){
							escreva(HP + 4, "/", max_HP + 4, "(+5)")
						}senao se(armad_eq == 4){
							escreva(HP + 7, "/", max_HP + 7, "(+7)")
						}
						escreva("	MP:", MP, "/", max_MP, "\n\n0-sair			1-se curar		2-recuperar mana")
						leia(esco)
						se(esco == "1"){
							para(inteiro i = HP; i <= max_HP; i++){
								u.aguarde(150)
								escreva(n)
								u.aguarde(150)
								escreva("					HP:", i, "/", max_HP)
							}
						HP = max_HP
						}senao se(esco == "2"){
							para(inteiro i = MP; i <= max_MP; i++){
								u.aguarde(150)
								escreva(n)
								u.aguarde(150)
								escreva("					MP:", i, "/", max_MP)
							}
						MP = max_MP
						}
					}
				}senao se(esco == "2"){
					enquanto(esco != "0"){
						se(arma == 1){
							escreva(n, "0-sair	*1-espada de pedra(+2)*	2-")
						}senao{
							escreva(n, "0-sair	1-espada de pedra(+2)	2-")
						}
						se(compEspFerro == verdadeiro){
							se(arma == 2){
								escreva("*espada de ferro(+3)*	3-")
							}senao{
								escreva("espada de ferro(+3)	3-")
							}
						}senao{
							escreva("##########	3-")
						}
						se(compEspGelo == verdadeiro){
							se(arma == 3){
								escreva("*espada de gelo(+2)*	4-")
							}senao{
								escreva("espada de gelo(+2)	4-")
							}
						}senao{
							escreva("##########	4-")
						}
						se(compEspFogo == verdadeiro){
							se(arma == 4){
								escreva("*espada de fogo(+2)*	5-")
							}senao{
								escreva("espada de fogo(+2)	5-")
							}
						}senao{
							escreva("##########	5-")
						}
						se(compEspEletricidade == verdadeiro){
							se(arma == 5){
								escreva("*espada de choque(+3)*	\n6-")
							}senao{
								escreva("espada de choque(+3)	\n6-")
							}
						}senao{
							escreva("##########\n6-")
						}
						se(compEspMult == verdadeiro){
							se(arma == 6){
								escreva("*espada suprema(+5)*	7-")
							}senao{
								escreva("espada suprema(+5)	7-")
							}
						}senao{
							escreva("??????????	7-")
						}
						se(compArco == verdadeiro){
							se(arma == 7){
								escreva("*Arco(+2)*	8-")
							}senao{
								escreva("Arco (+2)	8-")
							}
						}senao{
							escreva("##########	8-")
						}
						se(compBesta == verdadeiro){
							se(arma == 8){
								escreva("*Besta(+3)*\n\n")
							}senao{
								escreva("Besta(+3)\n\n")
							}
						}senao{
							escreva("##########\n\n")
						}
						leia(esco)
						se(esco == "1"){
							arma = 1
						}senao se(esco == "2"){
							arma = 2
						}senao se(esco == "3"){
							arma = 3
						}senao se(esco == "4"){
							arma = 4
						}senao se(esco == "5"){
							arma = 5
						}senao se(esco == "6"){
							arma = 6
						}senao se(esco == "7"){
							arma = 7
						}senao se(esco == "8"){
							arma = 8
						}senao se(esco == "9"){
							escreva(n)
							u.aguarde(1500)
							escreva(n, ".\n")
							u.aguarde(1500)
							escreva(n, "..\n")
							u.aguarde(1500)
							escreva(n, "...\n")
							u.aguarde(1500)
							escreva(n, "vá te cata\n")
						}
					}
				}senao se(esco == "3"){
					enquanto(esco != "0"){
						escreva(n, "1-")
						se(m_eq == "1"){
							escreva("*gelo*	2-")
						}senao{
							escreva("gelo	2-")
						}
						se(m_eq == "2"){
							escreva("*fogo*	3-")
						}senao{
							escreva("fogo	3-")
						}
						se(m_eq == "3"){
							escreva("*eletrica*	4-")
						}senao{
							escreva("eletrica	4-")
						}
						se(compMgf == verdadeiro){
							se(m_eq == "4"){
								escreva("*gelo queimante*	\n5-")
							}senao{
								escreva("gelo queimante	\n5-")
							}
						}senao{
							escreva("##########	\n5-")
						}
						se(compMge == verdadeiro){
							se(m_eq == "5"){
								escreva("*choque gelante*	6-")
							}senao{
								escreva("choque gelante	6-")
							}
						}senao{
							escreva("##########	6-")
						}
						se(compMfe == verdadeiro){
							se(m_eq  == "6"){
								escreva("*chama chocante*	7-")
							}senao{
								escreva("chama chocante	7-")
							}
						}senao{
							escreva("##########	7-")
						}
						se(compMgfe == verdadeiro){
							se(m_eq == "7"){
								escreva("*magia inesplicavel*")
							}senao{
								escreva("a melhor de todas")
							}
						}senao{
							escreva("???????????????")
						}
						escreva("\n")
						leia(esco)
						se(esco == "1"){
							m_eq = "1"
							escreva(n, "você equipou a magia de gelo\n")
						}senao se(esco == "2"){
							m_eq = "2"
							escreva(n, "você equipou a magia de fogo\n")
						}senao se(esco == "3"){
							m_eq = "3"
							escreva(n, "você equipou a magia de choque\n")
						}senao se(esco == "4" e compMgf){
							m_eq = "4"
							escreva(n, "você equipou a magia gelo queimante\n")
						}senao se(esco == "5" e compMge){
							m_eq = "5"
							escreva(n, "você equipou a magia eletrizante gelante\n")
						}senao se(esco == "6" e compMfe){
							m_eq = "6"
							escreva(n, "você equipou a magia chamas chocantes\n")
						}senao se(esco == "7" e compMgfe){
							m_eq = "7"
							escreva(n, "você equipou a magia sem nome definida\n")
						}
					}
				}senao se(esco == "4"){
					enquanto(esco != "0"){
						escreva(n)
						se(armad_eq == 1){
							escreva("*1-armadura enferrujada*	2-")
						}senao{
							escreva("1-armadura enferrujada	2-")
						}
						se(armadFerro == verdadeiro){
							se(armad_eq == 2){
								escreva("*armadura de ferro*	3-")
							}senao{
								escreva("armadura de ferro	3-")
							}
						}senao{
							escreva("##########	3-")
						}
						se(armadPrata == verdadeiro){
							se(armad_eq == 3){
								escreva("*armadura de prata*	4-")
							}senao{
								escreva("armadura de prata	4-")
							}
						}senao{
							escreva("##########	4-")
						}
						se(armadEspectral == verdadeiro){
							se(armad_eq == 4){
								escreva("*armadura espectral*\n")
							}senao{
								escreva("armadura espectral\n")
							}
						}senao{
							escreva("??????????\n")
						}
						leia(esco)
						se(esco == "1"){
							armad_eq = 1
							escreva(n, "Você equipou a armadura enferrujada")
							leia(ok)
						}senao se(esco == "2"){
							armad_eq = 2
							escreva(n, "Você equipou a armadura de ferro")
							leia(ok)
						}senao se(esco == "3"){
							armad_eq = 3
							escreva(n, "Você equipou a armadura de prata")
							leia(ok)
						}senao se(esco == "4"){
							armad_eq = 4
							escreva(n, "Você equipou a armadura espectral")
							leia(ok)
						}
					}
				}
     		}
     	}funcao mundo_vila(cadeia morre, cadeia nome, inteiro ara_stat, inteiro esqu_stat, cadeia lvl, inteiro matou, logico louco, logico entidade, logico espirito, cadeia missao, logico armadFerro, logico armadPrata, logico armadEspectral, inteiro armad_eq, inteiro nivel, inteiro exp, inteiro exp_up, inteiro dinheiro, inteiro MP, inteiro max_MP, inteiro HP, inteiro it_ReHP, cadeia m_eq, inteiro magia_eq, inteiro dano, inteiro arma, logico compEspFerro, logico compEspGelo, logico compEspFogo, logico compEspEletricidade, logico compEspMult, logico compArco, logico compBesta, logico compMgf, logico compMge, logico compMfe, logico compMgfe, inteiro espada_ferro, inteiro espada_gelo, inteiro espada_fogo, inteiro espada_eletrica, inteiro espada_mult, inteiro max_HP, inteiro it_fujir, inteiro it_ReMN, inteiro besta, inteiro arco, inteiro espada, inteiro limite_flecha, cadeia n, cadeia ok, inteiro mapa, cadeia max_mp, cadeia esc_HP, cadeia up){
     		cadeia esco
     		inteiro limite_hp = 0, limite_mn = 0
     		logico loja_usada = verdadeiro
     		missao = "Vá com seus colegas continuar a aventura"
     		escreva(n, "1:inventario			2:procurar inimigos			3:mapa			4:loja			5:ver suas missões")
     		leia(esco)
     		se(esco == "1"){
     			inventario(morre, ara_stat, esqu_stat, lvl, matou, louco, entidade, espirito, missao, armadFerro, armadPrata, armadEspectral, armad_eq, nivel, exp, exp_up, dinheiro, MP, max_MP, HP, it_ReHP, m_eq, magia_eq, dano, arma, compEspFerro, compEspGelo, compEspFogo, compEspEletricidade, compEspMult, compArco, compBesta, compMgf, compMge, compMfe, compMgfe, espada_ferro, espada_gelo, espada_fogo, espada_eletrica, espada_mult, max_HP, it_fujir, it_ReMN, besta, arco, espada, limite_flecha, n, ok, nome, mapa, max_mp, esc_HP, up)
     		}senao se(esco == "2"){
     			luta(morre, nome, limite_flecha, louco, entidade, espirito, dano, matou, exp, exp_up, nivel, lvl, HP, max_HP, MP, max_MP, it_fujir, it_ReHP, it_ReMN, armad_eq, arma, m_eq, dinheiro, ara_stat, esqu_stat)
     		}senao se(esco == "4"){
     			loja(HP, MP, limite_hp, limite_mn, limite_flecha, compEspFerro, compEspGelo, compEspFogo, compEspEletricidade, compEspMult, compArco, compBesta, compMgf, compMge, compMfe, compMgfe, espada_ferro, espada_gelo, espada_fogo, espada_eletrica, espada_mult, max_HP, max_MP, it_fujir, it_ReHP, it_ReMN, dinheiro, n, loja_usada, nome, max_mp, esc_HP, up, ok, besta, arco, espada)
     		}senao se(esco == "3" ou esco == "5"){
     			fim_beta()
     		}
		}funcao lutar_ini(inteiro dano, inteiro armad_eq, inteiro arma,inteiro esqu_stat, inteiro ara_stat, inteiro matou, inteiro exp, inteiro exp_up, inteiro HP, inteiro max_HP, inteiro nivel, cadeia lvl){
     		cadeia up = "\n		  __   __   _____       /\\ \n		 |  | |  | |  __ \\     /  \\ \n		 |  | |  | | |__) )   /_  _\\ \n		 |  |_|  | |  ___/     |  |\n		  \\_____/  |_|         |__|"
     		inteiro especificar
     		inteiro MP = 5
     		inteiro max_MP = 5
     		cadeia n = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
     		cadeia ok
     		inteiro dmg_f
     		inteiro lutar = 1, turno = 1
			inteiro ataq_AEC 
			inteiro inim_hp = 10, inim_dmg = 2
			inteiro dmg_espada_pedra = 2
			cadeia mid_fight
			se(armad_eq == 1){
				HP += 2
				max_HP += 2
				dano += 1
			}
     		enquanto(lutar == 1){
     	se(turno == 1){
     		escreva(n, " Você:Hp", HP, "/", max_HP, "		Mp", MP, "/", max_MP)
     		se(arma == 1){
				dmg_f = dano + dmg_espada_pedra
     		}
     		se(ara_stat == 2){
     		escreva("\naranha:", inim_hp, "/10		dano:", inim_dmg, "		aperte 1 para atacar")
     		leia(mid_fight)
     		turno = 2
     		se(mid_fight == "2"){
     			esqu_stat = 1
     			turno = 2
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(ara_stat == 1){
     		escreva("\n\naranha:", inim_hp, "		aperte 1 para atacar e 2 para inspecionar")
     		leia(mid_fight)
     		se(mid_fight == "2"){
     			ara_stat = 2
     			turno = 2
     			escreva(n, "você inspeciona a aranha")
     			leia(ok)
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(inim_hp <= 0){
			se(armad_eq == 1){
				HP -= 2
				max_HP -= 2
				dano -= 1
			}
     		matou += 1
     		escreva(n, "+5xp	")
     		leia(ok)
     		para(inteiro i = 0; i < 5; i++){
     			exp ++
     			u.aguarde(150)
     			escreva(n)
     			u.aguarde(150)
     			escreva("nivel:", nivel, "		exp:", exp, "/", exp_up)
     		}
     		se(exp >= exp_up){
     			se(exp >= exp_up){
     			se( falso == (nivel >= 11)){
     			para(inteiro i = 0; i<5; i++){
     				escreva(n)
     				u.aguarde(100)
     			escreva(lvl, up)
     			u.aguarde(100)
     			}
     			leia(ok)
     			nivel += 1
     			exp = exp % exp_up
     			se(nivel == 2){
     			max_HP += 2
     			dano += 2
     			exp_up = 15
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 3){
     			nivel = 3
    				max_HP += 2
     			dano += 2
     			exp_up = 25
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 4){
     			nivel = 4
     			dano += 2
     			max_HP += 2
     			exp_up = 35
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 5){
     			nivel = 5
     			max_HP += 2
     			dano += 2
     			exp_up = 50
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
    				}se(nivel == 6){
    				nivel = 6
    				max_HP += 2
     			dano += 2
    				exp_up = 65
    				escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
    				}se(nivel == 7){
    				nivel = 7
    				max_HP +=2
    				dano += 2
    				exp_up = 80
    				escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 8){
    				nivel = 8
    				max_HP += 2
     			dano += 2
     			exp_up = 100
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			}se(nivel == 9 ){
     			nivel = 9
     			max_HP += 2
     			dano += 2
     			exp_up = 125
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			}se(nivel == 10 ){
     			nivel = 10
     			max_HP += 2
     			dano += 2
     			exp_up = 150
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			}se(nivel == 11 ){
     			nivel = 11
     			max_HP += 2
     			dano += 2
     			exp_up = 999999999
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			escreva(n, "Nível máximo alcansado")
     			leia(ok)
     			}
     		}se(nivel >= 11){
     			escreva(n, "Nivel mámimo alcansado por enquanto")
     			leia(ok)
     		}
     	}
     	}
     	}se(inim_hp > 0){
     		se(turno == 2){
     	
     		ataq_AEC = u.sorteia(1, 10)
     		se(ataq_AEC <= 3){
     			escreva(n, "A aranha errou")
     			leia(ok)
     		}se(ataq_AEC >=4 e ataq_AEC <=8){
     			escreva(n, "Você levou ", inim_dmg, " de dano")
     			HP -= 2
     			leia(ok)
     		}se(ataq_AEC >=9){
     			escreva("\n Dano crítico! ", inim_dmg, "(+1)")
     			HP -= 3
     			leia(ok)
     		}
     		turno = 1
     		}
     		}
     		}
     		}
     	}funcao loja(inteiro HP, inteiro MP, inteiro limite_hp, inteiro limite_mn, inteiro limite_flecha, logico compEspFerro, logico compEspGelo, logico compEspFogo, logico compEspEletricidade, logico compEspMult, logico compArco, logico compBesta, logico compMgf, logico compMge, logico compMfe, logico compMgfe, inteiro espada_ferro, inteiro espada_gelo, inteiro espada_fogo, inteiro espada_eletrica, inteiro espada_mult, inteiro max_HP, inteiro max_MP, inteiro it_fujir, inteiro it_ReHP, inteiro it_ReMN, inteiro dinheiro, cadeia n, logico loja_usada, cadeia nome, cadeia max_mp, cadeia esc_HP, cadeia up, cadeia ok, inteiro besta, inteiro arco, inteiro espada){
     		cadeia esco = ""
     		logico sair = falso
     		enquanto(sair == falso){
	     		se(loja_usada == falso){
	     			escreva(n, "	Seja bem-vindo aventureiro de nome ", nome, ". Não me pergunte como sei seu nome, só pegue sua nova poção")
	     			leia(ok)
	     			escreva(n, "	Você pegou uma poção de cura")
	     			it_ReHP ++
	     			loja_usada = verdadeiro
	     			leia(ok)
	     			escreva(n, "	Muito bem ", nome, ". Agora refarei mei dialogo aqui no jogo")
	     			leia(ok)
	     		}se(loja_usada == verdadeiro){
	     			escreva(n, "	Bem-vindo aventuriro, faça suas compras aqui 			dinheiro:", dinheiro, "\n0-sair		1-poções		2-espadas		3-arquearia		4-melhorias de magia\n")
	     			leia(esco)
	     		}se(esco == "0"){
	     			escreva(n, "Até breve")
	     			sair = verdadeiro
	     			leia(ok)
	     			escreva(n)
	     		}senao se(esco == "1"){
	     			escreva(n, "	Pegue uma delas								dinheiro:", dinheiro, "\n0-Sair		1-Cura10$		2-Restaura mana10$		3-Mais HP20$		4-Mais mana20$	5-Fujir invisivel10$ ")
	     			leia(esco)
	     			se(esco == "1"){
	     				se(dinheiro >= 10){
	     					dinheiro -= 10
	     					it_ReHP ++
	     				}senao{
	     					escreva(n, "Você não tem dinheiro suficiente")
	     					leia(ok)
	     				}
	     			}se(esco == "2"){
	     				se(dinheiro >= 10){
	     					dinheiro -= 10
	     					it_ReMN ++
	     				}senao{
	     					escreva(n, "Você não tem dinheiro suficiente")
	     					leia(ok)
	     				}
	     			}se(esco == "3"){
	     				se(dinheiro >= 20){
	     					se(limite_hp <= 5){
			     				escreva(n, "Vendedor:Ótima escolha, use agora em minha frente, nunca testei(pq morri) e adoro ver o efeito nos outros\n")
			     				leia(ok)
			     				para(inteiro i = 0; i<5; i++){
			     					escreva(n)
			     					u.aguarde(150)
			     					escreva(esc_HP, up, max_HP, "-->", max_HP + 2)
			     					u.aguarde(150)
			     				}
			     				max_HP += 2
			     				HP += 2
			     				leia(ok)
		     				}senao{
		     					escreva(n, "Vendedor:Perdoe-me mas não posso te deixar imortal, senão matara todos meus clientes em brigas")
		     					leia(ok)
		     				}
	     				}senao{
		     				escreva(n, "Perdão mas não há poção sem dinheiro\n")
		     				leia(ok)
		     			}
	     			}se(esco == "4"){
	     				se(dinheiro >= 20){
	     					se(limite_mn <= 5){
			     				escreva(n, "Vendedor:Ótima escolha, use agora em minha frente, nunca testei(pq não sou mago) e adoro ver o efeito nos outros\n")
			     				leia(ok)
			     				para(inteiro i = 0; i<5; i++){
			     					escreva(n)
			     					u.aguarde(150)
			     					escreva(max_mp, up, max_MP, "-->", max_MP + 2)
			     					u.aguarde(150)
			     				}
			     				max_MP += 2
			     				MP += 2
			     				leia(ok)
	     					}senao{
	     						escreva(n, "Vendedor:Perdão, mas você usou muitas poções de melhoria de Mana\n")
	     					}
	     				}senao{
	     					escreva(n, "Perdão mas não há poção sem dinheiro\n")
	     					leia(ok)
	     				}
	     			}senao se(esco == "5"){
	     				se(dinheiro >= 10){
	     					se(it_fujir <= 4){
	     						it_fujir ++
	     						dinheiro -= 10
	     						escreva(n, "Vendedor:Você é bem medroso hein\n")
	     						leia(ok)
	     					}senao{
	     						escreva(n, "Vendedor:Eu não tolero covardes como você\n")
	     						leia(ok)
	     					}
	     				}senao{
	     					escreva(n, "Vendedor:Vá ter juizo, aqui não aceito viado									com v mesmo\n")
	     					leia(ok)
	     				}
	     			}
	     		}senao se(esco == "2"){
	     			escreva(n, "	Faça sua escolha								dinheiro:", dinheiro, "\n0-sair	1-espada de ferro 20$	2-espada de gelo 30$	3-espada de fogo 30$	4-espada eletrica 40$\n					5-espada multi elemental 75$\n")
	     			leia(esco)
	     			se(esco == "1"){
	     				se(dinheiro >= 20){
	     					se(compEspFerro == falso){
		     					dinheiro -= 20
		     					espada_ferro = 1
		     					escreva(n, "	Vendedor:Você comprou minha espada de ferro, escolha boa no começo\n")
		     					compEspFerro = verdadeiro
		     					leia(ok)
	     					}senao{
	     						escreva(n, "	Vendedor: Não é porque você comprou uma vez que ainda tenho\n")
	     					}
	     				}senao{
	     					escreva(n, "Pobre\n")
	     					leia(ok)
	     				}
	     			}se(esco == "2"){
	     				se(dinheiro >= 30){
	     					se(compEspGelo == falso){
	     						dinheiro -= 30
	     						espada_gelo = 1
		     					escreva(n, "Vendedor: Ela é boa, ótima contra meu time, muito fria, prefiro as mais quentes hehe\n")
		     					compEspGelo = verdadeiro
		     					leia(ok)
	     					}senao{
	     						escreva(n, "Vendedor:Por favor não tente comprar as mesmas armas\n")
	     					}
	     				}senao{
	     					escreva(n, "Vendedor:Por favor só tente comprar quando tiver dinheiro\n")
	     				}
	     			}se(esco == "3"){
	     				se(dinheiro >= 30){
		     				se(compEspFogo == falso){
		     					dinheiro -= 30
		     					espada_fogo = 1
		     					escreva(n, "Vendedor:Escolha boa, ela causa dano ao longo do tempo(e é meu estilo hihihi)\n")
		     					compEspFogo = verdadeiro
		     					leia(ok)
		     				}senao{
		     					escreva(n, "Vendedor:Por favor, eu sei que você sabe que não é possivel comprar de novo\n")
		     					leia(ok)
		     				}
	     				}senao{
	     					escreva(n, "Vendedor:Ninguem aqui é jumento, eu espero(encara o local que seria a câmera do jogo)\n")
	     					leia(ok)
	     				}
	     			}se(esco == "4"){
	     				se(dinheiro >= 40){
	     					se(compEspEletricidade == falso){
	     						dinheiro -= 40
	     						espada_eletrica = 1
	     						escreva(n, "Vendedor:A melhor das esolhas, ao atacar o inimigo causa um dano a menos, além\n de que se o inimigo der um dano crítico, ele será paralisado por uma rodada\n")
	     						compEspEletricidade = verdadeiro
	     						leia(ok)
	     					}senao{
	     						escreva(n, "Vendedor: Você acha mesmo que eu venderia oura(te encara pelas letras já que não há câmera\n")
	     						leia(ok)
	     					}
	     				}senao{
	     					escreva(n, "Vendedor:hmmmmmmmmmmmm (olho torto para seu personagem\n")
	     					leia(ok)
	     				}
	     			}se(esco == "5"){
	     				se(dinheiro >= 75){
	     					se(compEspMult == falso){
	     						dinheiro -= 75
	     						espada_mult = 1
	     						escreva(n, "Vendedor:Essa é a espada das espadas, ela contem o efeito de todas as armas \n juntamente de suas fraquezas, você nâo poderá descobrir ao equipar\n 'escolhido', você deve lembrar delas, lembre-se disso\n")
	     						compEspMult = verdadeiro
	     						leia(ok)
	     					}senao{
	     						escreva(n, "Vendedor:Jumento de jogador\n")
	     						leia(ok)
	     					}
	     				}senao{
	     					escreva(n, "Vendedor:Por favor não me provoque\n")
	     					leia(ok)
	     				}
	     			}
	     		}senao se(esco == "3"){
	     			escreva(n, "	Faça sua escolha								dinheiro:", dinheiro, "\n0-sair		1-arco15$		2-besta20$	3-flecha2$\n")
	     			leia(esco)
	     			se(esco == "1"){
	     				se(dinheiro >= 15){
	     					se(compArco == falso){
	     						compArco = verdadeiro
	     						dinheiro -= 15
	     						arco = 1
	     						escreva(n, "Vendedor:Esse é moderato, dá 1 de dano adicional (a espada de pedra 2), porém \na chance de crítico é duas vezes maior que uma espada\n")
	     						leia(ok)
	     					}senao{
	     						escreva(n, "Vendedor:Pare de me fazer repedir\n")
	     						leia(ok)
	     					}
	     				}senao{
	     					escreva(n, "Vendedor:Se você não tem dinheiro para que tentar comprar?\n")
	     					leia(ok)
	     				}
	     			}se(esco == "2"){
	     				se(dinheiro >= 20){
	     					se(compBesta == falso){
	     						dinheiro -= 20
	     						compBesta = verdadeiro
	     						escreva(n, "Vendedor ok, a besta tem o mesmo dano da espada de pedra, porém 1.5x mais chance de crítico\n")
	     						leia(ok)
	     					}senao{
	     						escreva(n, "Vendedor:Você é tão burro, que pergunta pro sasuke quem é o irmão dele\n(e quero dizer depois do boruto)\n")
	     						leia(ok)
	     					}
	     				}senao{
	     					escreva(n, "Vendedor:Saia pobre\n")
	     					leia(ok)
	     				}
	     			}se(esco == "3"){
	     				se(dinheiro >= 2){
	     					se(limite_flecha <= 20){
	     						limite_flecha += 5
	     						escreva(n, "Vendedor:Aqui suas 5 flechas, seu limite é 25, se não souber usa-las, vsf\n")
	     						leia(ok)
	     					}senao{
	     						escreva(n, "Vendedor:Desculpe, mas está no limite ou passará ao comprar\n")
	     						leia(ok)
	     					}
	     				}senao{
	     					escreva(n, "Vendedor:Se você não pode gastar duas moedas oque você tá fazendo aqui!? Jogador pobre do k7\n")
	     					leia(ok)
	     				}
	     			}
	     		}senao se(esco == "4"){
	     			escreva(n, "	Muito bem, aqui você usa várias magias ao mesmo tempo	dinheiro:", dinheiro, "\n0-sair	1-amuleto de gelo que queima30$	2-amuleto de gelo eletrizande$30	3-amuleto flamejante eletrico30$  \n4-amuleto supremo100$")
	     			leia(esco)
	     			se(esco == "1"){
	     				se(dinheiro >= 30){
		     				se(compMgf == falso){
		     					dinheiro -= 30
		     					compMgf = verdadeiro
		     					escreva(n, "Vendedor:Boa sorte com os inimigos fracos enquanto levam dano\n")
		     					leia(ok)
		     				}
	     				}
	     			}
	     		}
     		}
     	}funcao luta(cadeia morre, cadeia nome, inteiro limite_flecha, logico louco, logico entidade, logico espirito, inteiro dano, inteiro matou, inteiro exp, inteiro exp_up, inteiro nivel, cadeia lvl, inteiro HP, inteiro max_HP, inteiro MP, inteiro max_MP, inteiro it_fujir, inteiro it_ReHP, inteiro it_ReMN, inteiro armad_eq, inteiro arma, cadeia m_eq, inteiro dinheiro, inteiro ara_stat, inteiro esqu_stat){
     		cadeia up = "\n		  __   __   _____       /\\ \n		 |  | |  | |  __ \\     /  \\ \n		 |  | |  | | |__) )   /_  _\\ \n		 |  |_|  | |  ___/     |  |\n		  \\_____/  |_|         |__|"
     		cadeia n = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
     		cadeia ok
     		logico efeito_gelo = falso
     		logico efeito_fogo = falso
     		logico efeito_choque = falso
     		inteiro ini_hp
     		inteiro ini_dmg
     		inteiro inimigo
     		inteiro fix = dano
     		inteiro fix_hp = HP
     		inteiro fix_Hp = max_HP
     		inteiro lutar = 1, turno = 1
			inteiro ataq_AEC
			cadeia mid_fight
			se(arma == 1){
				dano += 2
			}senao se(arma == 2){
				dano += 3
			}senao se(arma == 3 ){
				dano += 2
			}senao se(arma == 4 ){
				dano += 2
			}senao se(arma == 5 ){
				dano += 2
			}senao se(arma == 6 ){
				dano += 5
			}senao se(arma == 7 ){
				dano += 2
			}senao se(arma == 8 ){
				dano += 3
			}
			se(armad_eq == 1){
				dano += 1
				HP += 2
				max_HP += 2
			}senao se(armad_eq == 2){
				HP += 4
				max_HP += 4
			}senao se(armad_eq == 3){
				HP += 5
				max_HP += 5
			}senao se(armad_eq == 4){
				HP += 7
				max_HP += 7
				MP += 5
				max_MP += 5
			}

			//para depois
			//se(armad_eq == 1){
				//dano -= 1
				//HP -= 2
				//max_HP -= 2
			//}senao se(armad_eq == 2){
				//HP -= 4
				//max_HP -= 4
			//}senao se(armad_eq == 3){
				//HP -= 5
				//max_HP -= 5
			//}senao se(armad_eq == 4){
				//HP -= 7
				//max_HP -= 7
				//MP -= 5
				//max_MP -= 5
			//}
			inimigo = u.sorteia(5, 10)
			se(inimigo >= 1 e inimigo <= 2){
				ini_hp = 8
				ini_dmg = 4
				enquanto(lutar == 1){
					escreva(n, "Você encontrou um esqueleto")
					leia(ok)
					enquanto(turno == 1){
						escreva(n, "Você	HP:", HP, "/", max_HP, "	MP:", MP, "/", max_MP, "	dano:", dano, "	magia equipada:")
						se(m_eq == "1"){
							escreva("gelo")
						}senao se(m_eq == "2"){
							escreva("fogo")
						}senao se(m_eq == "3"){
							escreva("choque")
						}senao se(m_eq == "4"){
							escreva("gelo queimante")
						}senao se(m_eq == "5"){
							escreva("eletrizante gelante")
						}senao se(m_eq == "6"){
							escreva("chama chocante")
						}senao se(m_eq == "7"){
							escreva("magia multiversal")
						}
						escreva("		arma:")
						se(arma == 1){
							escreva("espada de pedra(+2)")
						}senao se(arma == 2){
							escreva("espada de ferro(+3)")
						}senao se(arma == 3){
							escreva("espada de gelo(+2)")
						}senao se(arma == 4){
							escreva("espada de fogo(+2)")
						}senao se(arma == 5){
							escreva("espada eletrica(+3)")
						}senao se(arma == 6){
							escreva("espada mista(+5)")
						}senao se(arma == 7){
							escreva("arco e flecha(+2)")
						}senao se (arma == 8){
							escreva("besta de combate(+3)")
						}
						escreva("\n")
						se(esqu_stat == 1){
							escreva("esqueleto	HP:8/8	fraqueza:gelo	ponto forte:eletricidade	dano:4	crítico:+2")
						}senao{
							escreva("esqueleto	HP:???	fraqueza:???	ponto forte:???	dano:??	crítico:??")
						}
						escreva("\n\n1-fujir(", it_fujir, ")	2-usar arma	3-usar magia	4-liberar dados")
					}
				}
			}senao se(inimigo >= 3 e inimigo <= 4){
				ini_hp = 7
				ini_dmg = 3
				enquanto(lutar == 1){
					escreva(n, "Você encontrou uma aranha")
					leia(ok)
					enquanto(turno == 1){
						escreva(n, "Você	HP:", HP, "/", max_HP, "	MP:", MP, "/", max_MP, "	dano:", dano, "	magia equipada:")
						se(m_eq == "1"){
							escreva("gelo")
						}senao se(m_eq == "2"){
							escreva("fogo")
						}senao se(m_eq == "3"){
							escreva("choque")
						}senao se(m_eq == "4"){
							escreva("gelo queimante")
						}senao se(m_eq == "5"){
							escreva("eletrizante gelante")
						}senao se(m_eq == "6"){
							escreva("chama chocante")
						}senao se(m_eq == "7"){
							escreva("magia multiversal")
						}
						escreva("		arma:")
						se(arma == 1){
							escreva("espada de pedra(+2)")
						}senao se(arma == 2){
							escreva("espada de ferro(+3)")
						}senao se(arma == 3){
							escreva("espada de gelo(+2)")
						}senao se(arma == 4){
							escreva("espada de fogo(+2)")
						}senao se(arma == 5){
							escreva("espada eletrica(+3)")
						}senao se(arma == 6){
							escreva("espada mista(+5)")
						}senao se(arma == 7){
							escreva("arco e flecha(+2)")
						}senao se (arma == 8){
							escreva("besta de combate(+3)")
						}
						escreva("\n")
						se(ara_stat == 1){
							escreva("aranha	HP:7/7	fraqueza:fogo	ponto forte:gelo	dano:3	crítico:+2")
						}senao{
							escreva("aranha	HP:???	fraqueza:???	ponto forte:???	dano:??	crítico:??")
						}
						escreva("\n\n1-fujir(", it_fujir, ")	2-usar arma	3-usar magia	4-liberar dados")
					}
				}
			}senao se(inimigo >= 5 e inimigo <= 6){
				ini_hp = 4
				ini_dmg = 5
				enquanto(lutar == 1){
					escreva(n, "Você encontrou um maluco")
					leia(ok)
					enquanto(turno == 1){
						se(HP >= 1){
							escreva(n, "Você	HP:", HP, "/", max_HP, "	MP:", MP, "/", max_MP, "	dano:", dano, "	magia equipada:")
							se(m_eq == "1"){
								escreva("gelo")
							}senao se(m_eq == "2"){
								escreva("fogo")
							}senao se(m_eq == "3"){
								escreva("choque")
							}senao se(m_eq == "4"){
								escreva("gelo queimante")
							}senao se(m_eq == "5"){
								escreva("eletrizante gelante")
							}senao se(m_eq == "6"){
								escreva("chama chocante")
							}senao se(m_eq == "7"){
								escreva("magia multiversal")
							}
							escreva("		arma:")
							se(arma == 1){
								escreva("espada de pedra(+3)")
							}senao se(arma == 2){
								escreva("espada de ferro(+4)")
							}senao se(arma == 3){
								escreva("espada de gelo(+3)")
							}senao se(arma == 4){
								escreva("espada de fogo(+5)")
							}senao se(arma == 5){
								escreva("espada eletrica(+4)")
							}senao se(arma == 6){
								escreva("espada mista(+7)")
							}senao se(arma == 7){
								escreva("arco e flecha(+2)")
							}senao se (arma == 8){
								escreva("besta de combate(+3)")
							}
							escreva("\n")
							se(louco == verdadeiro){
								escreva("maluco	HP:4/4	fraqueza:corpo a corpo, fogo	ponto forte:nenhum	dano:5	crítico:+3")
							}senao{
								escreva("maluco	HP:???	fraqueza:???	ponto forte:???	dano:??	crítico:??")
							}
							escreva("\n\n1-fujir(", it_fujir, ")	2-usar arma	3-usar magia	4-liberar dados")
							leia(mid_fight)
							se(mid_fight == "2"){
								ataq_AEC = u.sorteia(1, 5)
								se(arma == 7){
									ataq_AEC += 1
								}
								se(ataq_AEC == 1){
									se(arma >= 1 e arma <= 6){
										ini_hp -= (dano - 2)
										escreva(n, "você quase erra(-2), sem efeitos e sem bonus")
										leia(ok)
										turno = 2
									}
								}senao se(ataq_AEC >=2 e ataq_AEC <= 4){
									se((arma >= 1 e arma <= 3) ou arma == 5){
										ini_hp -= (dano + 1)
										escreva(n, "efeito aplicado e mais dano(+2)")
										leia(ok)
									}senao se(arma == 4){
										ini_hp -= (dano + 3)
										escreva(n, "todas as frequezas (+3)")
										leia(ok)
										turno = 2
									}senao se(arma >= 7 e arma <= 8){
										ini_hp -= dano
										escreva(n, "você ataca com")
										leia(ok)
										turno = 2
									}senao se(arma == 6){
										ini_hp -= (dano + 2)
										escreva(n, "todas as fraquezas, porém, não só elas (+2)")
										leia(ok)
										turno = 2
									}
									se(arma == 3){
										efeito_gelo = verdadeiro
									}senao se(arma == 4){
										efeito_fogo = verdadeiro
									}senao se(arma == 5){
										efeito_choque = verdadeiro
									}senao se(arma == 6){
										efeito_gelo = verdadeiro
										efeito_fogo = verdadeiro
										efeito_choque = verdadeiro
									}
									turno = 2
								}senao se(ataq_AEC >= 5){
									se((arma >= 1 e arma <= 3) ou arma == 5){
										ini_hp -= (dano + 4)
										escreva(n, "efeito aplicado e mais dano(+2) e crítico (+3)")
										leia(ok)
									}senao se(arma == 4){
										ini_hp -= (dano +6)
										escreva(n, "todas as frequezas (+3) e crítico (+3)")
										leia(ok)
										turno = 2
									}senao se(arma == 8){
										ini_hp -= (dano + 5)
										escreva(n, "você ataca com a besta em um ataque crítico(+5)")
										leia(ok)
										turno = 2
									}senao se(arma == 6){
										ini_hp -= (dano + 2)
										escreva(n, "todas as fraquezas, porém, não só elas (+2) e crítico (+3)")
										leia(ok)
										turno = 2
									}
									se(arma == 3){
										efeito_gelo = verdadeiro
									}senao se(arma == 4){
										efeito_fogo = verdadeiro
									}senao se(arma == 5){
										efeito_choque = verdadeiro
									}senao se(arma == 6){
										efeito_gelo = verdadeiro
										efeito_fogo = verdadeiro
										efeito_choque = verdadeiro
									}
									turno = 2
									se(arma == 8){
										ini_hp -= (dano + 5)
									}senao{
										ini_hp -= (dano + 2)
									}
									escreva(n, "Dano crítico (+3) e menos dano(-1)")
									leia(ok)
								}
							}senao se(mid_fight == "3"){
								turno = 2
								se(m_eq == "1"){
									se(MP >= 4){
										efeito_gelo = verdadeiro
										ini_hp -= 4
										MP -= 4
										escreva(n, "O inimigo causara 3 ponto a menos de dano, você causou 4 de dano, -4 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "2"){
									se(MP >= 4){
										efeito_fogo = verdadeiro
										ini_hp -= 4
										MP -= 4
										escreva(n, "O oponente leva 1 ponto de dano por turno, você causou 4 de dano, -4 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "3"){
									se(MP >= 4){
										efeito_choque = verdadeiro
										ini_hp -= 4
										MP -= 4
										escreva(n, "O inimigo não será capaz de realizar ataques críticos , você causou 4 de dano, -4 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}
								se(m_eq == "4"){
									se(MP >= 8){
										efeito_gelo = verdadeiro
										efeito_fogo = verdadeiro
										ini_hp -= 4
										escreva(n, "O oponente leva 1 ponto de dano por turno, o inimigo causara 3 ponto a \nmenos de dano, você causou 4 de dano, -8 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "5"){
									se(MP >= 8){
										efeito_gelo = verdadeiro
										efeito_choque = verdadeiro
										ini_hp -= 4
										escreva(n, "O inimigo causara 3 ponto a menos de dano, o inimigo não será capaz de \nrealizar ataques críticos, você causou 4 de dano -8 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "6"){
									se(MP >= 8){
										efeito_fogo = verdadeiro
										efeito_choque = verdadeiro
										ini_hp -= 4
										escreva(n, "O oponente leva 1 ponto de dano por turno, o inimigo não será capaz de \nrealizar ataques críticos, você causou 4 de dano")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "7"){
									se(MP >= 15){
										efeito_gelo = verdadeiro
										efeito_fogo = verdadeiro
										efeito_choque = verdadeiro
										ini_hp -= 6
										escreva(n, "O oponente leva 1 de dano por turno, causara 3 ponto a menos de dano, não \nserá capaz de realizar ataques críticos, você causou 6 de dano")
										leia(ok)
									}senao{
										escreva(n, "Você deve ter curtido a poeira até demais")
										leia(ok)
									}
								}
							}senao se(mid_fight == "4"){
								turno = 2
								se(espirito == falso){
									louco = verdadeiro
									escreva(n, "Você descobriu tudo usando o 'painel' do inicio, fim de turno")
									leia(ok)
								}senao{
									escreva(n, "Meus Parabens!!! Você acabou de prede o turno!!!")
									leia(ok)
								}
							}
						}
					}se(turno == 2){
						turno = 1
						MP += 3
						se(MP >= max_MP){
							MP = max_MP
						}
						ataq_AEC = u.sorteia(1, 5)
						escreva(n, "Turno do inimigo")
						leia(ok)
						se(efeito_fogo == verdadeiro){
							ini_hp -= 1
							escreva(n, "HP:", ini_hp, "/9")
							leia(ok)
						}
						se(ini_hp >= 1){
							se(ataq_AEC == 1){
								escreva(n, "Faustão:Errlooo")
								leia(ok)
							}senao se(ataq_AEC >= 2 e ataq_AEC <= 4){
								se(efeito_gelo == verdadeiro){
									ini_dmg -= 3
								}
								se(ini_dmg <= 0){
									escreva(n, "coitado, 0 de dano, vamo pula da ponte para alegrar ele(a)?")
									leia(ok)
								}senao{
									HP -= ini_dmg
									escreva(n, "Você: HP:", HP + ini_dmg, "/", max_HP, " --> ", HP, "/", max_HP)
									leia(ok)
								}
							}senao se(ataq_AEC == 5){
								se(efeito_choque == verdadeiro){
									escreva(n, "Crítico, eu vou dar um choque no seu sistema -0 hp")
									leia(ok)
								}senao se(efeito_gelo == verdadeiro){
									ini_dmg -= 3
									escreva(n, "Crítico gelito	HP:", HP, "/", max_HP)
									leia(ok)
								}senao{
									escreva(n, "Luto pulque quis, num tem calantia se fudeu")
									leia(ok)
								}
							}
						}
					}	
				}
			}senao se(inimigo >= 7 e inimigo <= 8){
				ini_hp = 10
				ini_dmg = 4
				enquanto(lutar == 1){
					escreva(n, "Você encontrou uma entidade")
					leia(ok)
					enquanto(turno == 1){
						se(HP >= 1){
							escreva(n, "Você	HP:", HP, "/", max_HP, "	MP:", MP, "/", max_MP, "	dano:", dano, "	magia equipada:")
							se(m_eq == "1"){
								escreva("gelo(+2)")
							}senao se(m_eq == "2"){
								escreva("fogo")
							}senao se(m_eq == "3"){
								escreva("choque")
							}senao se(m_eq == "4"){
								escreva("gelo queimante")
							}senao se(m_eq == "5"){
								escreva("eletrizante gelante(+1)")
							}senao se(m_eq == "6"){
								escreva("chama chocante")
							}senao se(m_eq == "7"){
								escreva("magia multiversal(+1)")
							}
							escreva("		arma:")
							se(arma == 1){
								escreva("espada de pedra(+2)")
							}senao se(arma == 2){
								escreva("espada de ferro(+3)")
							}senao se(arma == 3){
								escreva("espada de gelo(+3)")
							}senao se(arma == 4){
								escreva("espada de fogo(+2)")
							}senao se(arma == 5){
								escreva("espada eletrica(+3)")
							}senao se(arma == 6){
								escreva("espada mista(+6)")
							}senao se(arma == 7){
								escreva("arco e flecha(+2)")
							}senao se (arma == 8){
								escreva("besta de combate(+3)")
							}
							escreva("\n")
							se(entidade == verdadeiro){
								escreva("espirito	HP:10/10	fraqueza:gelo	ponto forte:corpo a corpo	dano:3	crítico:+2")
							}senao{
								escreva("espirito	HP:???	fraqueza:???	ponto forte:???	dano:??	crítico:??")
							}
							escreva("\n\n1-fujir(", it_fujir, ")	2-usar arma	3-usar magia	4-liberar dados")
							leia(mid_fight)
							se(mid_fight == "2"){
								ataq_AEC = u.sorteia(1, 5)
								se(arma == 7){
									ataq_AEC += 1
								}
								se(ataq_AEC == 1){
									ini_hp -= (dano - 3)
									escreva(n, "você quase erra(-2), sem efeitos e menos dano(-1)")
									leia(ok)
									turno = 2
								}senao se(ataq_AEC >=2 e ataq_AEC <= 4){
									ini_hp -= (dano - 1)
									escreva(n, "efeito aplicado e menos dano(-1)")
									leia(ok)
									se(arma == 3){
										efeito_gelo = verdadeiro
									}senao se(arma == 4){
										efeito_fogo = verdadeiro
									}senao se(arma == 5){
										efeito_choque = verdadeiro
									}senao se(arma == 6){
										efeito_gelo = verdadeiro
										efeito_fogo = verdadeiro
										efeito_choque = verdadeiro
									}
									turno = 2
								}senao se(ataq_AEC >= 5){
									se(arma == 8){
										ini_hp -= (dano + 5)
									}senao{
										ini_hp -= (dano + 2)
									}
									escreva(n, "Dano crítico (+3) e menos dano(-1)")
									leia(ok)
								}
							}senao se(mid_fight == "3"){
								turno = 2
								se(m_eq == "1"){
									se(MP >= 4){
										efeito_gelo = verdadeiro
										ini_hp -= 6
										MP -= 4
										escreva(n, "O inimigo causara 3 ponto a menos de dano, você causou 6(+2) de dano, -4 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "2"){
									se(MP >= 4){
										efeito_fogo = verdadeiro
										ini_hp -= 4
										MP -= 4
										escreva(n, "O oponente leva 1 ponto de dano por turno, você causou 4 de dano, -4 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "3"){
									se(MP >= 4){
										efeito_choque = verdadeiro
										ini_hp -= 4
										MP -= 4
										escreva(n, "O inimigo não será capaz de realizar ataques críticos , você causou 4 de dano, -4 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}
								se(m_eq == "4"){
									se(MP >= 8){
										efeito_gelo = verdadeiro
										efeito_fogo = verdadeiro
										ini_hp -= 4
										escreva(n, "O oponente leva 1 ponto de dano por turno, o inimigo causara 3 ponto a \nmenos de dano, você causou 4 de dano, -8 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "5"){
									se(MP >= 8){
										efeito_gelo = verdadeiro
										efeito_choque = verdadeiro
										ini_hp -= 4
										escreva(n, "O inimigo causara 3 ponto a menos de dano, o inimigo não será capaz de \nrealizar ataques críticos, você causou 4 de dano -8 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "6"){
									se(MP >= 8){
										efeito_fogo = verdadeiro
										efeito_choque = verdadeiro
										ini_hp -= 4
										escreva(n, "O oponente leva 1 ponto de dano por turno, o inimigo não será capaz de \nrealizar ataques críticos, você causou 4 de dano")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "7"){
									se(MP >= 15){
										efeito_gelo = verdadeiro
										efeito_fogo = verdadeiro
										efeito_choque = verdadeiro
										ini_hp -= 6
										escreva(n, "O oponente leva 1 de dano por turno, causara 3 ponto a menos de dano, não \nserá capaz de realizar ataques críticos, você causou 6 de dano")
										leia(ok)
									}senao{
										escreva(n, "Você deve ter curtido a poeira até demais")
										leia(ok)
									}
								}
							}senao se(mid_fight == "4"){
								turno = 2
								se(espirito == falso){
									espirito = verdadeiro
									escreva(n, "Você descobriu tudo usando o 'painel' do inicio, fim de turno")
									leia(ok)
								}senao{
									escreva(n, "Meus Parabens!!! Você acabou de prede o turno!!!")
									leia(ok)
								}
							}
						}senao{
							escreva(n, "E assim o otário morre ")
							u.aguarde(1000)
							escreva(".")
							u.aguarde(1000)
							escreva(".")
							u.aguarde(1000)
							escreva(".")
							u.aguarde(1000)
							escreva(" kkkkkkkkkkkkkkkkkkkkkkkkkkkkkk")
							leia(ok)
							morreu(n, nome, morre)
						}
					}se(turno == 2){
						turno = 1
						MP += 3
						se(MP >= max_MP){
							MP = max_MP
						}
						ataq_AEC = u.sorteia(1, 5)
						escreva(n, "Turno do inimigo")
						leia(ok)
						se(efeito_fogo == verdadeiro){
							ini_hp -= 1
							escreva(n, "HP:", ini_hp, "/9")
							leia(ok)
						}
						se(ini_hp >= 1){
							se(ataq_AEC == 1){
								escreva(n, "Faustão:Errlooo")
								leia(ok)
							}senao se(ataq_AEC >= 2 e ataq_AEC <= 4){
								se(efeito_gelo == verdadeiro){
									ini_dmg -= 3
								}
								se(ini_dmg <= 0){
									escreva(n, "coitado, 0 de dano, vamo pula da ponte para alegrar ele(a)?")
									leia(ok)
								}senao{
									HP -= ini_dmg
									escreva(n, "Você: HP:", HP + ini_dmg, "/", max_HP, " --> ", HP, "/", max_HP)
									leia(ok)
								}
							}senao se(ataq_AEC == 5){
								se(efeito_choque == verdadeiro){
									escreva(n, "Crítico, eu vou dar um choque no seu sistema -0 hp")
									leia(ok)
								}senao se(efeito_gelo == verdadeiro){
									ini_dmg -= 3
									escreva(n, "Crítico gelito	HP:", HP, "/", max_HP)
									leia(ok)
								}senao{
									escreva(n, "Luto pulque quis, num tem calantia se fudeu")
									leia(ok)
								}
							}
						}
					}	
				}
			}senao se(inimigo >= 9 ){
				ini_hp = 9
				ini_dmg = 2
				enquanto(lutar == 1){
					escreva(n, "Você encontrou um espirito")
					leia(ok)
					enquanto(turno == 1){
						se(HP >= 1){
							escreva(n, "Você	HP:", HP, "/", max_HP, "	MP:", MP, "/", max_MP, "	dano:", dano, "	magia equipada:")
							se(m_eq == "1"){
								escreva("gelo")
							}senao se(m_eq == "2"){
								escreva("fogo")
							}senao se(m_eq == "3"){
								escreva("choque")
							}senao se(m_eq == "4"){
								escreva("gelo queimante")
							}senao se(m_eq == "5"){
								escreva("eletrizante gelante")
							}senao se(m_eq == "6"){
								escreva("chama chocante")
							}senao se(m_eq == "7"){
								escreva("magia multiversal")
							}
							escreva("		arma:")
							se(arma == 1){
								escreva("espada de pedra(+2)")
							}senao se(arma == 2){
								escreva("espada de ferro(+3)")
							}senao se(arma == 3){
								escreva("espada de gelo(+2)")
							}senao se(arma == 4){
								escreva("espada de fogo(+2)")
							}senao se(arma == 5){
								escreva("espada eletrica(+3)")
							}senao se(arma == 6){
								escreva("espada mista(+5)")
							}senao se(arma == 7){
								escreva("arco e flecha(+2)")
							}senao se (arma == 8){
								escreva("besta de combate(+3)")
							}
							escreva("\n")
							se(espirito == verdadeiro){
								escreva("espirito	HP:9/9	fraqueza:nenhum	ponto forte:corpo a corpo	dano:2	crítico:+1")
							}senao{
								escreva("espirito	HP:???	fraqueza:???	ponto forte:???	dano:??	crítico:??")
							}
							escreva("\n\n1-fujir(", it_fujir, ")	2-usar arma	3-usar magia	4-liberar dados")
							leia(mid_fight)
							se(mid_fight == "2"){
								ataq_AEC = u.sorteia(1, 5)
								se(arma == 7){
									ataq_AEC += 1
								}
								se(ataq_AEC == 1){
									ini_hp -= (dano - 3)
									escreva(n, "você quase erra(-2), sem efeitos e menos dano(-1)")
									leia(ok)
									turno = 2
								}senao se(ataq_AEC >=2 e ataq_AEC <= 4){
									ini_hp -= (dano - 1)
									escreva(n, "efeito aplicado e menos dano(-1)")
									leia(ok)
									se(arma == 3){
										efeito_gelo = verdadeiro
									}senao se(arma == 4){
										efeito_fogo = verdadeiro
									}senao se(arma == 5){
										efeito_choque = verdadeiro
									}senao se(arma == 6){
										efeito_gelo = verdadeiro
										efeito_fogo = verdadeiro
										efeito_choque = verdadeiro
									}
									turno = 2
								}senao se(ataq_AEC >= 5){
									se(arma == 8){
										ini_hp -= (dano + 5)
									}senao{
										ini_hp -= (dano + 2)
									}
									escreva(n, "Dano crítico (+3) e menos dano(-1)")
									leia(ok)
								}
							}senao se(mid_fight == "3"){
								turno = 2
								se(m_eq == "1"){
									se(MP >= 4){
										efeito_gelo = verdadeiro
										ini_hp -= 4
										MP -= 4
										escreva(n, "O inimigo causara 3 ponto a menos de dano, você causou 4 de dano, -4 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "2"){
									se(MP >= 4){
										efeito_fogo = verdadeiro
										ini_hp -= 4
										MP -= 4
										escreva(n, "O oponente leva 1 ponto de dano por turno, você causou 4 de dano, -4 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "3"){
									se(MP >= 4){
										efeito_choque = verdadeiro
										ini_hp -= 4
										MP -= 4
										escreva(n, "O inimigo não será capaz de realizar ataques críticos , você causou 4 de dano, -4 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}
								se(m_eq == "4"){
									se(MP >= 8){
										efeito_gelo = verdadeiro
										efeito_fogo = verdadeiro
										ini_hp -= 4
										escreva(n, "O oponente leva 1 ponto de dano por turno, o inimigo causara 3 ponto a \nmenos de dano, você causou 4 de dano, -8 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "5"){
									se(MP >= 8){
										efeito_gelo = verdadeiro
										efeito_choque = verdadeiro
										ini_hp -= 4
										escreva(n, "O inimigo causara 3 ponto a menos de dano, o inimigo não será capaz de \nrealizar ataques críticos, você causou 4 de dano -8 de mana")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "6"){
									se(MP >= 8){
										efeito_fogo = verdadeiro
										efeito_choque = verdadeiro
										ini_hp -= 4
										escreva(n, "O oponente leva 1 ponto de dano por turno, o inimigo não será capaz de \nrealizar ataques críticos, você causou 4 de dano")
										leia(ok)
									}senao{
										escreva(n, "Você perdeu o turno por sair só pó das suas mãos, o pde poeira, não a de zé droguinha")
										leia(ok)
									}
								}senao se(m_eq == "7"){
									se(MP >= 15){
										efeito_gelo = verdadeiro
										efeito_fogo = verdadeiro
										efeito_choque = verdadeiro
										ini_hp -= 6
										escreva(n, "O oponente leva 1 de dano por turno, causara 3 ponto a menos de dano, não \nserá capaz de realizar ataques críticos, você causou 6 de dano")
										leia(ok)
									}senao{
										escreva(n, "Você deve ter curtido a poeira até demais")
										leia(ok)
									}
								}
							}senao se(mid_fight == "4"){
								turno = 2
								se(espirito == falso){
									espirito = verdadeiro
									escreva(n, "Você descobriu tudo usando o 'painel' do inicio, fim de turno")
									leia(ok)
								}senao{
									escreva(n, "Meus Parabens!!! Você acabou de prede o turno!!!")
									leia(ok)
								}
							}
						}senao{
							escreva(n, "E assim o otário morre ")
							u.aguarde(1000)
							escreva(".")
							u.aguarde(1000)
							escreva(".")
							u.aguarde(1000)
							escreva(".")
							u.aguarde(1000)
							escreva(" kkkkkkkkkkkkkkkkkkkkkkkkkkkkkk")
							leia(ok)
							morreu(n, nome, morre)
						}
					}se(turno == 2){
						turno = 1
						MP += 3
						se(MP >= max_MP){
							MP = max_MP
						}
						ataq_AEC = u.sorteia(1, 5)
						escreva(n, "Turno do inimigo")
						leia(ok)
						se(efeito_fogo == verdadeiro){
							ini_hp -= 1
							escreva(n, "HP:", ini_hp, "/9")
							leia(ok)
						}
						se(ini_hp >= 1){
							se(ataq_AEC == 1){
								escreva(n, "Faustão:Errlooo")
								leia(ok)
							}senao se(ataq_AEC >= 2 e ataq_AEC <= 4){
								se(efeito_gelo == verdadeiro){
									ini_dmg -= 3
								}
								se(ini_dmg <= 0){
									escreva(n, "coitado, 0 de dano, vamo pula da ponte para alegrar ele(a)?")
									leia(ok)
								}senao{
									HP -= ini_dmg
									escreva(n, "Você: HP:", HP + ini_dmg, "/", max_HP, " --> ", HP, "/", max_HP)
									leia(ok)
								}
							}senao se(ataq_AEC == 5){
								se(efeito_choque == verdadeiro){
									escreva(n, "Crítico, eu vou dar um choque no seu sistema -0 hp")
									leia(ok)
								}senao se(efeito_gelo == verdadeiro){
									ini_dmg -= 3
									escreva(n, "Crítico gelito	HP:", HP, "/", max_HP)
									leia(ok)
								}senao{
									escreva(n, "Luto pulque quis, num tem calantia se fudeu")
									leia(ok)
								}
							}
						}
					}	
				}
			}
     	}funcao morreu(cadeia n, cadeia nome, cadeia morre){
     		cadeia ok
     		logico fim_morte = verdadeiro
     		escreva(morre)
     		leia(ok)
     		escreva(n, nome, "Você foi pessimo")
     		leia(ok)
     		escreva(morre)
     		enquanto(fim_morte == verdadeiro){
     			escreva(morre, "Saia, não há como voltar")
     			leia(ok)
     		}
     	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 58068; 
 * @DOBRAMENTO-CODIGO = [1240, 1245];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */