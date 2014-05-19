

function animateNewsBanner() {
	var banner = document.getElementById('NewsBanner');
	if (!banner)
		return;
	banner.style.visibility = "visible";
	banner.style.display = "block";
	banner.style.position = "fixed";

	banner.style.zIndex = 10000;
	this.bannerRatio = jQuery(banner).width() / jQuery(banner).height();
	adjustBannerSize(10);
}
function getWindowSize() {
	return {"W": jQuery(this).width(), "H": jQuery(this).height()};
}
function adjustBannerSize(size) {
	var banner = document.getElementById('NewsBanner');
	if (!banner)
		return;
	var wSize = getWindowSize();
	var w = wSize.W;
	var h = wSize.H;
	var newWidth = size * this.bannerRatio;
	banner.style.height = size + "px";
	banner.style.width = newWidth + "px";
	banner.style.top = ((h - size) / 2) + "px";
	banner.style.left = ((w - size) / 2) + "px";
	

	var newSize = size + 20;
	if (newSize < getMaxBannerSize() && newSize < w && newSize < h) {
		size += 20;
		setTimeout("adjustBannerSize(" + size + ")", 5);
	}
}
function closeBanner() {
	var banner = document.getElementById('NewsBanner');
	banner.style.visibility = "hidden";
	banner.style.display = "none";

}

function getMaxBannerSize() {
	var banner = document.getElementById('BannerImage');
	if (!banner)
		return;
	return getWindowSize().H *0.8;
}
function Init() {
	animateNewsBanner();
}
function onResize() {
	adjustBannerSize(getMaxBannerSize());
}
window.onresize = onResize;
