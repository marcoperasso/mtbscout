﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RouteHeader.ascx.cs" Inherits="RouteHeader" %>
<h2 id="Title" runat="server">
</h2>
<table runat="server" id="Table" class="RouteData">
	<tr>
		<td>
			Percorso inserito da:
		</td>
		<td id="Owner" runat="server">
		</td>
	</tr>
	<tr>
		<td>
			Lunghezza:
		</td>
		<td id="Lenght" runat="server">
		</td>
	</tr>
	<%--<tr>
		<td>
			Dislivello totale:
		</td>
		<td id="TotalHeight" runat="server">
		</td>
	</tr>--%>
	<tr>
		<td>
			Quota massima:
		</td>
		<td id="MaxHeight" runat="server">
		</td>
	</tr>
	<tr>
		<td>
			Quota minima:
		</td>
		<td id="MinHeight" runat="server">
		</td>
	</tr>
	<tr>
		<td>
			Ciclabilità:
		</td>
		<td id="Cycle" runat="server">
		</td>
	</tr>
	<tr>
		<td>
			Difficoltà:
		</td>
		<td>
		<span id="Difficulty" runat="server" />
		</td>
	</tr>
	<tr>
		<td runat="server" id="RankLabel">
			Voto:
		</td>
		<td id="Rank" runat="server">
			<asp:HyperLink runat="server" ID="RankDetailLink" title="Visualizza dettaglio voti">
				<div style="width: 100px; height: 20px;">
					<div runat="server" id="RankIndicator">
					</div>
					<asp:Image runat="server" alt="Voto" Style="width: 100px; height: 20px; position: absolute;
						z-index: 10;" ImageUrl="~/Images/Rank.png" />
				</div>
			</asp:HyperLink>
		</td>
	</tr>
</table>
