<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ImageIterator.ascx.cs"
    Inherits="ImageIterator" %>
<%@ Register Src="PageCounter.ascx" TagName="PageCounter" TagPrefix="uc1" %>
<%@ Register Src="HorizontalSpot.ascx" TagName="Spot" TagPrefix="uc2" %>
<uc2:Spot ID="Spot1" runat="server" />
<h3 style="margin-top: 30px;" runat="server" id="ImagesTitle">
    Galleria fotografica</h3>
<asp:UpdatePanel ID="ImagesPanel" runat="server" UpdateMode="Conditional" RenderMode="Block">
    <ContentTemplate>
        <input type="hidden" runat="server" id="Start" value="0" />
        <asp:Panel ID="PagesUp" runat="server">
            <asp:LinkButton ID="Previous" runat="server" Visible="false" OnClick="Previous_Click">Foto precedenti</asp:LinkButton>
            <uc1:PageCounter ID="PageCounterUp" runat="server" />
        </asp:Panel>
        <asp:Panel ID="ImagesContainer" CssClass="ImagesContainer" runat="server">
        </asp:Panel>
        <asp:Panel ID="PagesDown" runat="server">
            <asp:LinkButton ID="Next" runat="server" Visible="false" OnClick="Next_Click">Foto successive</asp:LinkButton>
            <uc1:PageCounter ID="PageCounterDown" runat="server" />
        </asp:Panel>
    </ContentTemplate>
</asp:UpdatePanel>
<script type="text/javascript">
    function pageLoad(sender, args) {
        gallery();
    }

    function gallery() {
        $('.ImagesContainer').jGallery({
            mode: 'standard',
			transitionDuration: '0.4s',
			slideshowInterval: '4s',
			thumbWidth: 130
        });
    }
</script>
