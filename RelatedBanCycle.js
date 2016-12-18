var relImage = 0;
var aryRelImage = new Array();
function createArray(){
	var varus = "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/Varus_0.jpg";
	var tristana = "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/Tristana_0.jpg";
	var check = document.getElementsByClassName("RelImage");


	for(var step = 0; step < check.length; step++){	
		aryRelImage.push(document.getElementsByClassName("RelImage")[step].src )
	}

	aryRelImage.push(varus);
	aryRelImage.push(tristana);
	
}

function RelBancycle() {
	var check = document.getElementsByClassName("RelImage");
	var temp;
	
    if (relImage == aryRelImage.length) {
        relImage = 0;
    }
	 
	temp = aryRelImage.shift();
	aryRelImage.push(temp);
	

	for(var i = 0; i < check.length; i++){	

		document.getElementsByClassName("RelImage")[i].src = aryRelImage[i];
	
	}
 	setTimeout(RelBancycle, 5 * 1000);

	relImage++;
}  


