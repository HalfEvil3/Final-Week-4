
//window.onload = cycle;
	var image = 0;
	var aryImage = new Array("http://ddragon.leagueoflegends.com/cdn/img/champion/splash/Lucian_0.jpg","http://ddragon.leagueoflegends.com/cdn/img/champion/splash/Lucian_1.jpg","http://ddragon.leagueoflegends.com/cdn/img/champion/splash/Lucian_2.jpg","http://ddragon.leagueoflegends.com/cdn/img/champion/splash/Lucian_6.jpg");

function cycle() {

     if (image == aryImage.length) {
        image = 0;
     }
     document.getElementById("Banner").src = aryImage[image];

     setTimeout(cycle, 4 * 1000);
	 image++;
}
