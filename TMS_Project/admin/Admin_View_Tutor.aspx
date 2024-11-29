<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_dashboard.Master" AutoEventWireup="true" CodeBehind="Admin_View_Tutor.aspx.cs" Inherits="TMS_Project.admin.Admin_View_Tutor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <br />
 <div class="row">

     <div class="col-md-12 ">

         <h1 class="jumbotron bg-dark text-white text-center"> VIEW TUTOR DETAILS</h1>

     </div>
 </div>
    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-striped table-dark" runat="server"></asp:GridView>




</asp:Content>
