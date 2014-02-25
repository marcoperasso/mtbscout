<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="Admin.aspx.cs" Inherits="Admin"  ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPanel" runat="Server">
	<div id="ContentPanel">
	    <div>Query</div>
		<asp:TextBox ID="TextBoxQuery" runat="server" Height="159px" TextMode="MultiLine"
			Width="666px"></asp:TextBox>
		<br />
		<asp:Button ID="ButtonExecQuery" runat="server" OnClick="ButtonExecQuery_Click" Text="Esegui query" />
		<br />
		<asp:GridView Style="margin-left: auto; margin-right: auto;" ID="GridViewSelectResults"
			runat="server">
		</asp:GridView>
		<span>
			<br />
			Nome percorso</span>
		<asp:TextBox ID="TextBoxRouteName" runat="server"></asp:TextBox>
		<span>Offset (minuti)</span>
		<asp:TextBox ID="TextBoxOffset" runat="server"></asp:TextBox><br />
		<asp:Button ID="ButtonOffsetDate" runat="server" Text="Sposta data immagini" OnClick="ButtonOffsetDate_Click" />
		<br />
		<div>News letter</div>
		<asp:TextBox ID="TextBoxMail" runat="server" Height="159px" TextMode="MultiLine"
			Width="666px"></asp:TextBox>
		<br />
		<asp:Button ID="ButtonMail" runat="server" Text="Invia mail" 
            onclick="ButtonMail_Click" />
		<br />
		
		<asp:TextBox ID="TextBoxResult" runat="server" Height="76px" TextMode="MultiLine"
			Width="666px"></asp:TextBox><br />
		
	</div>
</asp:Content>
