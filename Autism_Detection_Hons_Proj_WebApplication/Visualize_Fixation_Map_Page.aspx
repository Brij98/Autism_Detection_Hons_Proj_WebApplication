<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Visualize_Fixation_Map_Page.aspx.cs" Inherits="Autism_Detection_Hons_Proj_WebApplication.Visualize_Fixation_Map_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row mt-4">

        <%--Card 1 Begin--%>
        <div class="col-xl-4 col-md-6 mb-4">

            <asp:HyperLink NavigateUrl="~/File_Upload_Page.aspx" ID="upload_file_page_card" runat="server">

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

            <asp:HyperLink NavigateUrl="~/Visualize_Fixation_Map_Page.aspx" ID="visualize_fixmap_page_card" runat="server" Enabled="false">

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

            <asp:Image ID="Salmap_Img" runat="server" Height="300" Width="500" />
            <h4>Saliency Map</h4>
        </div>

        <div class="col mt-6">

            <div style="overflow: auto; height: 380px">
                <asp:Table ID="feature_table" runat="server" Font-Size="Large" Width="550" Font-Names="Palatino"
                    Font-Bold="true" BackColor="#99ff99" BorderColor="Black" BorderWidth="2" CellPadding="5" CellSpacing="5"
                    GridLines="Both">
                </asp:Table>
            </div>

            <h4>Extracted Features</h4>

        </div>
    </div>

</asp:Content>
