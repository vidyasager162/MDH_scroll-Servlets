function myFunction(){
	var element = document.body;
	element.classList.toggle("dark-mode");
}
function openNav(){
	document.getElementById("sidenavbar").style.width = "250px";
	document.getElementById("main").style.marginLeft = "250px";
}

function closeNav(){
	document.getElementById("sidenavbar").style.width = "0";
	document.getElementById("main").style.marginLeft = "0";
}