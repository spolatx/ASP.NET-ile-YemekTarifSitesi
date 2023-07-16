<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            width: 30px;
        }
        .auto-style8 {
            width: 31px;
        }
        .auto-style9 {
            background-color: #99CCFF;
        }
    .auto-style10 {
        margin-left: 120px;
    }
    .auto-style11 {
        text-align: center;
        margin-left: 120px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style9">
        <table class="auto-style4">
            <tr>
                <td class="auto-style7"><strong>
                    <asp:Button ID="BtnArti" runat="server" CssClass="auto-style6" Height="30px" Text="+" Width="30px" OnClick="BtnArti_Click" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="BtnEksi" runat="server" CssClass="auto-style6" Height="30px" Text="-" Width="30px" OnClick="BtnEksi_Click" />
                    </strong></td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" Height="160px" TextMode="MultiLine" Width="438px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="BtnGuncelle" runat="server" CssClass="button" Text="GUNCELLE" Width="200px" OnClick="BtnGuncelle_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
