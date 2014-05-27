<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Enduro2014.aspx.cs" Inherits="Events_Enduro" %>

<%@ Register src="../../ImageIterator.ascx" tagname="ImageIterator" tagprefix="uc1" %>

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
        &nbsp;<h3>
            Il percorso</h3>
        <p>
            20 Km suddivisi in tre salite su asfalto e altrettante discese sterrate. Si risale su asfalto passando per località
            Castello fino a località Fasciou, sul crinale che separa Valle Scrivia e Val Brevenna,
            luogo di partenza delle tre PS.</p>
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
        
            E' gradita la <a title="Preiscrizioni" href="/user/subscriptions.aspx">preiscrizione</a>.&nbsp;</p>
        <uc1:ImageIterator ID="ImageIterator1" runat="server" 
			ImagesPath="FotoValentina" />
        <h1>
            Servizi aggiuntivi</h1>
        <p>
            Disponibilità di servizi igienici e punto lavaggio bici presso l'area verde.</p>
        <p>
            Al termine della pedalata la proloco montoggese offirà ai partecipanti panino e
            salsiccia presso i giardini delle scuole comunali.</p>
        <p>
            In giornata si terrà la fiera di San Pasquale, pertanto portate anche la famiglia,
            mentre voi pedalate i vostri familiari potranno dedicarsi allo shopping campestre.</p>
        <h2>
            Costo iscrizione: 5 euro - Casco obbligatorio - Non occorre essere tesserati</h2>
        <iframe width="420" height="315" src="//www.youtube.com/embed/E5bi68fauIQ" frameborder="0"
            allowfullscreen></iframe>
        <div>
            Video della PS1</div>
        <iframe src="map.html" style="width: 800px; height: 400px;"></iframe>
        <div>
            Mappa</div>
        <div>
            <img style="width:100%" src="MTBGoogleEarth.PNG" /></div>
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
