<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newUser.aspx.cs" Inherits="SNS.newUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label Text="First Name" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtFirstName" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Middle Initial" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtMiddleInitial" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>            
            <tr>
                <td>
                    <asp:Label Text="Last Name" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtLastName" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>            
            <tr>
                <td>
                    <asp:Label Text="E-mail" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Address" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtAddress" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="City" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtCity" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="State" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtState" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>            
            <tr>
                <td>
                    <asp:Label Text="Zip" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtZip" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Phone Extension" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtPhoneExt" runat="server" Width="43px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Phone Number" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtPhoneNumber" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 67px">
                    <br />
                </td>
                <td colspan="6" style="height: 67px; width: 291px;">
                    <asp:Button Text="Add Customer" ID="btnAddCustomer" runat="server" OnClick="btnAddCustomer_Click"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="6">
                    <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
