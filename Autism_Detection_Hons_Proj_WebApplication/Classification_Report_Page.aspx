<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Classification_Report_Page.aspx.cs" Inherits="Autism_Detection_Hons_Proj_WebApplication.Classification_Report_Page" %>

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

            <asp:HyperLink NavigateUrl="~/Classification_Report_Page.aspx" ID="classification_report_page_card" runat="server" Enabled="false">

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

        <div class="col mt-4">

            <div class="col mt-4">

                <h2>Classification Results</h2>
                <br />
                <br />

                
                <%-- Support Vector Machine --%>
                <h3 id="result_1" runat="server"></h3>
                <%-- SVM right --%>
                <a class="btn btn-success btn-circle btn-lg" runat="server" onserverclick="SVM_Right_Click">
                    <i class="fas fa-check"></i>
                </a>
                <%-- SVM wrong --%>
                <a href="#" class="btn btn-danger btn-circle btn-lg" runat="server" onserverclick="SVM_Wrong_Click">
                    <i class="fas fa-times"></i>
                </a>

                <br />
                <br />

                <%-- Random Forest --%>
                <h3 id="result_2" runat="server"></h3>
                <%-- RF right --%>
                <a class="btn btn-success btn-circle btn-lg" runat="server" onserverclick="RF_Right_Click">
                    <i class="fas fa-check"></i>
                </a>
                <%-- RF wrong --%>
                <a href="#" class="btn btn-danger btn-circle btn-lg" runat="server" onserverclick="RF_Wrong_Click">
                    <i class="fas fa-times"></i>
                </a>

                <br />
                <br />

                <%-- Multi Layer Perceptron --%>
                <h3 id="result_3" runat="server"></h3>
                <%-- MLP right --%>
                <a class="btn btn-success btn-circle btn-lg" runat="server" onserverclick="MLP_Right_Click">
                    <i class="fas fa-check"></i>
                </a>
                <%-- MLP wrong --%>
                <a href="#" class="btn btn-danger btn-circle btn-lg" runat="server" onserverclick="MLP_Wrong_Click">
                    <i class="fas fa-times"></i>
                </a>

                <br />
                <br />

                <h3 id="result_4" runat="server"></h3>
                <%-- ADB right --%>
                <a class="btn btn-success btn-circle btn-lg" runat="server" onserverclick="ADB_Right_Click">
                    <i class="fas fa-check"></i>
                </a>
                <%-- ADB wrong --%>
                <a href="#" class="btn btn-danger btn-circle btn-lg" runat="server" onserverclick="ADB_Wrong_Click">
                    <i class="fas fa-times"></i>
                </a>

                <br />
                <br />

                <%-- Update the Classifiers Weights --%>
                <a class="btn btn-info btn-icon-split" runat="server" onserverclick="Submit_Updated_Weights_Click">
                    <span class="icon text-white-50">
                        <i class="fas fa-edit"></i>
                    </span>
                    <span class="text">Submit Updated Weights</span>
                </a>

                <hr />
                <br />

                <h3 id="final_result" runat="server"></h3>
                <br />
                <br />

            </div>

        </div>

    </div>

</asp:Content>
