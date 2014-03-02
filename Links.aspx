﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"
	CodeFile="Links.aspx.cs" Inherits="Links" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
	<title>Links utili</title>
	<style>
	p
	{
		text-align: center;
		border: solid 1px lightblue;
		padding: 10px;
	}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPanel" runat="Server">
	<div id="ContentPanel" class="ContentPanel">
		<h1>
			Links utili</h1>
			<p class="CenterUrl">
			<a href="http://fuoridalsolco.wordpress.com/" target="fuorisolco" title="Palestra di pensiero">
				<img style="width:301px; height:64px" 
                    src="http://fuoridalsolco.files.wordpress.com/2012/07/cropped-solco3.jpg" 
                    alt="Palestra di pensiero" /><br />
				Palestra di pensiero
			</a>
		</p>
		<p class="CenterUrl">
			<a href="http://www.amicidiriki.it/" target="_blank" title="Amici di Riki">
				<img src="Images/amicidiriki.jpg" alt="Amici di Riki" /><br />
				Associazione Amici di Riki - Non lasciare che il tempo ti sfugga
			</a>
		</p>
		<p class="CenterUrl">
			<a href="http://www.globalterramaps.com/" target="_blank" title="Terra Map">
				<img src="http://www.globalterramaps.com/BannerTerra1.png" style="width:301px; height:64px" alt="Terra Map" /><br />
				Terra Map - GPS Offline Topo Map - Per registrare e condividere i tuoi percorsi
				</a>
		</p>
		<p class="CenterUrl">
			<a href="http://www.videociclismo.altervista.org" target="_blank" title="Video di ciclismo">
				<img src="Images/bike-icon.png" alt="Video di ciclismo" /><br />
				Video di ciclismo
			</a>
		</p>
		<p class="CenterUrl">
			<a href="http://ilariainterplanetaria.wordpress.com/" target="_blank" title="Torte artistiche e... buonissime!">
				<img src="Images/Ilariainterplanetaria.png" alt="Torte artistiche e... buonissime!" /><br />
				Torte artistiche e... buonissime!
			</a>
		</p>
		<p class="CenterUrl">
			<a href="http://percorsimtb.wordpress.com/" target="_blank" title="Percorsi MTB">
				<img src="Images/logo-percorsimtb-web.jpg" alt="Percorsi MTB" />
			</a>
		</p>
		<p class="CenterUrl">
			<a href="http://www.gmpbike.it/" target="_blank" title="GMPBike Lissone - Se ami l'avventura">
				<img src="Images/Banner_GmpBike_SeamiAvventura.png" alt="GMPBike Lissone - Se ami l'avventura" />
			</a>
		</p>
		<p class="CenterUrl">
			<a href="http://www.fotovallescrivia.it/" target="_blank">Fotografie della Valle Scrivia</a>
		</p>
		<p class="CenterUrl">
			<a href="http://mtbicinghiali.blogspot.com/" target="_blank">Gruppo MTB Cinghiali Novi
				Ligure</a>
		</p>
		<p class="CenterUrl">
			<a href="http://www.simb.com/" target="_blank">
				<img src="Images/SIMB.jpg" alt="Scuola Italiana di Mountain Bike" />
			</a>
		</p>
		<p class="CenterUrl">
			<a href="http://www.mtb-forum.it/" target="_blank">MTB Forum - Mountain Bike Community</a>
		</p>
		<p class="CenterUrl">
			<a href="http://www.liguriabike.it/" target="_blank">Percorsi MTB in Liguria e Alpi</a>
		</p>
		<p class="CenterUrl">
			<a href="http://digilander.libero.it/stedgl13/index.htm" target="_blank">Mare e Monti</a>
		</p>
				
	</div>
</asp:Content>
