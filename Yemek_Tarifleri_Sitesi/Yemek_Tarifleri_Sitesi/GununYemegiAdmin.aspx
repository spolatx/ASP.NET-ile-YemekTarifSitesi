<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            background-color: #99CCFF;
        }

        .auto-style10 {
            width: 28px;
        }

        .auto-style9 {
            font-weight: bold;
            font-size: x-large;
        }

        .auto-style12 {
            width: 110px;
        }

        .auto-style11 {
            width: 250px;
        }

        .auto-style8 {
            font-size: large;
        }

        .auto-style7 {
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
        <table class="auto-style4">
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Button ID="BtnArti" runat="server" CssClass="auto-style9" Height="30px" Text="+" Width="30px" OnClick="BtnArti_Click" />
                    </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="BtnEksi" runat="server" CssClass="auto-style9" Height="30px" Text="-" Width="30px" OnClick="BtnEksi_Click" />
                    </strong></td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="450px">
                <itemtemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style7">
                               <a href="YemekDuzenle.aspx?YemekId=<%#Eval("YemekId")%>"> <asp:Image ID="ImgChoose" runat="server" Height="30px" ImageUrl="~/Icons/choices.png" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </itemtemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
        </asp:Content>
