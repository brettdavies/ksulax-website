<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<KSULax.Models.Game>>" %>
<asp:Content ContentPlaceHolderID="titleContent" runat="server"><% short? year = Model.ElementAtOrDefault<KSULax.Models.Game>(0).game_season_id; string title = ((year - 1) + " - " + year + " Game Schedule").Trim(); %><%= title %></asp:Content>
<asp:Content ContentPlaceHolderID="Header" runat="server">
<style type="text/css">.hidden { display:none; }</style>
<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
<script type="text/javascript" src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script>
</asp:Content>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<div id="leftCol">
<div class="boxItem menu">
<div class="boxTitle"><%= Html.ActionLink("Seasons", DateTime.Now.Year.ToString(), null, new { title="Seasons" })%></div>
<div class="boxContent">
<ul>
<li><%= Html.ActionLink("2010 - 2011", "2011", null, new { title = "2010 - 2011" })%></li>
<li><%= Html.ActionLink("2009 - 2010", "2010", null, new { title = "2009 - 2010" })%></li>
<li><%= Html.ActionLink("2008 - 2009", "2009", null, new { title = "2008 - 2009" })%></li>
<li><%= Html.ActionLink("2007 - 2008", "2008", null, new { title = "2007 - 2008" })%></li>
<li><%= Html.ActionLink("2006 - 2007", "2007", null, new { title = "2006 - 2007" })%></li>
<li><%= Html.ActionLink("2005 - 2006", "2006", null, new { title = "2005 - 2006" })%></li>
</ul>
</div>
<div class="boxBottom"></div>
</div>
<% Html.RenderPartial("SponsorsTemplate"); %>
</div>
<% short? year = Model.ElementAtOrDefault<KSULax.Models.Game>(0).game_season_id; string title = (year - 1) + " - " + year + " Game Schedule";%>
<div id="mainCol">
<div class="breadcrumbs"><%= Html.ActionLink("Home", "", "", null, new { title="Home" })%> > <%= Html.ActionLink("Games", "Index", new { id = string.Empty }, new { title="Games" })%> > <%= Html.ActionLink(year.ToString(), year.ToString(), null, new { title = year.ToString() })%></div>
<h1><%= title %></h1>
<% Html.RenderPartial("GameTemplate", Model); %>
<asp:Image ImageUrl="~/content/images/game_scrimage.png" Height="19" Width="19" ImageAlign="Top" AlternateText="Scrimmage" runat="server"/> Scrimmage
<asp:Image ImageUrl="~/content/images/game_divisional.png" Height="17" Width="17" ImageAlign="Top" AlternateText="Divisional Game" runat="server"/> Divisional Game
<asp:Image ImageUrl="~/content/images/game_playoff.png" Height="17" Width="17" ImageAlign="Top" AlternateText="Playoff Game" runat="server"/> Playoff Game
</div>
</asp:Content>