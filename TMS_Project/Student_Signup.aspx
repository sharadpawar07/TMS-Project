<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TMS_Project.Student_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="ShadowBox.css" rel="stylesheet" />
    <br/>

    <div class="container shadow-box">
            <br />
            <div class="row">
                 <div class="col-md-12" >
                   <h1 class="jumbotron bg-primary text-white text-center"> Student SignUp </h1 >
                 </div>
            </div>
            
            <div class="row">
                    <div class="col-md-4 ">
                        <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Father name is Required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Surname is Required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="GenderDropDownList" InitialValue="Select Gender" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Age is required"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="AgeTextBox" runat="server" ErrorMessage="Age should be within 6 to 50" Display="Dynamic" ForeColor="Red" MaximumValue="50" MinimumValue="6" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                        <br />
                     
                       
                      
                        <asp:DropDownList ID="CountryDropDownList"  CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CountryDropDownList_SelectedIndexChanged" >
                        </asp:DropDownList>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator61" InitialValue="Select Country" ControlToValidate="CountryDropDownList" ForeColor="Red"  Display="Dynamic"  runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
                        
                          
                        
                    </div>

                    <div class="col-md-4">
                           
                     
                        <asp:DropDownList ID="CityDropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" InitialValue="Select City"  ControlToValidate="CityDropDownList1" ForeColor="Red"  Display="Dynamic" runat="server" SetFocusOnError="true" ErrorMessage="City  is Required"></asp:RequiredFieldValidator>
                        <br />
                             <asp:TextBox ID="AddressTextBox" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Enter Address" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                         <br />
                            <asp:TextBox  ID="ClassTextBox" CssClass="form-control"  placeholder="Enter Class" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="ClassTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Class is Required"></asp:RequiredFieldValidator>
                        <br />
                            <asp:DropDownList ID="GoingToDropDownList1" CssClass="form-control" runat="server">
                                <asp:ListItem>Select Going To </asp:ListItem>
                                <asp:ListItem>School</asp:ListItem>
                                <asp:ListItem>College</asp:ListItem>
                                <asp:ListItem>University</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" InitialValue="Select Going To" ControlToValidate="GoingToDropDownList1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Going To is Required"></asp:RequiredFieldValidator>
                        <br/>
                             <asp:TextBox ID="SubjectTextBox" CssClass="form-control"  placeholder="Enter Subject" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>
                    </div>
                   
                     <div class="col-md-4">
                   
                            <asp:TextBox ID="ContactTextBox" CssClass="form-control"  placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Contact Number is Required"></asp:RequiredFieldValidator>
                         <br />
                             <asp:DropDownList ID="TutionTypeDropDownList1" CssClass="form-control" runat="server">
                                 <asp:ListItem>Select Tution Type</asp:ListItem>
                                 <asp:ListItem>Online</asp:ListItem>
                                 <asp:ListItem>Physical</asp:ListItem>
                              </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" InitialValue="Select Tution Type" ControlToValidate="TutionTypeDropDownList1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Tution Type is Required"></asp:RequiredFieldValidator>
                             <br />
                                 <asp:DropDownList ID="TutorPreferDropDownList1" CssClass="form-control" runat="server">
                                     <asp:ListItem>Select Tutor Prefer</asp:ListItem>
                                     <asp:ListItem>Graduate</asp:ListItem>
                                     <asp:ListItem>Master</asp:ListItem>
                                     <asp:ListItem>MPHIL</asp:ListItem>
                                     <asp:ListItem>PHD</asp:ListItem>
                                     <asp:ListItem>Other</asp:ListItem>
                                 </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" InitialValue="Select Tutor Prefer" ControlToValidate="TutorPreferDropDownList1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Tutor prefer is Required"></asp:RequiredFieldValidator>
                           <br/>
                              <asp:TextBox ID="UsernameTextBox" CssClass="form-control"  placeholder="Enter Username" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator14"  ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                           <br />
                                  <asp:TextBox ID="PasswordTextBox" CssClass="form-control" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Please Enter Strong Password" ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator15"  ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                           <br />

                                <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" TextMode="Password" placeholder="Re-Enter Password" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16"  ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Confirm Password  is Required"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Both Password Must Be Same"></asp:CompareValidator>
                      </div>
                </div>
                            <br />
                <div class="row">
                        <div class="col-md-6 mx-auto" >
                                  <asp:Button ID="StudentSignUpButton" OnClick="StudentSignUpButton_Click" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" />
                       </div>
                </div>
        <br />
                 
                <div class="row" >
                    <div class="col-md-5 mx-auto text-center">
                           <a href="Student_Signup.aspx" class="btn btn-success">SignUp As Student </a>
                          <a href="Tutor_Signup.aspx" class=" btn btn-info">SignUp As Tutor </a>
                    
                    </div>
                </div>
        
               

            <br />

    </div>
        
            <br/>
  


</asp:Content>
