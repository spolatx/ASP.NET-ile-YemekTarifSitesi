<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            background-color: #99CCFF;
        }

        .auto-style7 {
            text-align: right;
        }

        .auto-style8 {
            font-size: large;
        }

        .auto-style9 {
            font-weight: bold;
            font-size: x-large;
        }

        .auto-style10 {
            width: 28px;
        }

        .auto-style11 {
            width: 250px;
        }

        .auto-style12 {
            width: 110px;
        }

        .auto-style13 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            padding: 17px 40px;
            border-radius: 10px;
            background-color: rgb(255, 56, 86);
            letter-spacing: 1.5px;
            font-size: 15px;
            transition: all .3s ease;
            box-shadow: rgb(201, 46, 70) 0px 10px 0px 0px;
            color: hsl(0, 0%, 100%);
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
        <table class="auto-style4">
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="BtnEksi" runat="server" CssClass="auto-style9" Height="30px" OnClick="BtnEksi_Click" Text="-" Width="30px" />
                </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="Kategoriler.aspx?KategoriId=<%#Eval("KategoriId")%>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/delete-icon-png-16.jpg" Width="30px" /></a>
                        </td>
                        <td class="auto-style7">
                            <a href="KategoriDuzenle.aspx?KategoriId=<%# Eval("KategoriId")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/update-icon-png-18.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style6" Style="margin-top: 5px;">
        <table class="auto-style4">
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Button ID="BtnArti0" runat="server" CssClass="auto-style9" Height="30px" Text="+" Width="30px" OnClick="BtnArti0_Click" />
                </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="BtnEksi0" runat="server" CssClass="auto-style9" Height="30px" Text="-" Width="30px" OnClick="BtnEksi0_Click" />
                </strong></td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style6">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TxtKategoriAd" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnKategoriEkle" runat="server" CssClass="auto-style13" Text="EKLE" OnClick="BtnKategoriEkle_Click" />
                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
