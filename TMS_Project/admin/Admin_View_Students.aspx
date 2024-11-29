<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_dashboard.Master" AutoEventWireup="true" CodeBehind="Admin_View_Students.aspx.cs" Inherits="TMS_Project.admin.View_Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br />
 <div class="row">

     <div class="col-md-12 ">

         <h1 class="jumbotron bg-dark text-white text-center"> VIEW STUDENTS DETAILS</h1>

     </div>
 </div>
  <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-striped table-dark" runat="server" AutoGenerateColumns="False" >

      <Columns>
        <asp:TemplateField HeaderText="ID">
             <ItemTemplate>
                    <asp:Label ID="LabelID" runat="server" Text='<%# Bind("student_id") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="NAME">
             <ItemTemplate>
                    <asp:Label ID="LabelName" runat="server" Text='<%# Bind("name") %>'></asp:Label>
             </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="FATHER_NAME">
              <ItemTemplate>
                    <asp:Label ID="LabelFatherName" runat="server" Text='<%# Bind("father_name") %>'></asp:Label>
             </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="SURNAME">
            <ItemTemplate>
                  <asp:Label ID="LabelSurName" runat="server" Text='<%# Bind("surname") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="GENDER">
            <ItemTemplate>
              <asp:Label ID="LabelGender" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
   
            <asp:TemplateField HeaderText="SUBJECT">
                <ItemTemplate>
                      <asp:Label ID="LabelSubject" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
               </ItemTemplate>
            </asp:TemplateField>
   

          <asp:TemplateField HeaderText="CONTACTNO">
                <ItemTemplate>
                      <asp:Label ID="LabelContactNo" runat="server" Text='<%# Bind("contactno") %>'></asp:Label>
               </ItemTemplate>
          </asp:TemplateField>
   
   
   
<%--        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" OnClientClick="return confirm('Are you sure to Delete Data ??')" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
            </ItemTemplate>
            <ControlStyle CssClass="btn btn-danger text-white" />
        </asp:TemplateField>--%>
    </Columns>
</asp:GridView>

</asp:Content>
