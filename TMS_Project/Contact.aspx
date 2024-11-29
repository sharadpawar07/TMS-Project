<%@ Page Title="Contact" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TMS_Project.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head"  runat="server">
    <!-- Ensure that you include any required CSS/JS references here or in your Master Page -->
    <script type="text/javascript">
        function SuccessContact()
        {
            Swal.fire(
                "Success",
                "Form has bees Submitted Successfully",
                "success"
            )
        }

        function ErrorContact() {
            Swal.fire(
                "Error",
                "Form insertion failed",
                "error"
            )
        }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ======= Contact Section ======= -->
    <section class="breadcrumbs">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <h2>Contact</h2>
                <ol>
                    <li><a href="home.aspx">Home</a></li>
                    <li>Contact</li>
                </ol>
            </div>
        </div>
    </section>
    <!-- End Contact Section -->

    <!-- ======= Contact Information Section ======= -->
    <section class="contact1" >
        <div class="container">
            <div class="row">
                <!-- Contact Info Boxes -->
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="info-box">
                                <i class="bx bx-map"></i>
                                <h3>Our Address</h3>
                                <p>A108 Adam Street, New York, NY 535022</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box">
                                <i class="bx bx-envelope"></i>
                                <h3>Email Us</h3>
                                <p>info@example.com<br>contact@example.com</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box">
                                <i class="bx bx-phone-call"></i>
                                <h3>Call Us</h3>
                                <p>+1 5589 55488 55<br>+1 6678 254445 41</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Contact Form -->
                <div class="col-lg-6">
                    <!-- Removed <form> tag -->
                    <div class="form-row">
                        <!-- Name Field -->
                        <div class="col-md-6 form-group">
                            <asp:TextBox ID="NameTextBox" CssClass="form-control"  placeholder="Your Name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                        </div>
                        <!-- Email Field -->
                        <div class="col-md-6 form-group">
                            <asp:TextBox ID="EmailTextBox" CssClass="form-control" placeholder="Your Email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <!-- Dropdown for Subject -->
                    <div class="form-group">
                        <asp:DropDownList ID="SubjectDropDownList" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Select" />
                            <asp:ListItem Text="Suggestion" Value="Suggestion" />
                            <asp:ListItem Text="Feedback" Value="Feedback" />
                            <asp:ListItem Text="Complain" Value="Complain" />
                        </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" initialValue="Select" ControlToValidate="SubjectDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Message Field -->
                    <div class="form-group">
                        <asp:TextBox ID="MessageTextBox" TextMode="MultiLine" CssClass="form-control"  Rows="6"  placeholder="Message" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Message is Required"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Submit Button -->
                    <div class="text-center" >
                        <asp:Button ID="SubmitButton" CssClass="btn btn-info" Text="Submit" runat="server" OnClick="SubmitButton_Click" />

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Contact Section -->

    <!-- ======= Map Section ======= -->
    <section class="map mt-2">
        <div class="container-fluid p-0">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3024.2219901290355!2d-74.00369368400567!3d40.71312937933185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a23e28c1191%3A0x49f75d3281df052a!2s150%20Park%20Row%2C%20New%20York%2C%20NY%2010007%2C%20USA!5e0!3m2!1sen!2sbg!4v1579767901424!5m2!1sen!2sbg" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
        </div>
    </section>
    <!-- End Map Section -->

</asp:Content>
