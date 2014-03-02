﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu.ascx.cs" Inherits="Menu" %>
<div id="MenuContainer" class="Horiz">
    <ul style="margin: 0px">
        <%--<li runat="server" id="LiWhoWeAre" ><a runat="server" id="AWhoWeAre" href="~/whoweare/whoweare.aspx" title="Chi siamo">
            Chi siamo</a></li>
        <li>|</li>--%>
         <li runat="server" id="LiRoutes"><a runat="server" id="ARoutes" href="~/Routes/Routes.aspx" title="Percorsi">Percorsi</a>
        </li>
        <li>|</li>
         <li runat="server" id="LiAppointments"><a runat="server" id="AAppointments" href="~/Appointments.aspx" title="Appuntamenti">Appuntamenti</a>
        </li>
        <li>|</li>
        <li runat="server" id="LiSchool"><a runat="server" id="ASchool" href="~/School/School.aspx" title="Scuola di Mountain Bike">Scuola</a>
        </li>
        <li>|</li>
        <li runat="server" id="LiEvents"><a runat="server" id="AEvents" href="~/Events/Events.aspx" title="Eventi">Eventi</a>
        </li>
        <li>|</li>
       <li runat="server" id="LiLinks"><a runat="server" id="ALinks" href="~/Links.aspx" title="Links">Links</a>
        </li>
        <li>|</li>
        <li runat="server" id="LiUser"><a runat="server" id="AUser" href="~/User/User.aspx" title="Pannello utente">Pannello
            utente</a></li>
            <li>|</li>
        <li runat="server" id="LiBlog"><a runat="server" id="ABlog" href="~/Blog.aspx" title="Blog">Blog</a> </li>
        
        <li id="User" runat="server">
        <asp:LinkButton title="Disconnetti" ID="DisconnectButton" runat="server" OnClick="Disconnect_Click">
            <img id="Disconnect" runat="server" alt="Disconnetti" style="border: none;float:right;padding-right:15px;" />
        </asp:LinkButton></li>
    </ul>
</div>
