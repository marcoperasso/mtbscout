<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="User.aspx.cs" Inherits="User_User" %>

<%@ Register Assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
	Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<style type="text/css">
input[type='text']
{
    width: 100%;
    }
    .newroutebutton
    {
        float:left;position: relative;top: 40px;left: 80px;background-color:yellow; font-size:large;
  border-radius: 15px;cursor:pointer;
        }
</style>
	<script type="text/javascript">
		function onCanSave() {
			if (!document.getElementById("CheckboxPrivacy").checked) {
				alert("Per salvare il profilo occorre acconsentire al trattamento dei dati personali!");
				return false;
			}
			return true;
}

	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPanel" runat="Server">
	<div id="ContentPanel" class="ContentPanel">
		<asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
			<ContentTemplate>
				<h1>
					Pannello utente</h1>
				<table style="margin-left: auto; margin-right: auto; margin-top: 20px; text-align: left;">
					<tbody>
						<tr>
							<td>
								Nome
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName"
									ErrorMessage="Campo obbligatorio!">Campo obbligatorio!</asp:RequiredFieldValidator>
							</td>
							<td>
								<asp:TextBox ID="TextBoxName" runat="server" CausesValidation="True" ></asp:TextBox>
							</td>
							
						</tr>
						<tr>
							<td>
								Cognome
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxSurname"
									ErrorMessage="Campo obbligatorio!">Campo obbligatorio!</asp:RequiredFieldValidator>
							</td>
							<td>
								<asp:TextBox ID="TextBoxSurname" runat="server" > </asp:TextBox>
							</td>
							
						</tr>
						<tr>
							<td>
								Nickname
							</td>
							<td>
								<asp:TextBox ID="TextBoxNickname" runat="server"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>
								Mail
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxMail"
									ErrorMessage="Campo obbligatorio!" Display="Dynamic">Campo obbligatorio!</asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxMail"
									ErrorMessage="Indirizzo non valido!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
									Display="Dynamic">Indirizzo non valido!</asp:RegularExpressionValidator>
							</td>
							<td>
								<asp:TextBox ID="TextBoxMail" runat="server" ></asp:TextBox>
							</td>
							
						</tr>
						<tr>
							<td>
								Data di nascita
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorBirth" runat="server" ControlToValidate="TextBoxBirthDate"
									ErrorMessage="Campo obbligatorio!" Display="Dynamic">Campo obbligatorio!</asp:RequiredFieldValidator>
								<asp:CustomValidator ID="CustomValidatorBirth" runat="server" ControlToValidate="TextBoxBirthDate"
									ErrorMessage="Formato data non valido! Formato ammesso: 'gg/mm/aaaa'" OnServerValidate="CustomValidatorBirth_ServerValidate"
									Display="Dynamic">Formato data non valido! Formato ammesso: &#39;gg/mm/aaaa&#39;</asp:CustomValidator>
							</td>
							<td>
								<asp:TextBox ID="TextBoxBirthDate" runat="server" ></asp:TextBox>
							</td>
							
						</tr>
						<tr>
							<td>
								Codice Postale
							</td>
							<td>
								<asp:TextBox ID="TextBoxZip" runat="server" ></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>
								Sesso
							</td>
							<td>
								<asp:RadioButtonList ID="RadioButtonListGender" runat="server" AutoPostBack="True"
									RepeatDirection="Horizontal">
									<asp:ListItem>Maschio</asp:ListItem>
									<asp:ListItem>Femmina</asp:ListItem>
									<asp:ListItem Selected="True">Non specificato</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td>
								Bici 1
							</td>
							<td>
								<asp:TextBox ID="TextBoxBike1" runat="server" ></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>
								Bici 2
							</td>
							<td>
								<asp:TextBox ID="TextBoxBike2" runat="server" ></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>
								Bici 3
							</td>
							<td>
								<asp:TextBox ID="TextBoxBike3" runat="server" ></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>
							</td>
							<td>
								<asp:CheckBox ID="CheckBoxMailList" runat="server"  Text="Voglio ricevere e-mail sulle novità del sito">
								</asp:CheckBox>
							</td>
						</tr>
                        <tr>
							<td>
							</td>
							<td>
								<input id="CheckboxPrivacy" type="checkbox"  title="Acconsento al trattamento dei miei dati personali" / >
								<label for="CheckboxPrivacy">Acconsento al trattamento dei miei dati personali</label>
								</td>
								
						</tr>
					</tbody>
				</table>
				<div>
					<asp:Button ID="ButtonSave" runat="server" Text="Salva profilo" 
						OnClick="ButtonSave_Click" onclientclick="return onCanSave();" />
                       
				</div>
				<asp:Panel ID="MyRoutesPanel" runat="server">
					<h2>
						I miei percorsi</h2> 
                        <asp:Button CssClass="newroutebutton"  ID="Button1" runat="server" Text="Crea nuovo percorso..." 
						OnClick="ButtonNewRoute_Click"  />
                      
					<iframe id="MyRoutes" runat="server" style="width: 100%; height: 600px;" scrolling="no"
						frameborder="yes" noresize="noresize"></iframe>
                        
				</asp:Panel>
			</ContentTemplate>
		</asp:UpdatePanel>
	</div>
</asp:Content>
