<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="File_Upload_Page.aspx.cs" Inherits="Autism_Detection_Hons_Proj_WebApplication.FileUploadPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="javascripts/File_Upload_Page.js"></script>

    <div class="row mt-4">

        <%--Card 1 Begin--%>
        <div class="col-xl-4 col-md-6 mb-4">

            <asp:HyperLink NavigateUrl="~/File_Upload_Page.aspx" ID="upload_file_page_card" runat="server" Enabled="false">

                 <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="h4 mb-0 font-weight-bold text-gray-800 text-center">Upload Files</div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-upload fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>

            </asp:HyperLink>

        </div>
        <%--Card 1 End--%>

        <%--Card 2 Begin--%>
        <div class="col-xl-4 col-md-6 mb-4">

            <asp:HyperLink NavigateUrl="~/Visualize_Fixation_Map_Page.aspx" ID="visualize_fixmap_page_card" runat="server">

                 <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="h4 mb-0 font-weight-bold text-gray-800 text-center">Visualize Saliency Map</div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-eye fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>

            </asp:HyperLink>

        </div>
        <%--Card 2 End--%>

        <%--Card 3 Begin--%>
        <div class="col-xl-4 col-md-6 mb-4">

            <asp:HyperLink NavigateUrl="~/Classification_Report_Page.aspx" ID="classification_report_page_card" runat="server">

                 <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="h4 mb-0 font-weight-bold text-gray-800 text-center">Classification Report</div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-tasks fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>

            </asp:HyperLink>

        </div>
        <%--Card 3 End--%>
    </div>

    <div class="row mt-4">

        <div class="col mt-6">
            <hr />
            <div class="col mt-4">
                <%--<asp:Label ID="scanpath_file_upload_lbl" runat="server" Text="Upload Gaze Fixation Points File:"></asp:Label>--%>
                <h3>Upload Gaze Fixation Points File:</h3>
                <br />
                <asp:FileUpload ID="scanpath_file_upload" runat="server" class="btn btn-secondary btn-icon-split"/>
            </div>

            <div class="col mt-4">
                <%--<asp:Label ID="image_file_upload_lbl" runat="server" Text="Upload the Image Viewed File:"></asp:Label>--%>
                <h3>Upload the Image Viewed:</h3>
                <br />
                <asp:FileUpload ID="image_file_upload" runat="server" class="btn btn-secondary btn-icon-split"/>
            </div>
            <hr />
            <div class="col mt-4">
                <%--<asp:Button ID="Upload_view_files" runat="server" Text="Upload & View" OnClick="Upload_view_files_Click" />--%>
                <a class="btn btn-success btn-icon-split" ID="Upload_view_files" runat="server" onserverclick="Upload_view_files_Click">
                    <span class="icon text-white-50">
                        <i class="fas fa-upload"></i>
                    </span>
                    <span class="text">Upload & View</span>
                </a>
            </div>

            <div class="col mt-4">
                <asp:Image ID="UploadedImg" runat="server" Height="300" Width="500" />
                <h5>Viewed Image</h5>
            </div>
            
            <br />
            <br />

        </div>


        <div class="col mt-6">

            <div style="overflow: auto; height: 380px">

                <asp:Table ID="Scanpath_table" runat="server" Font-Size="Large" Width="550" Font-Names="Palatino" Font-Bold="true" BackColor="Orange" BorderColor="Black" BorderWidth="2" CellPadding="5" CellSpacing="5">
                    <asp:TableHeaderRow BackColor="#ccffcc" Font-Bold="true">
                        <asp:TableCell>Idx</asp:TableCell>
                        <asp:TableCell>x</asp:TableCell>
                        <asp:TableCell>y</asp:TableCell>
                        <asp:TableCell>duration</asp:TableCell>
                    </asp:TableHeaderRow>
                </asp:Table>

            </div>
            <h5>Fixation Points</h5>

            <%--<br />
            <br />
            <hr />--%>

            <%--<div class="col mt-auto">
                <asp:Button ID="btn_next" runat="server" Text="Next Step" OnClick="btn_next_Click" />
            </div>--%>

        </div>

    </div>

    



    


    <%--<h1 class="mt-4">Simple Sidebar</h1>
    <p>The starting state of the menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will change.</p>
    <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>. The top navbar is optional, and just for demonstration. Just create an element with the <code>#menu-toggle</code> ID which will toggle the menu when clicked.</p>--%>
</asp:Content>
