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
            return confirm("Sei sicuro di cancellare questo percorso? Tutti i dati associati andranno persi, l'operazione è irreversibile. Vuoi proseguire?");
        }
        setInterval(ping, 300000);
        function ping() {
            $(".buttondummy").click();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPanel" runat="Server">
    <div id="ContentPanel" class="ContentPanel" style="text-align: left">
        <h1>
            Inserisci o modifica i dati del tuo percorso</h1>
        <p>
            Ecco alcune linee guida per inserire il tuo percorso:</p>
        <ul>
            <li>Carica il tracciato GPS del percorso; deve trattarsi di un file GPX, se il formato
                del tuo file non corrisponde esistono in rete molti strumenti di conversione.</li>
            <li>Scegli un titolo per il percorso: per omogeneità è preferibile utilizzare la sequenza
                di località toccate dal percorso stesso (es. Montoggio - Casella - Val Brevenna
                - Carsi - Carsegli - Montoggio).</li>
            <li>Fornisci una descrizione di dettaglio: caratteristiche del fondo, tecnicità, punti
                panoramici, punti di attenzione, punti di rifornimento idrico, in generale ogni
                informazioni che reputi possa tornare utile a chi desideri affrontare il percorso.</li>
            <li>Indica una percentuale di ciclabilità da zero a cento (ovviamente indicativa, spesso
                la ciclabilità di un percorso è funzione di fattori variabili come le condizioni
                meteorologiche, le abilità tecniche del biker, le condizioni di allenamento, ecc..).</li>
            <li>Scegli un livello di difficoltà fra quelli disponibili (suddiviso fra salita e discesa).
                Tenuto conto che anche in questo caso il fattore soggettivo è imprescindibile, si
                è scelto di adottare la scala di difficoltà proposta dal CAI.</li>
            <li>Carica le foto del tuo percorso (opzionale ma consigliato). Puoi sincronizzare
                data e ora della tua fotocamera con data e ora del tuo GPS; il motore del sito provvederà,
                riconciliando queste informazioni, ad inserire le informazioni di geolocalizzazione
                nelle tue foto, così le troverai posizionate sulla traccia nel punto esatto in cui sono state scattate.</li>
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
                                Percentuale di ciclabilità:
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
                        <fieldset title="Difficoltà tecnica">
                            <legend>Difficoltà tecnica</legend>
                            <div class="comboLevel">
                                Salita:
                                <asp:Panel runat="server" ID="ClimbPanel">
                                    <asp:RadioButton ID="TC_Climb" AutoPostBack="true" GroupName="Climb" runat="server"
                                        Checked="true" OnCheckedChanged="Radio_SelectedChanged" /><br />
                                    <asp:RadioButton ID="MC_Climb" AutoPostBack="true" GroupName="Climb" runat="server"
                                        OnCheckedChanged="Radio_SelectedChanged" /><br />
                                    <asp:RadioButton ID="BC_Climb" AutoPostBack="true" GroupName="Climb" runat="server"
                                        OnCheckedChanged="Radio_SelectedChanged" /><br />
                                    <asp:RadioButton ID="OC_Climb" AutoPostBack="true" GroupName="Climb" runat="server"
                                        OnCheckedChanged="Radio_SelectedChanged" /><br />
                                    <asp:RadioButton ID="EC_Climb" AutoPostBack="true" GroupName="Climb" runat="server"
                                        OnCheckedChanged="Radio_SelectedChanged" /><br />
                                </asp:Panel>
                                <asp:CheckBox ID="CheckBoxClimb" runat="server" Text="Significativi tratti con forti pendenze"
                                    AutoPostBack="true" OnCheckedChanged="CheckBoxClimb_CheckedChanged" />
                            </div>
                            <div class="comboLevel">
                                Discesa:
                                <asp:Panel runat="server" ID="DownPanel">
                                    <asp:RadioButton ID="TC_Down" AutoPostBack="true" GroupName="Down" runat="server"
                                        OnCheckedChanged="Radio_SelectedChanged" Checked="true" /><br />
                                    <asp:RadioButton ID="MC_Down" AutoPostBack="true" GroupName="Down" runat="server"
                                        OnCheckedChanged="Radio_SelectedChanged" /><br />
                                    <asp:RadioButton ID="BC_Down" AutoPostBack="true" GroupName="Down" runat="server"
                                        OnCheckedChanged="Radio_SelectedChanged" /><br />
                                    <asp:RadioButton ID="OC_Down" AutoPostBack="true" GroupName="Down" runat="server"
                                        OnCheckedChanged="Radio_SelectedChanged" /><br />
                                    <asp:RadioButton ID="EC_Down" AutoPostBack="true" GroupName="Down" runat="server"
                                        OnCheckedChanged="Radio_SelectedChanged" /><br />
                                </asp:Panel>
                                <asp:CheckBox ID="CheckBoxDown" runat="server" Text="Significativi tratti con forti pendenze"
                                    AutoPostBack="true" OnCheckedChanged="CheckBoxDown_CheckedChanged" />
                            </div>
                            <div>
                                Difficoltà complessiva:
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxDifficulty" runat="server"
                                    ErrorMessage="Campo obbligatorio!" ControlToValidate="TextBoxDifficulty" Display="Dynamic"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBoxDifficulty" runat="server" TextMode="SingleLine" CausesValidation="True"
                                    Enabled="false"></asp:TextBox>
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
                        ></iframe>
                </fieldset>
                <fieldset title="Pubblicazione">
                    <legend>Pubblicazione</legend>
                    <div style="text-align:center;"><asp:CheckBox ID="CheckBoxPublished" runat="server" Text="Pubblicata" /></div>
                </fieldset>
                <div style="text-align: center">
                    <asp:Button ID="ButtonSave" runat="server" Text="Salva" OnClick="ButtonSave_Click" />
                    <asp:Button ID="ButtonDelete" runat="server" Text="Elimina questo percorso" CausesValidation="false"
                        OnClientClick="return confirmDelete();" OnClick="ButtonDelete_Click" /></div>
                <asp:Button ID="ButtonDummy" runat="server" CausesValidation="false" Style="display: none"
                    CssClass="buttondummy" OnClick="ButtonDummy_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
