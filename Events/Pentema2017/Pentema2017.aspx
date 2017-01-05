<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Pentema2017.aspx.cs" Inherits="Events_Pentema2017" %>

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

                    <h1>Pedalata Benefica al Presepe di Pentema</h1>
                    <h2>Domenica 8 gennaio 2017</h2>

                </td>
                <td>
                    <img style="height: 100px; width: 100px" alt="Logo PRO LOCO" src="/Images/Logo Pro loco Montoggese.jpg" />
                </td>
            </tr>
            <tr>
                <p>
                    Escursione di gruppo su percorso misto (sterrato/asfalto) da Montoggio a Pentema. Percorso di andata circa 10Km, arrivo a Pentema in mattinata con possibilità di visitare il presepe. Rientro libero, o lungo il tragitto di andata o per sentieri.
                </p>
                <td colspan="3">
                    <p style="background-color: forestgreen;color:white;padding:10px" >
                        IL RICAVATO DELLA MANIFESTAZIONE, AL NETTO DELLE SPESE, SARA’ DEVOLUTO ALLE POPOLAZIONI TERREMOTATE DELL’ITALIA CENTRALE
                    </p>
                    <p>Percorso 'canonico':</p>
                    <a href="https://www.strava.com/activities/810389406">https://www.strava.com/activities/810389406</a>
                    <br />
                    <a href="https://www.dropbox.com/s/hyyl0co2f3raqmm/pentema.gpx?dl=0">Traccia GPS</a>
                    <p>
                        Buoni di Pentema - Costa Gallina - Montoggio:
                    </p>
                    <a href="https://www.dropbox.com/s/pk6fmu3nk7w8x9c/Buoni%20di%20Pentema%20-%20Costa%20Gallina%20-%20Montoggio.gpx?dl=0">Traccia GPS
                    </a>
                    <p>Madonna Guardia - Costa Gallina - Montoggio:</p>
                    <a href="https://www.dropbox.com/s/dt5g5heg7km6ndz/Madonna%20Guardia%20-%20Costa%20Gallina%20-%20Montoggio.gpx?dl=0">Traccia GPS                        
                    </a>
                    <p>Monte Spigo - Fallarosa - Montemoro - Montoggio:</p>
                    <a href="https://www.dropbox.com/s/nl4xvae2epibtgs/Monte%20Spigo%20-%20Fallarosa%20-%20Montemoro%20-%20Montoggio.gpx?dl=0">Traccia GPS</a>

                    <p>
                        Per chi opta per la Costa della Gallina, è prevista una variante che arriva a Montoggio passando per Carsegli:
                    </p>
                    <a href="https://www.dropbox.com/s/vnxbhi7a1hb6209/Discesa%20a%20Carsegli.gpx?dl=0">Traccia GPS</a>
                </td>
            </tr>
        </table>

    </div>

</asp:Content>
