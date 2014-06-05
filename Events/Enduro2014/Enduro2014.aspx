<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="Enduro2014.aspx.cs" Inherits="Events_Enduro" %>

<%@ Register Src="../../ImageIterator.ascx" TagName="ImageIterator" TagPrefix="uc1" %>
<%@ Register src="../../Donate.ascx" tagname="Donate" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
	<title>MTB Enduro dei Fieschi</title>
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
					<h1>
						MTB Enduro dei Fieschi</h1>
					<h2>
						Domenica 18 maggio 2014</h2>
				</td>
				<td>
					<img style="height: 100px; width: 100px" alt="Logo Montoggio" src="/Images/comune_montoggio.jpg" />
				</td>
			</tr>
		</table>
		<p>
		E' stata una splendida giornata, un centinaio di bikers hanno percorso i nostri sentieri lungo il versante del monte Banca 
			accompagnati da un bel sole ed una lieve brezza. </p>
		<p>
			Al termine della pedalata la Proloco Montoggese ha offerto 
			ai partecipanti panino e salsiccia presso i giardini delle scuole comunali, dove 
			si è tenuta anche la tradizionale fiera di San Pasquale.&nbsp;</p>
		<p>
			Ringraziamo di cuore tutti quanti per la partecipazione: ogni singolo biker, Deep Bike, il gruppo del Monte Fasce, il gruppo degli Aquilotti, il gruppo dei Vigili del Fuoco di Sestri Levante, i Bikers Team di Livellato, i Garsunetti du Cuniggiu, il Tracce Team ed i ragazzi della Proloco di Savignone. 
			Un grazie anche alla Proloco ed al Comune di Montoggio per la collaborazione. Enjoy All Mountain!</p>
		<h3>
			Il percorso</h3>
		<p>
			20 Km suddivisi in tre salite su asfalto e altrettante discese sterrate. Si risale
			su asfalto passando per località Castello fino a località Fasciou, sul crinale che
			separa Valle Scrivia e Val Brevenna, luogo di partenza delle tre PS.</p>
		<p>
			PS1: la panoramica veloce. Si spinge un centinaio di metri fino in vetta al monte
			Banca, ci si gode il meritato panorama quindi si intraprende la discesa veloce fino
			a località Granara. Da qui si ritorna in vetta su asfalto.</p>
		<p>
			PS2: la lunghissima spaccabraccia. Da località Fasciou si arriva alla cappelletta
			della Banca, dove inizia l&#39;interminabile single track che riporterà a località
			Castello. Chi desidera produrre dell&#39;ottimo burro metta del latte cremoso nella
			propria borraccia prima di intraprendere la discesa, il risultato è garantito.</p>
		<p>
			PS3: la ripida. Da località Fasciou si prende il sentiero di direttissima che scende
			lungo il crinale reimmettendosi un chilometro più a valle sulla strada asfaltata.</p>

		<uc2:Donate ID="Donate1" runat="server" 
			Message="Ti è piaciuto l'evento? Ti piacciono le foto? Aiutaci con un piccolo contributo!" />

		<uc1:ImageIterator ID="ImageIterator1" runat="server" ImagesPath="FotoValentina"
			Title="Foto di Valentina" />
		<uc1:ImageIterator ID="ImageIterator2" runat="server" ImagesPath="FotoGuglielmo"
			
			Title="Foto di &lt;a href=&quot;http://www.pardo.it&quot; target=&quot;pardo&quot;&gt;Guglielmo&lt;/a&gt;" />
		<uc1:ImageIterator ID="ImageIterator3" runat="server" ImagesPath="FotoRobertoPartenzaArrivo"
			Title="Foto di Roberto - Partenza e Arrivo" />
		<uc1:ImageIterator ID="ImageIterator4" runat="server" ImagesPath="FotoRobertoPS1"
			Title="Foto di Roberto - PS1" />
			<uc1:ImageIterator ID="ImageIterator5" runat="server" ImagesPath="FotoRobertoPS2"
			Title="Foto di Roberto - PS2" />
		<iframe width="420" height="315" src="//www.youtube.com/embed/E5bi68fauIQ" frameborder="0"
			allowfullscreen></iframe>
		<div>
			Video della PS1</div>
		<iframe src="map.html" style="width: 800px; height: 400px;"></iframe>
		<div>
			Mappa</div>
		<div>
			<img style="width: 100%" src="MTBGoogleEarth.PNG" /></div>
		<div>
			Mappa 3D</div>
		<p class="centered">
			<a title="Visualizza mappa in una pagina più grande" href="map.html" target="_blank">
				Visualizza mappa in una pagina più grande</a></p>
		<p class="centered">
			<a title="Scarica tracciato GPS" href="enduro.zip">Scarica tracciato GPS</a></p>
		<p class="centered">
			<a title="Scarica la locandina" href="MTB ENDURO DEI FIESCHI 2014.pdf" target="_blank">
				Scarica la locandina</a></p>
		&nbsp;&nbsp;
	</div>
</asp:Content>
