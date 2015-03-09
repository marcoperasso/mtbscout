﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="SubscriptionList.aspx.cs" Inherits="SubscriptionList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
	<title>Preiscritti <%= EventInfo.CurrentEventName %></title>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/base/jquery-ui.css"
		type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPanel" runat="Server">
	<div id="ContentPanel" class="ContentPanel">
		<h1>Preiscritti <%= EventInfo.CurrentEventName %></h1>
		<h2><%= EventInfo.CurrentEventDate %></h2>
		<fieldset style="display: none">
			<legend>Messaggio</legend>

			<div>
				<asp:Button ID="ButtonSend" runat="server" Text="Invia"
					OnClick="ButtonSend_Click" />
			</div>
		</fieldset>

		<h3 runat="server" id="Total"></h3>
		<asp:GridView Style="margin-left: auto; margin-right: auto;" ID="GridViewSubscriptions"
			runat="server" AutoGenerateDeleteButton="False" AutoGenerateEditButton="False"
			Caption="Elenco dei partecipanti" AutoGenerateColumns="False">
		</asp:GridView>
	</div>
</asp:Content>
