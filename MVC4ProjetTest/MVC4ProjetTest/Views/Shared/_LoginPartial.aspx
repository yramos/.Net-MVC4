<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<% if (false) { %>
    Bonjour, <%: Html.ActionLink(User.Identity.Name, "Manage", "Account", routeValues: null, htmlAttributes: new { @class = "username", title = "Gérer" }) %>!
    <% using (Html.BeginForm("LogOff", "Account", FormMethod.Post, new { id = "logoutForm" })) { %>
        <%: Html.AntiForgeryToken() %>
        <a href="javascript:document.getElementById('logoutForm').submit()">Logout</a>
    <% } %>
<% } else { %>
    <ul>
        <li><a href="/Login/Index">Authentication</a></li>
        <li><a href="/Login/SignIn">Register</a></li>
    </ul>
<% } %>