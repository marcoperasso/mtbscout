<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="School.aspx.cs" Inherits="school_School" %>

<%@ Register Src="../ImageIterator.ascx" TagName="ImageIterator" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Scuola di Mountain Bike</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPanel" runat="Server">
    <div id="ContentPanel" class="ContentPanel">
        <a target="fci" href="http://www.federciclismo.it/" title="Federazione Ciclistica Italiana">
            <img alt="Federazione Ciclistica Italiana" style="float: left; padding: 20px; padding-left: 50px;"
                src="Logo FCI.jpg" /></a> <a target="asso" href="http://www.assomaestri.org/" title="Assomaestri">
                    <img style="float: right; padding: 20px; padding-right: 50px;" alt="Assomaestri"
                        src="assomaestri.png" />
                </a>
        <br />
        <h1>
            Scuola di Mountain Bike Val Pentemina</h1>
        <h4 style="text-align: center">
            Partita IVA 02118870993</h4>
        <h3 style="color: Red; text-align: center; font-weight: bold;
            font-style: oblique;">
            La scuola riapre il 3 maggio 2014, sono aperte le iscrizioni</h3>
           
        <p style="color: Red; text-align: center; font-weight: bold;
            font-style: oblique;">
           Vuoi iscriverti o chiedere qualcosa?  <a href="mailto:info@mtbscout.it">Scrivici una mail</a> o contatta Marco al 338.3681001</p>
        <br />
        <p>
            La scuola � rivolta principalmente ai bambini e ragazzi dai 7 ai 12 anni ed ha l&#39;obiettivo
            di avvicinarli a questo sport con spirito giocoso e <b><i>non agonistico</i></b>,
            insegnando loro ad apprezzare la natura e il rispetto per l&#39;ambiente. Su appuntamento
            possono partecipare anche gli adulti, sia principianti che intendano apprendere
            le tecniche di base del mountain biking, sia escursionisti che desiderino essere
            accompagnati nei percorsi della valle, magari affrontando preliminarmente gli esercizi
            del campo scuola al fine di stabilire quali di questi percorsi possano essere affrontati
            senza difficolt�.</p>
        <iframe id="FBLike" runat="server" frameborder="0" name="I1" scrolling="no" style="border: none;
            width: 330px; height: 50px"></iframe>
        <a title="Seguici su Facebook" href="http://www.facebook.com/ScuolaMtbValPentemina"
            target="_blank">
            <img alt="Seguici su Facebook" src="seguici-facebook.jpg" style="width: 200px; height: 50px" /></a>
        <br />
        <uc1:ImageIterator ID="ImageIterator1" runat="server" HideAds="true" />
        <h3>
            Lezioni per i bambini</h3>
        <p>
            Le lezioni si svolgono ogni <i><b>mercoled� e/o sabato pomeriggio</b></i> e hanno durata di un&#39;ora,
            nella fascia oraria 17.00 - 19.00; i bambini vengono suddivisi su due turni in base
            a esigenze logistiche dei partecipanti, numero di iscritti, et� e abilit� sviluppate.</p>
        <p>E' possibile iscriversi mensilmente (mese solare) oppure per l'intera stagione (dal 3/5/2014 al 29/10/2014). Ecco i costi:</p>
        <ul>
            <li>mensile una volta a settimana: 30 euro</li>
			<li>mensile due volte a settimana: 50 euro</li>
			<li>stagionale una volta a settimana: 150 euro</li>
			<li>stagionale due volte a settimana: 250 euro</li>
            <li>prima lezione di prova: gratuita.</li>
        </ul>
		<p>
            A questo va aggiunto il costo del tesseramento annuo alla Federazione Ciclistica
            Italiana (comprensivo di assicurazione) in base al <a target="fci" href="http://www.federciclismo.it/affiliazione/tesseramento.asp?cod=5">
                tariffario in vigore</a>; il tesseramento verr� effettuato presso la <a href="http://www.genoabike.com/"
                    target="gbike">A.S.D. Genoa Bike</a>, affiliata alla F.C.I. - <a href="http://www.federciclismo.it/affiliazione/societa2013/dettagliosoc.asp?mcodice=06C1178"
                        target="_blank">visualizza lista degli attuali tesserati.</a></p>
        <p>
            Ogni bambino deve essere munito di una fototessera, certificato medico (per attivit�
            sportiva <b>non agonistica</b>), bici propria e <b><i>casco protettivo</i></b>;
            la fototessera ci serve in formato digitale, se ne hai una tradizionale possiamo
            effettuare noi una scansione della stessa (ad esempio quella della carta d&#39;identit�
            o di un altro documento recente, cos� eviti di farla appositamente); non occorre
            che tu vada a comprare la bici nuova a tuo figlio, fallo venire con quella che ha
            (purch� sia in efficiente stato di funzionamento, in particolare i freni), deciderai
            dopo se � il caso di cambiarla in funzione del suo interessamento e della reale
            necessit�; per iscrizioni <a href="mailto:info@mtbscout.it">scrivici una mail</a>
            o contatta il 338.3681001.</p>
        <h2>
            Contenuti del corso</h2>
        <p>
            Le lezioni sono prevalentemente a carattere pratico: i bambini e i ragazzi potranno
            divertirsi sviluppando al contempo diverse capacit� motorie, condizionali e coordinative
            come l&#39;equilibrio, la destrezza, l�abilit�, la capacit� reattiva, l�organizzazione
            spazio-temporale, la forza, la resistenza e la velocit�, anche grazie all&#39;ausilio
            dei pi� svariati ostacoli (bascula, gimkana, piccoli salti, passaggi obbligati,
            sottopassi, sentieri in salita, ripidoni in discesa, whoops). Non mancheranno peraltro
            componenti teoriche, pi� o meno &#39;mascherate&#39; all&#39;interno dell&#39;attivit�
            ludica, volte da un lato a stimolare l&#39;apprendimento di nozioni specifiche quali
            la conoscenza del mezzo e dei comportamenti da osservare durante le escursioni per
            la propria ed altrui sicurezza, dall&#39;altro a principi educativi pi� generali
            quali il rispetto della natura, l&#39;impegno come mezzo principe per l&#39;ottenimento
            dei risultati, la bici come mezzo ideale di mobilit� sostenibile, l&#39;attivit�
            fisica come veicolo di benessere.</p>
        <h2>
            Il maestro</h2>
        <p>
            Mi chiamo <a href="http://www.linkedin.com/pub/marco-perasso/3a/470/14a" target="marco">
                Marco</a>, sono laureato in Economia e mi occupo di sviluppo software (in pratica
            sono uno dei responsabili se i computer si comportano in modo strano e sembrano
            difficili da usare). Mi piace il lavoro che faccio ma... la bici � sicuramente un&#39;altra
            cosa. E&#39; libert�, � un mezzo per sfogare le tensioni, � uno strumento per muoversi
            senza vincoli, � un modo per rimanere bambini (che ogni tanto si sbucciano un ginocchio
            o si infangano fino ai capelli), � una metafora che ti insegna che se vuoi ottenere
            qualcosa ed esserne soddisfatto, te la devi sudare; sono anche fermamente convinto
            che se vogliamo migliorare questa nostra societ� piuttosto disastrata, anestetizzata
            da shopping, calcio scommesse e grandi fratelli, si debba lavorare sui bambini.
            Credo fermamente nella bici come strumento di mobilit� sostenibile (in particolare
            in citt�): ogni giorno percorro circa 25 Km per recarmi al lavoro sulla mia city
            bike, sono sufficientemente munito di attrezzatura anti intemperie ma ahim� non
            ho ancora trovato adeguate misure di difesa contro gli automobilisti nevrotici.</p>
        <p>
            Sulla scia di questa mia passione ho ottenuto il diploma di maestro della <a target="fci"
                href="http://www.federciclismo.it/studi/maestri_home.asp">Federazione Ciclistica
                Italiana</a>, mi sono iscritto ad <a target="assom" href="http://www.assomaestri.org">
                    Assomaestri</a> (organizzazione che tutela, anche dal punto di vista assicurativo,
            i maestri di Mountain Bike nella loro attivit� istituzionale) e ho deciso di aprire
            questa scuola. Non voglio insegnarti ad essere un campione, ad arrivare primo ad
            ogni costo, a surclassare gli altri: se riuscir� a farti divertire e trasmetterti
            solo un po&#39; del mio entusiasmo, potr� ritenermi soddisfatto.</p>
        <p>
            Potrai raccogliere altre informazioni su di me navigando questo sito, che ho curato
            nella forma (sigh, si vede che non sono un grafico...) e nei contenuti. Il mio numero
            di Partita IVA � 02118870993.</p>
        <h2>
            Dov&#39;� la scuola?</h2>
        <p>
            Il campo scuola � sito in Val Pentemina, verde e selvaggia valle che da Montoggio
            conduce a Pentema (conosciuta dai pi� per il presepe); dalla piazza centrale di
            Montoggio procedere lungo la provinciale 226 in direzione Laccio/Torriglia per 1,5
            Km (superando nell&#39;ordine la banca sulla sinistra, l&#39;ufficio postale sulla
            destra, il ponte sullo Scrivia, la caserma dei Carabinieri sulla destra, un supermercato
            sulla sinistra) quindi imboccare una strada secondaria a sinistra in corrispondenza
            di una curva a novanta gradi, seguendo l&#39;indicazione per Gazzolo. La strada
            sale per 1 Km, quindi inizia a scendere: appena iniziata la discesa, troverete il
            campo scuola alla vostra sinistra.</p>
        <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0"
            marginwidth="0" src="https://maps.google.it/maps/ms?msa=0&amp;msid=216631990246990209455.0004bf85ab8e929a5e351&amp;ie=UTF8&amp;t=m&amp;layer=c&amp;cbll=44.524856,9.064658&amp;panoid=42ytCgs_HBD-noXyPSB9_w&amp;cbp=12,356.97,,0,7.58&amp;ll=44.52508,9.064912&amp;spn=0.001973,0.003095&amp;source=embed&amp;output=svembed">
        </iframe>
        <br />
        <small>Visualizza <a href="https://maps.google.it/maps/ms?msa=0&amp;msid=216631990246990209455.0004bf85ab8e929a5e351&amp;ie=UTF8&amp;t=m&amp;layer=c&amp;cbll=44.524856,9.064658&amp;panoid=42ytCgs_HBD-noXyPSB9_w&amp;cbp=12,356.97,,0,7.58&amp;ll=44.52508,9.064912&amp;spn=0.001973,0.003095&amp;source=embed"
            style="color: #0000FF; text-align: left">Scuola di Mountain Bike Val Pentemina</a>
            in una mappa di dimensioni maggiori</small>
        <h4>
            <a href="Scuola di Mountain Bike Val Pentemina.pdf" target="modulo">Scarica regolamento
                e modulo di adesione</a>.</h4>
    </div>
</asp:Content>
