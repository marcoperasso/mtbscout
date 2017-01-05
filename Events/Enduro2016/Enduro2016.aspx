<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="Enduro2016.aspx.cs" Inherits="Events_Enduro" %>

<%@ Register Src="../../ImageIterator.ascx" TagName="ImageIterator" TagPrefix="uc1" %>
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
					<h1>Enduro dei Fieschi</h1>
					<h2>Domenica 22 maggio 2016</h2>
				</td>
				<td>
					<img style="height: 100px; width: 100px" alt="Logo ENDURO" src="logo Enduro Dei Fieschi.png" /></td>
			</tr>
		</table>
		
		<uc1:ImageIterator ID="ImageIterator1" runat="server" ImagesPath="FotoRoberto"
			Title="Foto di Roberto" />
			<uc1:ImageIterator ID="ImageIterator2" runat="server" ImagesPath="FotoIlaria"
			Title="Foto di Ilaria" />
	</div>

</asp:Content>
