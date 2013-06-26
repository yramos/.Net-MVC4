<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MVC4ProjetTest.Models.SignInModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    SignIn
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>SignIn</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>SignInModel</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.login) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.login) %>
            <%: Html.ValidationMessageFor(model => model.login) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.email) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.email) %>
            <%: Html.ValidationMessageFor(model => model.email) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.confirmEmail) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.confirmEmail) %>
            <%: Html.ValidationMessageFor(model => model.confirmEmail) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.password) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.password) %>
            <%: Html.ValidationMessageFor(model => model.password) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.confirmPassword) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.confirmPassword) %>
            <%: Html.ValidationMessageFor(model => model.confirmPassword) %>
        </div>

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
