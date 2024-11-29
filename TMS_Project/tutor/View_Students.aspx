<%@ Page Title="" Language="C#" MasterPageFile="~/tutor/Tutor_Dashboard.Master" AutoEventWireup="true" CodeBehind="View_Students.aspx.cs" Inherits="TMS_Project.tutor.View_Students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br>
    <div class="row">

        <div class="col-md-12 ">

            <h1 class="jumbotron bg-dark text-white text-center">STUDENTS DATA</h1>

        </div>
    </div>
    <br />
    <div class="row">
    <div class="col-md-4">
        <div class="input-group">

            <asp:TextBox ID="SearchText" class="form-control" placeholder="Search students" runat="server"></asp:TextBox>
            <div class="input-group-append">
                <button id="SearchBtn" runat="server" onserverclick= "SearchBtn_ServerClick" class="btn btn-secondary" type="button">
                    <i class="fa fa-search"></i>
                </button>

            </div>
        </div>


    </div>

</div>
    <br/>
    <div class="row">

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <div class="col-md-4">
                    <div class="card bg-dark text-white text-center">
                        <div class="card-header">
                            <small style="font-size: 15px; color: steelblue;">Name </small>
                            <h3>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                                 <asp:Label ID="Label7" runat="server" Text='<%# Bind("father_name") %>'></asp:Label>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("surname") %>'></asp:Label>
                           </h3>
                        </div>
                        <div class="card-body">
                            <small style="font-size: 15px; color: steelblue;">Gender</small>
                            <h5>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">Country</small>
                            <h5>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("country") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">City</small>
                            <h5>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">Subject </small>
                            <h5>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">Contact </small>
                            <h5>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("contactno") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">Tution Type </small>
                            <h5>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("tutiontype") %>'></asp:Label>
                            </h5>

                        </div>
                        <div class="card-footer">
                            <small style="font-size: 15px; color: steelblue;">Class</small>
                            <h5>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("standard") %>'></asp:Label>
                            </h5>
                        </div>
                    </div>
                    <br />
                </div>
           

            </ItemTemplate>
        </asp:Repeater>
     </div>
</asp:Content>
