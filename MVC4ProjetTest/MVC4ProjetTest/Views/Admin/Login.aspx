<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MVC4ProjetTest.Models.AdminLoginModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Login</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>AdminLoginModel</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.login) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.login) %>
            <%: Html.ValidationMessageFor(model => model.login) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.password) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.password) %>
            <%: Html.ValidationMessageFor(model => model.password) %>
        </div>

        <p>
            <input type="submit" value="Login" />
        </p>
    </fieldset>
<% } %>
<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
