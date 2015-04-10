<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="School.aspx.cs" Inherits="school_School" %>

<%@ Register Src="../ImageIterator.ascx" TagName="ImageIterator" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
	<title>Scuola di Mountain Bike</title>
	<style type="text/css">
		.auto-style1 {
			width: 90%;
			color:black;
			margin-left:auto;
			margin-right:auto;
			border: solid 1px green
		}
		.auto-style2 {
			height: 28px;
			color: blue;
			background-color:lightgrey 
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPanel" runat="Server">
	<div id="ContentPanel" class="ContentPanel">
        <a target="fci" href="http://www.federciclismo.it/" title="Federazione Ciclistica Italiana">
            <img alt="ACSI" style="float: left; padding: 20px; padding-left: 50px;"
                src="logo_acsi.png" /></a> 
				
				<a target="accademia" href="http://www.scuoladimtb.eu/" title="Accademia Nazionale di Mountain Bike">
                    <img style="float: right; padding: 20px; padding-right: 50px;" alt="Accademia Nazionale di Mountain Bike"
                        src="accademia.png" />
                </a>
        <br />
        <h1>
            Scuola di Mountain Bike Val Pentemina</h1>
       
        <h3 style="color: Red; text-align: center; font-weight: bold;
            font-style: oblique;">
            La scuola riaprirà sabato 9 maggio 2015</h3>
           
        <p style="color: Red; text-align: center; font-weight: bold;
            font-style: oblique;">
           Vuoi iscriverti o chiedere qualcosa?  <a href="mailto:info@mtbscout.it">Scrivici una mail</a> o contatta Marco al 338.3681001</p>
        <br />
        <p>
            La scuola è rivolta principalmente ai bambini e ragazzi dai 7 ai 12 anni ed ha l&#39;obiettivo
            di avvicinarli a questo sport con spirito giocoso e <b><i>non agonistico</i></b>,
            insegnando loro ad apprezzare la natura e il rispetto per l&#39;ambiente. Su appuntamento
            possono partecipare anche gli adulti, sia principianti che intendano apprendere
            le tecniche di base del mountain biking, sia escursionisti che desiderino essere
            accompagnati nei percorsi della valle, magari affrontando preliminarmente gli esercizi
            del campo scuola al fine di stabilire quali di questi percorsi possano essere affrontati
            senza difficoltà.</p>
        <iframe id="FBLike" runat="server" frameborder="0" name="I1" scrolling="no" style="border: none;
            width: 330px; height: 50px"></iframe>
        <a title="Seguici su Facebook" href="http://www.facebook.com/ScuolaMtbValPentemina"
            target="_blank">
            <img alt="Seguici su Facebook" src="seguici-facebook.jpg" style="width: 200px; height: 50px" /></a>
		<br />
		<iframe id="I2" allowfullscreen="" frameborder="0" height="300" name="I2" 
			src="http://www.youtube.com/embed/dslZNlq-o0w" width="420"></iframe>
        <br />
        <uc1:ImageIterator ID="ImageIterator1" runat="server" HideAds="true" />
        <h3>
            Lezioni per i bambini</h3>
        <p>
            Le lezioni si svolgono ogni <i><b>mercoledì e/o sabato pomeriggio</b></i> e hanno durata di un&#39;ora,
            nella fascia oraria 17.00 - 19.00; i bambini vengono suddivisi su due turni in base
            a esigenze logistiche dei partecipanti, numero di iscritti, età e abilità sviluppate.</p>
        <p>Ecco i costi:</p>
        <ul>
            <li>mensile una volta a settimana: 30 euro</li>
			<li>mensile due volte a settimana: 50 euro</li>
			<li>prima lezione di prova: gratuita.</li>
        </ul>
		<p>
            A questo va aggiunto la quota associativa, comprensiva di assicurazione, di 15 euro annui.</p>
        <p>
            Ogni bambino deve essere munito certificato medico 
			originale (per attività
            sportiva <b>non agonistica</b>), bici propria e <b><i>casco protettivo</i></b>;
            non occorre
            che tu vada a comprare la bici nuova a tuo figlio, fallo venire con quella che ha
            (purché sia in efficiente stato di funzionamento, in particolare i freni), deciderai
            dopo se è il caso di cambiarla in funzione del suo interessamento e della reale
            necessità; per iscrizioni <a href="mailto:info@mtbscout.it">scrivici una mail</a>
            o contatta il 338.3681001.</p>
        <h2>
            Calendario lezioni 2015</h2>
        <table class="auto-style1">
			<tr>
				<td colspan="2" class="auto-style2">MAGGIO</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>sabato 9 </td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>sabato 16</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>sabato 23</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>sabato 30</td>
			</tr>
			<tr>
				<td colspan="2" class="auto-style2">GIUGNO</td>
			</tr>
			<tr>
				<td>mercoledì 3</td>
				<td>sabato 6</td>
			</tr>
			<tr>
				<td>mercoledì 10</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>mercoledì 24</td>
				<td>sabato 27</td>
			</tr>
			<tr>
				<td colspan="2" class="auto-style2">LUGLIO</td>
			</tr>
			<tr>
				<td>mercoledì 1</td>
				<td>sabato 4</td>
			</tr>
			<tr>
				<td>mercoledì 8</td>
				<td>sabato 11</td>
			</tr>
			<tr>
				<td>mercoledì 15</td>
				<td>sabato 18</td>
			</tr>
			<tr>
				<td>mercoledì 22</td>
				<td>sabato 25</td>
			</tr>
			<tr>
				<td colspan="2" class="auto-style2">AGOSTO</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>sabato 1</td>
			</tr>
			<tr>
				<td>mercoledì 5</td>
				<td>sabato 8</td>
			</tr>
			<tr>
				<td>mercoledì 12</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>mercoledì 19</td>
				<td>sabato 22</td>
			</tr>
			<tr>
				<td>mercoledì 26</td>
				<td>sabato 29</td>
			</tr>
			<tr>
				<td colspan="2" class="auto-style2">SETTEMBRE</td>
			</tr>
			<tr>
				<td>mercoledì 2</td>
				<td>sabato 5</td>
			</tr>
			<tr>
				<td>mercoledì 9</td>
				<td>sabato 12</td>
			</tr>
			<tr>
				<td>mercoledì 16</td>
				<td>sabato 19</td>
			</tr>
			<tr>
				<td>mercoledì 23</td>
				<td>sabato 26</td>
			</tr>
		</table>
        <h2>
            Contenuti del corso</h2>
        <p>
            Le lezioni sono prevalentemente a carattere pratico: i bambini e i ragazzi potranno
            divertirsi sviluppando al contempo diverse capacità motorie, condizionali e coordinative
            come l&#39;equilibrio, la destrezza, l’abilità, la capacità reattiva, l’organizzazione
            spazio-temporale, la forza, la resistenza e la velocità, anche grazie all&#39;ausilio
            dei più svariati ostacoli (bascula, gimkana, piccoli salti, passaggi obbligati,
            sottopassi, sentieri in salita, ripidoni in discesa, whoops, pump track). Non mancheranno peraltro
            componenti teoriche, più o meno &#39;mascherate&#39; all&#39;interno dell&#39;attività
            ludica, volte da un lato a stimolare l&#39;apprendimento di nozioni specifiche quali
            la conoscenza del mezzo e dei comportamenti da osservare durante le escursioni per
            la propria ed altrui sicurezza, dall&#39;altro a principi educativi più generali
            quali il rispetto della natura, l&#39;impegno come mezzo principe per l&#39;ottenimento
            dei risultati, la bici come mezzo ideale di mobilità sostenibile, l&#39;attività
            fisica come veicolo di benessere.</p>
        <h2>
            Il maestro</h2>
        <p>
            Mi chiamo <a href="http://www.linkedin.com/pub/marco-perasso/3a/470/14a" target="marco">
                Marco</a>, sono laureato in Economia e mi occupo di sviluppo software (in pratica
            sono uno dei responsabili se i computer si comportano in modo strano e sembrano
            difficili da usare). Mi piace il lavoro che faccio ma... la bici è sicuramente un&#39;altra
            cosa. E&#39; libertà, è un mezzo per sfogare le tensioni, è uno strumento per muoversi
            senza vincoli, è un modo per rimanere bambini (che ogni tanto si sbucciano un ginocchio
            o si infangano fino ai capelli), è una metafora che ti insegna che se vuoi ottenere
            qualcosa ed esserne soddisfatto, te la devi sudare; sono anche fermamente convinto
            che se vogliamo migliorare questa nostra società anestetizzata
            da shopping, calcio scommesse e grandi fratelli, si debba lavorare sui bambini.
            Credo fermamente nella bici come strumento di mobilità sostenibile (in particolare
            in città): per questo la uso ogni volta che mi reco in ufficio.</p>
        <p>
            Sulla scia di questa mia passione ho ottenuto il diploma di maestro della <a target="fci"
                href="http://www.federciclismo.it/it/section/tecnici-ds--maestri-mtb/f41f0f8c-f98f-4169-8129-194250bdcfd4/">Federazione Ciclistica
                Italiana</a>, il diploma di Guida di Moutain Bike dell&#39;<a target="accademia" href="http://www.scuoladimtb.eu/">Accademia Nazionale di Mountain Bike</a> e ho deciso di aprire
            questa scuola. Non voglio insegnarti ad essere un campione, ad arrivare primo ad
            ogni costo, a surclassare gli altri: se riuscirò a farti divertire e trasmetterti
            solo un po&#39; del mio entusiasmo, potrò ritenermi soddisfatto.</p>
        <p>
            Potrai raccogliere altre informazioni su di me navigando questo sito, che ho curato
            nella forma (sigh, si vede che non sono un grafico...) e nei contenuti.</p>
        <h2>
            Dov&#39;è la scuola?</h2>
        <p>
            Il campo scuola è sito in Val Pentemina, verde e selvaggia valle che da Montoggio
            conduce a Pentema (conosciuta dai più per il presepe); dalla piazza centrale di
            Montoggio procedere lungo la provinciale 226 in direzione Laccio/Torriglia per 1,5
            Km (superando nell&#39;ordine la banca sulla sinistra, l&#39;ufficio postale sulla
            destra, il ponte sullo Scrivia, la caserma dei Carabinieri sulla destra, un supermercato
            sulla sinistra) quindi imboccare una strada secondaria a sinistra in corrispondenza
            di una curva a novanta gradi, seguendo l&#39;indicazione per Gazzolo. La strada
            sale per 1 Km, quindi inizia a scendere: appena iniziata la discesa, troverete il
            campo scuola alla vostra sinistra.</p>
        <small><a href="https://www.google.it/maps/@44.524816,9.064613,3a,75y,354.08h,70t/data=!3m4!1e1!3m2!1sPghSBH5ZRnz7xDUiGcA3SQ!2e0"
            style="color: #0000FF; text-align: left">Visualizza dove siamo su Google Maps</a>
            </small>
        <%--<h4>
            <a href="Scuola di Mountain Bike Val Pentemina.pdf" target="modulo">Scarica regolamento
                e modulo di adesione</a>.</h4>--%>
    </div>
</asp:Content>
