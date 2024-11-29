<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Signup.aspx.cs" Inherits="TMS_Project.Tutor_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <link href="ShadowBox.css" rel="stylesheet" />
  <br/>

  <div class="container shadow-box">
          <br />
          <div class="row">
               <div class="col-md-12" >
                 <h1 class="jumbotron bg-primary text-white text-center"> Tutor SignUp </h1 >
               </div>
          </div>
          
          <div class="row">
                  <div class="col-md-4 ">
                      <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
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
                      <asp:RangeValidator ID="RangeValidator1" ControlToValidate="AgeTextBox" runat="server" ErrorMessage="Age should be within 20 to 60" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="20" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                  <br />
                       
                      <asp:TextBox ID="EmailTextBox" CssClass="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>                                      
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Email is Invalid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 <br />
                     
                   <asp:DropDownList ID="MaritalStatusDropDownList1" CssClass="form-control" runat="server">
                       <asp:ListItem Selected="True">Select Status</asp:ListItem>
                       <asp:ListItem>Single</asp:ListItem>
                       <asp:ListItem>Married</asp:ListItem>
                       <asp:ListItem>other</asp:ListItem>
                   </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="MaritalStatusDropDownList1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Status is Required"></asp:RequiredFieldValidator>
             
                      <br />
                 
                                   
               </div>

               <div class="col-md-4">
                 
                    
                    <asp:DropDownList ID="CountryDropDownList"  CssClass="form-control" runat="server" AutoPostBack="True"  >
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator61" ControlToValidate="CountryDropDownList" runat="server"  ErrorMessage="Country is Required" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br /> 
                     <asp:DropDownList ID="CityDropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                      &nbsp;
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator17" InitialValue="Select Country"  ControlToValidate="CityDropDownList1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="City  is Required"></asp:RequiredFieldValidator>
                 <br />
                      
                        <asp:DropDownList ID="QualificationDropDownList" CssClass="form-control" runat="server">
                              <asp:ListItem>Select  Qualification</asp:ListItem>
                              <asp:ListItem>Graduate</asp:ListItem>
                              <asp:ListItem>Master</asp:ListItem>
                              <asp:ListItem>PHD</asp:ListItem>
                              <asp:ListItem>MPHIL </asp:ListItem>
                              <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="QualificationDropDownList" InitialValue="Select Qualification" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Qualification is Required"></asp:RequiredFieldValidator> 
                 <br />
                       <asp:TextBox ID="AddressTextBox" CssClass="form-control" TextMode="MultiLine" Rows="6" placeholder="Enter Address" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                    
               
                </div>
                 
                   <div class="col-md-4">
                    
                          <asp:TextBox ID="DegreeTextBox" CssClass="form-control"  placeholder="Enter Degree" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="DegreeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Degree is Required"></asp:RequiredFieldValidator>   
                   <br />
 
                          <asp:DropDownList ID="ExperienceDropDownList" CssClass="form-control" runat="server">
                                    <asp:ListItem>Select Experience</asp:ListItem>
                                    <asp:ListItem>1 year</asp:ListItem>
                                    <asp:ListItem>2 year</asp:ListItem>
                                    <asp:ListItem>3 year</asp:ListItem>
                                    <asp:ListItem>4 year </asp:ListItem>
                                    <asp:ListItem>5+ year</asp:ListItem>
                                    <asp:ListItem>8+ year</asp:ListItem>
                                    <asp:ListItem>10+ year</asp:ListItem>
                          </asp:DropDownList>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="ExperienceDropDownList" InitialValue="Select Experience" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Experience is Required"></asp:RequiredFieldValidator> 
                    <br/>
                          <asp:TextBox ID="ContactTextBox" CssClass="form-control"  placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Contact Number is Required"></asp:RequiredFieldValidator>
                    <br />
                                                  
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
                                <asp:Button ID="TutorSignUpButton" OnClick="TutorSignUpButton_Click"  runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" />

                      </div>

              </div>
          <br />
         
                <div class="row" >
                    <div class="col-md-5 mx-auto text-center">
                           <a href="Student_Signup.aspx" class="btn btn-success">SignUp As Student  </a>
                          <a href="Tutor_Signup.aspx" class=" btn btn-info">SignUp As Tutor </a>
                    
                    </div>
                </div>
      <br />
  </div>
      
          
  



</asp:Content>
