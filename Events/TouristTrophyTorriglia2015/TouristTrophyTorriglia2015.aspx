<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="TouristTrophyTorriglia2015.aspx.cs" Inherits="Events_TouristTrophyTorriglia2015" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
	<title>Tourist Trophy Torriglia</title>
	<style type="text/css">
		p.centered
		{
			text-align: center;
		}
		img.logo
		{
			height: 100px;
			border: none;
			padding: 20px;
		}
		.style1
		{
			width: 69px;
			text-align: center;
		}
		.style3
		{
			width: 137px;
		}
		.style4
		{
			width: 99px;
			text-align: right;
			font-family: "Cordia New";
			font-size: x-large;
		}
		.style5
		{
			width: 99px;
			text-align: center;
		}
		.style6
		{
			width: 137px;
			text-align: center;
		}
		.style7
		{
			width: 254px;
			text-align: center;
		}
		.style8
		{
			width: 254px;
		}
		
		
		.style9
		{
			width: 137px;
			height: 19px;
		}
		.style10
		{
			height: 19px;
		}
		.style11
		{
			width: 254px;
			height: 19px;
		}
		.style12
		{
			width: 99px;
			text-align: right;
			font-family: "Cordia New";
			font-size: x-large;
			height: 19px;
		}
		tr:nth-child(2n) td
		{
			background-color: #DDDDCF;
		}
		tr:nth-child(2n-1) td
		{
			background-color: #F4E7E7;
		}
		thead tr td
		{
			background-color: #AB9C9C !important;
		}
		table
		{
			border-collapse: collapse;
			border: 1px solid #3399FF;
		}
		td
		{
			padding-left: 5px;
			padding-right: 5px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPanel" runat="Server">
	<div id="ContentPanel" class="ContentPanel">
		<h1>
			Cicloturistica 3T</h1>
		<h1 style="color:red;">
			Rinviato a Domenica 11 ottobre 2015</h1>
		<h3>
			Pedalata cicloturistica di MTB con premiazione dei primi tre classificati.
		</h3>
		<h3>
			<a href="../../User/Subscriptions.aspx" title="Preiscrizioni">Preiscrizioni</a></h3>
			
		<img class="centered" src="locandina.jpg"/>
		<dov>
		<img class="centered" style ="margin-top:20px" src="mappa.jpg"/>
		<p class="centered">Mappa percorso</p>
		</div>
		<h2>
		Casco obbligatorio - Non occorre essere tesserati</h2>
		 <a target="trala" title="Tra l'antola e il mare"
				href="http://www.tralantolaeilmare.org/">
				<img class="logo" alt="Tra l'antola e il mare" src="http://www.tralantolaeilmare.org/wp-content/uploads/2013/05/cropped-narcisi111.jpg" /></a>
	</div>
</asp:Content>
