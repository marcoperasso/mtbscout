<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="EditRoute.aspx.cs" Inherits="Routes_EditRoute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Gestione percorsi</title>
    <style type="text/css">
        .comboLevel
        {
            text-align: justify;
            padding: 20px;
        }
        
    	li
		{
			text-align: justify;
		}
        
    </style>

    <script type="text/javascript">
        function frameLoaded(frame) {
            var mapDiv = frame.contentDocument.getElementById("gmap_div");
            frame.height = mapDiv ? "400px" : "40px";
            getGpsField().value = mapDiv ? "x" : "";
            document.getElementById("TextBoxGPSMessage").innerHTML = mapDiv
                ? "CARICATO - Premi il pulsante sotto per sostituirlo"
                : "NON CARICATO - Premi il pulsante sotto per caricare un file GPX";
        }
        function imagesUploaded(frame) {
            getUpdateImagesButton().click();
        }
        function confirmDelete() {
            return confirm("Sei sicuro di cancellare questo percorso? Tutti i dati associati andranno persi, l'operazione � irreversibile. Vuoi proseguire?");
        }
		
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPanel" runat="Server">
    <div id="ContentPanel" class="ContentPanel" style="text-align: left">
        <h1>
            Inserisci o modifica i dati del tuo percorso</h1>
            <p>Ecco alcune linee guida per inserire il tuo percorso:</p>
		<ul>
			<li>Carica il tracciato GPS del percorso; deve trattarsi di un file GPX, se il 
				formato del tuo file non corrisponde esistono in rete molti strumenti di 
				conversione.</li>
				<li>Scegli un titolo per il percorso: per omogeneit� � preferibile utilizzare la sequenza di localit� toccate dal percorso stesso (es. Montoggio - 
					Casella - Val Brevenna - Carsi - Carsegli - Montoggio).</li>
			<li>Fornisci una descrizione di dettaglio: caratteristiche del fondo, tecnicit�, 
				punti panoramici, punti di attenzione, punti di rifornimento idrico, in generale 
				ogni informazioni che reputi possa tornare utile a chi desideri affrontare il 
				percorso.</li>
			<li>Indica una percentuale di ciclabilit� da zero a cento (ovviamente indicativa, 
				spesso la ciclabilit� di un percorso � funzione di fattori variabili come le 
				condizioni meteorologiche, le abilit� tecniche del biker, le condizioni di 
				allenamento, ecc..).</li>
			<li>Scegli un livello di difficolt� fra quelli disponibili (suddiviso fra salita e 
				discesa). Tenuto conto che anche in questo caso il fattore soggettivo � 
				imprescindibile, si � scelto di adottare la scala di difficolt� proposta dal CAI 
				(segui il link proposto per ulteriori informazioni).</li>
			<li>Carica le foto del tuo percorso (opzionale ma consigliato). Se le tue foto sono 
				geolocalizzate (ossia contengono le informazioni di latitudine e longitudine 
				della posizione in cui sono state scattate: molte fotocamere moderne hanno un 
				sensore GPS integrato che permette di avere questa informazione), verranno 
				conseguentemente posizionate sulla mappa lungo il tracciato del percorso; in 
				alternativa, puoi sincronizzare data e ora della tua fotocamera con data e ora 
				del tuo GPS, il motore del sito provveder�, riconciliando queste informazioni, 
				ad inserire le informazioni di geolocalizzazione nelle tue foto.</li>
			</ul>
        <asp:UpdatePanel ID="UpdatePanelOuter" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
            <ContentTemplate>
                <fieldset title="Informazioni di base">
                    <legend>Informazioni di base</legend>
                    <asp:UpdatePanel ID="UpdatePanelData" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:HiddenField ID="RouteName" runat="server" />
                            <div>
                                <span>Tracciato GPS:</span> <span id="TextBoxGPSMessage"></span>
                                <asp:RequiredFieldValidator ID="TextBoxGPSRequiredFieldValidator" runat="server"
                                    ErrorMessage="Campo obbligatorio!" ControlToValidate="TextBoxGPS" Display="Dynamic"
                                    SetFocusOnError="false"></asp:RequiredFieldValidator>
                            </div>
                            <asp:TextBox ID="TextBoxGPS" Enabled="false" Style="display: none;" runat="server"
                                Width="100%" TextMode="SingleLine" CausesValidation="True"></asp:TextBox>
                            <div style="text-align: center;">
                                <iframe id="MapFrame" runat="server" frameborder="0" width="800px" scrolling="no"
                                    height="400px"></iframe>
                            </div>
                            <div>
                                Titolo percorso:
                                <asp:RequiredFieldValidator ID="TextBoxTitleRequiredFieldValidator" runat="server"
                                    ErrorMessage="Campo obbligatorio!" ControlToValidate="TextBoxTitle" Display="Dynamic"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                            <asp:TextBox ID="TextBoxTitle" runat="server" Width="100%" CausesValidation="True"></asp:TextBox>
                            <div>
                                Descrizione:
                                <asp:RequiredFieldValidator ID="TextBoxDescriptionRequiredFieldValidator" runat="server"
                                    ErrorMessage="Campo obbligatorio!" ControlToValidate="TextBoxDescription" Display="Dynamic"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                            <asp:TextBox ID="TextBoxDescription" runat="server" Width="100%" TextMode="MultiLine"
                                CausesValidation="True" Rows="5"></asp:TextBox>
                            <div>
                                Percentuale di ciclabilit�:
                                <asp:RangeValidator ID="TextBoxCiclyngRangeValidator" runat="server" ErrorMessage="Inserire un valore fra 0 e 100!"
                                    Type="Integer" ControlToValidate="TextBoxCiclyng" Display="Dynamic" SetFocusOnError="True"
                                    MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
                                <asp:RequiredFieldValidator ID="TextBoxCiclyngRequiredFieldValidator" runat="server"
                                    ErrorMessage="Campo obbligatorio!" ControlToValidate="TextBoxCiclyng" Display="Dynamic"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                            <asp:TextBox ID="TextBoxCiclyng" runat="server" Width="100%" TextMode="SingleLine"
                                CausesValidation="True"></asp:TextBox>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </fieldset>
                <asp:UpdatePanel ID="UpdatePanelDifficulty" runat="server" ChildrenAsTriggers="true"
                    UpdateMode="Conditional">
                    <ContentTemplate>
                        <fieldset title="Difficolt� tecnica">
                            <legend>Difficolt� tecnica</legend>
                            <div class="comboLevel">
                                Salita:
                                <asp:DropDownList ID="DropDownListClimb" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListClimb_SelectedIndexChanged">
                                    <asp:ListItem>Seleziona una difficolt�</asp:ListItem>
                                    <asp:ListItem>TC</asp:ListItem>
                                    <asp:ListItem>MC</asp:ListItem>
                                    <asp:ListItem>BC</asp:ListItem>
                                    <asp:ListItem>OC</asp:ListItem>
                                    <asp:ListItem>EC</asp:ListItem>
                                </asp:DropDownList>
                                <asp:CheckBox ID="CheckBoxClimb" runat="server" Text="Significativi tratti con forti pendenze"
                                    AutoPostBack="true" OnCheckedChanged="CheckBoxClimb_CheckedChanged" />
                                <asp:Label Style="display: block;" ID="LabelClimb" runat="server"></asp:Label>
                            </div>
                            <div class="comboLevel">
                                Discesa:
                                <asp:DropDownList ID="DropDownListDown" runat="server" OnSelectedIndexChanged="DropDownListDown_SelectedIndexChanged"
                                    AutoPostBack="True">
                                    <asp:ListItem>Seleziona una difficolt�</asp:ListItem>
                                    <asp:ListItem>TC</asp:ListItem>
                                    <asp:ListItem>MC</asp:ListItem>
                                    <asp:ListItem>BC</asp:ListItem>
                                    <asp:ListItem>OC</asp:ListItem>
                                    <asp:ListItem>EC</asp:ListItem>
                                </asp:DropDownList>
                                <asp:CheckBox ID="CheckBoxDown" runat="server" Text="Significativi tratti con forti pendenze"
                                    AutoPostBack="true" OnCheckedChanged="CheckBoxDown_CheckedChanged" />
                                <asp:Label Style="display: block;" ID="LabelDown" runat="server"></asp:Label>
                            </div>
                            <div>
                                Difficolt� complessiva:
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxDifficulty" runat="server"
                                    ErrorMessage="Campo obbligatorio!" ControlToValidate="TextBoxDifficulty" Display="Dynamic"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBoxDifficulty" runat="server" TextMode="SingleLine" CausesValidation="True"
                                    Enabled="false"></asp:TextBox>
                                <a target="MTBCAI" href="http://www.mtbcai.it/scaladifficolta.asp" title="Per saperne di pi�...">
                                    Per saperne di pi�...</a>
                            </div>
                        </fieldset>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <fieldset title="Immagini">
                    <legend>Immagini</legend>
                    <asp:UpdatePanel ID="UpdatePanelImages" runat="server" ChildrenAsTriggers="true"
                        UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Button runat="server" CausesValidation="false" ID="ReloadImages" Style="display: none" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <iframe id="UploadImageFrame" runat="server" frameborder="0" width="100%" scrolling="no"
                        height="100px;"></iframe>
                </fieldset>
                <div style="text-align: center">
                    <asp:CheckBox ID="CheckBoxSendMail" runat="server" 
                        Text="Manda la mail di notifica agli utenti registrati" />
                        <br />
                    <asp:Button ID="ButtonSave" runat="server" Text="Salva" OnClick="ButtonSave_Click" />
                <asp:Button ID="ButtonDelete" runat="server" Text="Elimina questo percorso" 
                        CausesValidation="false" OnClientClick="return confirmDelete();" onclick="ButtonDelete_Click" /></div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
