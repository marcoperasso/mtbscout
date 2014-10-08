﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Subscriptions.aspx.cs" Inherits="User_Subscriptions" %>
<%@ Register TagName="Captcha" TagPrefix="Controls" Src="~/Control/Captcha.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Preiscrizione Tourist Trophy Torriglia 2014</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/base/jquery-ui.css"
        type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPanel" runat="Server">
    <div id="ContentPanel" class="ContentPanel">
        <h1>
            Preiscrizione 
			Tourist Trophy Torriglia 2014</h1>
        <h2>
            Domenica 5 
			agosto 2014</h2>
        <%--<asp:GridView style="margin-left:auto; margin-right:auto;" ID="GridViewSubscriptions" runat="server" AutoGenerateDeleteButton="False"
			AutoGenerateEditButton="False" Caption="Elenco dei partecipanti che hai registrato" 
			onrowdeleting="GridViewSubscriptions_RowDeleting" 
			onrowediting="GridViewSubscriptions_RowEditing" AutoGenerateColumns="False">
		</asp:GridView>--%>
        <fieldset>
            <legend>Dati utente</legend>
            <asp:HiddenField ID="SubscriptionId" runat="server" />
            <table style="margin-left: auto; margin-right: auto; margin-top: 20px; text-align: left;">
                <tbody>
                    <tr>
                        <td>
                            Nome
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxName" runat="server" CausesValidation="True" Width="330px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName"
                                ErrorMessage="Campo obbligatorio!">Campo obbligatorio!</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Cognome
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxSurname" runat="server" Width="330px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxSurname"
                                ErrorMessage="Campo obbligatorio!">Campo obbligatorio!</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mail
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxMail" runat="server" Width="330px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxMail"
                                ErrorMessage="Campo obbligatorio!" Display="Dynamic">Campo obbligatorio!</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxMail"
                                ErrorMessage="Indirizzo non valido!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                Display="Dynamic">Indirizzo non valido!</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Data di nascita
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxBirthDate" runat="server" Width="330px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBirth" runat="server" ControlToValidate="TextBoxBirthDate"
                                ErrorMessage="Campo obbligatorio!" Display="Dynamic">Campo obbligatorio!</asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="CustomValidatorBirth" runat="server" ControlToValidate="TextBoxBirthDate"
                                ErrorMessage="Formato data non valido! Formato ammesso: 'gg/mm/aaaa'" OnServerValidate="CustomValidatorBirth_ServerValidate"
                                Display="Dynamic">Formato data non valido! Formato ammesso: &#39;gg/mm/aaaa&#39;</asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Sesso
                        </td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonListGender" runat="server" AutoPostBack="false"
                                RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">Maschio</asp:ListItem>
                                <asp:ListItem>Femmina</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Associazione o gruppo
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxGroup" runat="server" Width="330px"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                Scrivi questo codice di verifica: <Controls:Captcha ID="captcha" runat="server"  />
                            
                        </td>
                        <td>
                       
                            <asp:TextBox runat="server" Width="330px" ID="Check" Style="display: inline"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Check"
                                ErrorMessage="Campo obbligatorio!" Display="Dynamic">Campo obbligatorio!</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <asp:Button ID="ButtonSave" runat="server" Text="Invia iscrizione" OnClick="ButtonSave_Click" />
        </fieldset>
    
        <script type="text/javascript">
            mtb$ = jQuery.noConflict();
            mtb$(function () {
                try {
                    mtb$("#ctl00_ContentPanel_TextBoxBirthDate").datepicker({
                        dateFormat: 'dd/mm/yy',
                        dayNames: ['Domenica', 'Lunedì', 'Martedì', 'Mercoledì', 'Giovedì', 'Venerdì', 'Sabato'],
                        dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mer', 'Gio', 'Ven', 'Sab'],
                        dayNamesMin: ['Do', 'Lu', 'Ma', 'Me', 'Gi', 'Ve', 'Sa'],
                        monthNames: ['Gennaio', 'Febbraio', 'Marzo', 'Aprile', 'Maggio', 'Giugno', 'Luglio', 'Agosto', 'Settembre', 'Ottobre', 'Novembre', 'Dicembre'],
                        gotoCurrent: true,
                        nextText: 'Successivo',
                        prevText: 'Precedente',
                        firstDay: 1
                    });
                }
                catch (e) {
                    alert(e);
                }
            });
       
        </script>
    </div>
</asp:Content>
