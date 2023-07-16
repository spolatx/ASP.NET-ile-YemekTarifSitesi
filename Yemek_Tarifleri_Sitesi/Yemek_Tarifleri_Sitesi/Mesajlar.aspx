<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
            background-color: #99CCFF;
        }
        .auto-style7 {
            text-align: right;
            width: 69px;
        }
        .auto-style8 {
            text-align: left;
            width: 70px;
        }
        .auto-style11 {
            text-align: left;
            width: 341px;
        }
        .auto-style14 {
            text-align: left;
            width: 50px;
        }
        .auto-style15 {
            text-align: justify;
            width: 28px;
        }
        .auto-style16 {
            text-align: left;
            width: 71px;
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style17 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
        <table class="auto-style4">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="BtnArti" runat="server" CssClass="auto-style16" Height="30px" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style14"><strong>
                    <asp:Button ID="BtnEksi" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" />
                    </strong></td>
                <td class="auto-style3">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("MesajAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                         
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/update-icon-png-18.jpg" Width="35px" CssClass="auto-style17" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
