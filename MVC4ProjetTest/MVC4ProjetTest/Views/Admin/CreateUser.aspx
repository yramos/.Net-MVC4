<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MVC4ProjetTest.Models.CreateUserModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CreateUser
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>CreateUser</h2>

<% using (Ajax.BeginForm("CreateUser", new AjaxOptions() { HttpMethod = "POST" })) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>CreateUserModel</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.nom) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.nom) %>
            <%: Html.ValidationMessageFor(model => model.nom) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.motdepasse) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.motdepasse) %>
            <%: Html.ValidationMessageFor(model => model.motdepasse) %>
        </div>

        <input />
        <p>
            <input type="submit" value="Create" />
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
