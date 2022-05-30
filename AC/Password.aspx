<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="AC.Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
        <body>
              <div class="container">
                   <div class="card border-secondary mb-3" style="max-width: 30rem;">
  <div class="card-header">Changer Mot de Passe</div>
  <div class="card-body text-secondary">
    <h5 class="card-title">Changer Mot de Passe</h5>
                <div class="div">
                    <table>
                        <tr>
                            <td>Ancien Mot de passe</td><td>:</td>
                            <td>
                                <asp:TextBox ID="AncienPass" runat="server" CssClass="textbox"></asp:TextBox></td>
                        </tr>
                        <tr>
                             <td>Nouveau Mot de passe</td><td>:</td>
                            <td>
                                <asp:TextBox ID="NouveauPass" runat="server" CssClass="textbox"></asp:TextBox></td>
                        </tr>
                        <tr>
  <td>Confirmer Mot de passe</td><td>:</td>
                            <td>
                                <asp:TextBox ID="ConfirmerPass" runat="server" CssClass="textbox"></asp:TextBox></td>
                        </tr>
                       
                        <tr>
                            <td colspan="3">
                               
                                <asp:Button ID="Button1" runat="server" Text="Valider"  class="btn btn-primary" OnClick="Button1_Click" />
                                 <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                    </div></div></div>    
                  
        </body>
    </html>
</asp:Content>
