﻿function hoverImage(el) {
	el.className = "HoverIteratorImage";
}
function normalImage(el) {
	el.className = "IteratorImage";
}
function hoverDownloadImage(el) {
	el.style.width = "35px";
	el.style.height = "35px";
}
function normalDownloadImage(el) {
	el.style.width = "30px";
	el.style.height = "30px";
}
function hoverDeleteImage(el) {
	el.style.width = "25px";
	el.style.height = "25px";
}
function normalDeleteImage(el) {
	el.style.width = "20px";
	el.style.height = "20px";
}


function CalcDeltaX(deltaY, radius) {
	var angle = Math.asin(deltaY / radius);

	return radius * Math.cos(angle);
}
function Round(id, radius, step) {
	var el = document.getElementById(id);
	if (el == null)
		return;

	var w = el.offsetWidth;
	var currEl = el;
	var deltay = step;
	var deltax = true;
	while (deltay <= radius) {
		deltax = CalcDeltaX(deltay, radius);
		deltay += step;

		var divUp = document.createElement("div");
		divUp.className = el.className;
		divUp.style.padding = "0px";
		divUp.style.marginTop = "0px";
		divUp.style.marginBottom = "0px";
		divUp.style.overflow = "hidden";
		divUp.style.height = step + "px";
		divUp.style.width = (w - Math.round(((radius - deltax) * 2))) + "px";
		divUp.style.zIndex = -1;
		currEl.parentNode.insertBefore(divUp, currEl);
		currEl = divUp;

		//var divDown = divUp.cloneNode(true);
		//el.parentNode.appendChild(divDown);

	}
}

function InitPage() {
    //setTimeout(function() { moveClimbHeader(); }, 50);
    //initsnow(); 
}
function moveClimbHeader() {
	var img = document.getElementById("Climb");
	if (!img) {
		setTimeout(function() { moveClimbHeader(); }, 50);
		return;
	}
	if (!document.getElementById("dummyForHomePage")) {
		img.style.left = "-300px";
		img.style.visibility = "visible";
		return;
	}
	else if (!img.delta) {
		img.style.left = "500px";
		img.style.visibility = "visible";
		img.delta = -20;
	}
		
	var x = parseInt(img.style.left) + img.delta;
	img.style.left = x + "px";

	if (img.delta < 0) {
		if (x < -450)
			img.delta = 20;

		setTimeout(function() { moveClimbHeader(); }, 50);
	}
	else if (x < -300) {
		setTimeout(function() { moveClimbHeader(); }, 50);
	}
	else {
		img.delta = null;
	}
	
}
function moveRouteImage(div, left) {
	left = left - 1;
	if (left < -200) {
		document.getElementById("RouteTitle").innerHTML = getImage1().title;
		document.getElementById("reloadImages").click();
		return;
	}
	div.style.left = left + "px";
	setTimeout(function() { moveRouteImage(div, left); }, 5);
}


function setCookie(n, value, exdays) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var c_value = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toUTCString());
    document.cookie = n + "=" + c_value;
}
function getCookie(n) {
    var i, x, y, ARRcookies = document.cookie.split(";");
    for (i = 0; i < ARRcookies.length; i++) {
        x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
        y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);
        x = x.replace(/^\s+|\s+$/g, "");
        if (x == n) {
            return unescape(y);
        }
    }
    return "";
}