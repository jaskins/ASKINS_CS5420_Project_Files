<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SNS.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent2" runat="server">
  
<style>
        
/*    body */
/*    {*/
/*        background: #ccc;*/
/*    }*/

    .formclass 
    {
        padding: 20px;
        margin: 0px auto;
        background: #fff;
        width: 200px;
    }

    h2 
    {
        text-align: center;
    }

    input 
    {
        padding: 2px;
    }
    .auto-style1 {
        padding: 20px;
        margin: 0px auto;
        background: #fff;
        width: 278px;
    }
</style>

<%--<body>--%>
    <div class="auto-style1">
        <h2> Login Page </h2>
        <asp:TextBox ID="txtuser" CssClass="input" placeholder="User Name" runat="server" Width="237px"></asp:TextBox><br /><br />
            
        <asp:TextBox ID="txtpass" CssClass="input" placeholder="Password" TextMode="Password" runat="server" Width="237px">Password</asp:TextBox><br /><br />
            
        <asp:Button ID="btnlogin" CssClass="input" Width="100%" runat="server" Text="Login" OnClick="btnlogin_Click" />
    </div>
<%--</body>--%>

</asp:Content>
