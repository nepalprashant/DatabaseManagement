<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Coursework.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="row justify-content-evenly">
        <div class="card col-sm-3" style="margin:1rem">
            <h5 class="card-header">
                <i class="fa fa-graduation-cap text-primary" aria-hidden="true"></i>
                Enrolled Students
            </h5>
            <div class="card-body">
                <div class="card-title">
                    <div class="col-md-2">
                        <asp:DropDownList ID="DropDownList1" Enabled="false" CssClass="form-control text-xxl-center fw-bolder bg-primary text-white" runat="server" DataSourceID="SqlDataSource1" DataTextField="COUNT(*)" DataValueField="COUNT(*)"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM STUDENTS"></asp:SqlDataSource>
                    </div>
                </div>
                <p class="card-text">
                  Students have been enrolled.
                </p>
                <br />
                <a href="Student_Details.aspx" class="btn btn-outline-secondary">View Student Details</a>
            </div>
            <div class="card-footer text-muted">
                Upto Date
                <i class="fa fa-clock-o" aria-hidden="true"></i>
            </div>
        </div>
        <div class="card col-sm-3" style="margin:1rem">
            <h5 class="card-header">
                <i class="fa fa-users text-warning" aria-hidden="true"></i>
                Employed Teachers
            </h5>
            <div class="card-body">
                <div class="card-title">
                    <div class="col-md-2">
                        <asp:DropDownList ID="DropDownList2" Enabled="False" CssClass="form-control text-xxl-center fw-bolder bg-warning text-white" runat="server" DataSourceID="SqlDataSource2" DataTextField="COUNT(*)" DataValueField="COUNT(*)"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM TEACHERS"></asp:SqlDataSource>
                    </div>
                </div>
                <p class="card-text">
                  Teachers have been employed.
                </p>
                <br />
                <a href="Teacher_Details.aspx" class="btn btn-outline-secondary">View Teacher Details</a>
            </div>
            <div class="card-footer text-muted">
                Upto Date
                <i class="fa fa-clock-o" aria-hidden="true"></i>
            </div>
        </div>
        <div class="card col-sm-3" style="margin:1rem">
            <h5 class="card-header">
                <i class="fa fa-building-o text-info" aria-hidden="true"></i>
                Departments
            </h5>
            <div class="card-body">
                <div class="card-title">
                    <div class="col-md-2">
                        <asp:DropDownList ID="DropDownList3" Enabled="False" CssClass="form-control text-xxl-center fw-bolder bg-info text-white" runat="server" DataSourceID="SqlDataSource3" DataTextField="COUNT(*)" DataValueField="COUNT(*)"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM DEPARTMENTS"></asp:SqlDataSource>
                    </div>
                </div>
                <p class="card-text">
                  Departments are functioning.
                </p>
                <br />
                <a href="Department_Details.aspx" class="btn btn-outline-secondary">View Department Details</a>
            </div>
            <div class="card-footer text-muted">
                Upto Date
                <i class="fa fa-clock-o" aria-hidden="true"></i>
            </div>
        </div>
        <div class="card col-sm-3" style="margin:1rem">
            <h5 class="card-header">
                <i class="fa fa-university text-secondary" aria-hidden="true"></i>
                 Courses
            </h5>
            <div class="card-body">
                <div class="card-title">
                    <div class="col-md-2">
                        <asp:DropDownList ID="DropDownList6" Enabled="False" CssClass="form-control text-xxl-center fw-bolder bg-secondary text-white" runat="server" DataSourceID="SqlDataSource6" DataTextField="COUNT(*)" DataValueField="COUNT(*)"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM COURSES"></asp:SqlDataSource>
                    </div>
                </div>
                <p class="card-text">
                  Different courses are accessible.
                </p>
                <br />
                <a href="Course_Details.aspx" class="btn btn-outline-secondary">View Course Details</a>
            </div>
            <div class="card-footer text-muted">
                Upto Date
                <i class="fa fa-clock-o" aria-hidden="true"></i>
            </div>
        </div>
        <div class="card col-sm-3" style="margin:1rem">
            <h5 class="card-header">
                <i class="fa fa-book text-success" aria-hidden="true"></i>
                 Effective Modules
            </h5>
            <div class="card-body">
                <div class="card-title">
                    <div class="col-md-2">
                        <asp:DropDownList ID="DropDownList4" Enabled="False" CssClass="form-control text-xxl-center fw-bolder bg-success text-white" runat="server" DataSourceID="SqlDataSource4" DataTextField="COUNT(*)" DataValueField="COUNT(*)"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM MODULES"></asp:SqlDataSource>
                    </div>
                </div>
                <p class="card-text">
                  Modules are being taught.
                </p>
                <br />
                <a href="Module_Details.aspx" class="btn btn-outline-secondary">View Module Details</a>
            </div>
            <div class="card-footer text-muted">
                Upto Date
                <i class="fa fa-clock-o" aria-hidden="true"></i>
            </div>
        </div>
        <div class="card col-sm-3" style="margin:1rem">
            <h5 class="card-header">
                <i class="fa fa-address-book-o text-danger" aria-hidden="true"></i>
                 Addresses
            </h5>
            <div class="card-body">
                <div class="card-title">
                    <div class="col-md-2">
                        <asp:DropDownList ID="DropDownList5" Enabled="False" CssClass="form-control text-xxl-center fw-bolder bg-danger text-white" runat="server" DataSourceID="SqlDataSource5" DataTextField="COUNT(*)" DataValueField="COUNT(*)"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM ADDRESSES"></asp:SqlDataSource>
                    </div>
                </div>
                <p class="card-text">
                  Different Locations.
                </p>
                <br />
                <a href="Address_Details.aspx" class="btn btn-outline-secondary">View Address Details</a>
            </div>
            <div class="card-footer text-muted">
                Upto Date
                <i class="fa fa-clock-o" aria-hidden="true"></i>
            </div>
        </div>
    </div>
</asp:Content>
