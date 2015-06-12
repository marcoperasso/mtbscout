<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="Enduro2015.aspx.cs" Inherits="Events_Enduro" %>

<%@ Register Src="../../ImageIterator.ascx" TagName="ImageIterator" TagPrefix="uc1" %>
<%@ Register Src="../../Donate.ascx" TagName="Donate" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
	<title>MTB Enduro dei Fieschi</title>
	<style type="text/css">
		p.centered {
			text-align: center;
		}

		img.logo {
			height: 100px;
			border: none;
			padding: 20px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPanel" runat="Server">
	<div id="ContentPanel" class="ContentPanel">
		<table width="100%">
			<tr>
				<td>
					<img style="height: 100px; width: 100px" alt="Logo PRO LOCO" src="/Images/Logo Pro loco Montoggese.jpg" />
				</td>
				<td>
					<h1>Enduro dei Fieschi</h1>
					<h2>Domenica 17 maggio 2015</h2>
				</td>
				<td>
					<img style="height: 100px; width: 100px" alt="Logo ENDURO" src="logo Enduro Dei Fieschi.png" /></td>
			</tr>
		</table>
		<h3>Il percorso</h3>
		<p>
			20 Km suddivisi in tre salite su asfalto e altrettante discese sterrate. Per i temerari è prevista una quarta discesa, opzionale. Tranquilli, daremo il panino con salsiccia anche a chi ne affronta solo una.
		</p>
		<p>
			Si risale
			su asfalto passando per località Castello fino a località Fasciou, sul crinale che
			separa Valle Scrivia e Val Brevenna, luogo di partenza delle PS. </p>
		<p>
			PS1: la panoramica. Si spinge un centinaio di metri fino in vetta al monte
			Banca, ci si gode il meritato panorama quindi si intraprende la discesa veloce fino
			a località Granara. Da qui si ritorna in vetta su asfalto.
		</p>
		<p>
			PS2: la ripida. Da località Fasciou si prende il sentiero di direttissima che scende
			lungo il crinale reimmettendosi un chilometro più a valle sulla strada asfaltata.
		</p>
		<p>
			PS3: la veloce. Da località Serrato si spinge per qualche minuto fra vecchie case abbandonate fino a
reimmettersi sul tracciato della PS1, che si percorre per un brevissimo tratto per poi scendere a sinistra nel bosco, fino a 
reincontrare la PS1 poco prima dell'abitato di Granara.			</p>
			

		<p>
			PS4: la lunghissima spaccabraccia. Da località Fasciou si arriva alla cappelletta della Banca, dove inizia l&#39;interminabile single track che riporterà a località Castello.</p>
		<iframe src="map.html" style="width: 800px; height: 400px;"></iframe>
        <div>
			Mappa</div>
		<uc1:ImageIterator ID="ImageIterator1" runat="server" ImagesPath="FotoRoberto"
			Title="Foto di Roberto" />
		
        <uc1:ImageIterator ID="ImageIterator2" runat="server" ImagesPath="Foto"
			Title="Foto di Ilaria" />
		<iframe width="420" height="315" src="//www.youtube.com/embed/E5bi68fauIQ" frameborder="0"
			allowfullscreen></iframe>
		<div>
			Video della PS1
		</div>
		<iframe width="420" height="315" src="https://www.youtube.com/embed/DMO2t2cGjjs" frameborder="0"
			allowfullscreen></iframe>
		<div>
			Video della PS2
		</div>
		<p class="centered">
			<a title="Scarica la locandina" href="volantino.pdf" target="_blank">Scarica la locandina</a>
		</p>
	</div>
</asp:Content>
