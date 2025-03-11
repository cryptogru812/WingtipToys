<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CheckoutError.aspx.cs" Inherits="Checkout_CheckoutError" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Checkout Error</h1>
    <p></p>
    <table id="ErrorTable">
        <tr>
            <td class="field"></td>
            <td><%= Request.QueryString.Get("ErrorCode") %></td>
        </tr>
        <tr>
            <td class="field"></td>
            <td><%= Request.QueryString.Get("Desc") %></td>
        </tr>
        <tr>
            <td class="field"></td>
            <td><%= Request.QueryString.Get("Desc2") %></td>
        </tr>
    </table>
    <p></p>
</asp:Content>

