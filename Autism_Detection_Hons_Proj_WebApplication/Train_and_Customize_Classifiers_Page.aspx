<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Train_and_Customize_Classifiers_Page.aspx.cs" Inherits="Autism_Detection_Hons_Proj_WebApplication.Train_and_Customize_Classifiers_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row mt-4 ">
        <div class="col-lg-6">
            <h2>Train and Customize Classifiers</h2>
        </div>
    </div>

    <div class="row mt-4">

        <div class="col-lg-6">

            <!-- Custom Random Forest Classifier -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Customize Random Forest Classifier</h6>
                </div>
                <div class="card-body">
                    <asp:Label ID="rf_numtrees_lbl" runat="server" Text="Number of Trees: "></asp:Label>
                    <input runat="server" id="rf_numtrees" value="12" min="3" max="20" step="1" type="number" />

                    <asp:Label ID="rf_maxtreedepth_lbl" runat="server" Text="Maximum Tree Depth: "></asp:Label>
                    <input runat="server" id="rf_maxtreedepth" value="8" min="2" max="20" step="2" type="number" />
                </div>
            </div>


            <!-- Custom AdaBoost Classifier -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Customize AdaBoost Classifier</h6>
                </div>
                <div class="card-body">
                    <asp:Label ID="adbst_numstumps_lbl" runat="server" Text="Number of Stumps: "></asp:Label>
                    <input runat="server" id="adbst_numstumps" value="12" min="2" max="50" step="1" type="number" />

                </div>
            </div>

        </div>

        <div class="col-lg-6">

            <!-- Custom Multi Layer Perceptron -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Customize Multi Layer Perceptron</h6>
                </div>
                <a href="#"><span class="" data-toggle="tooltip" data-original-title="Share"></span></a>
                <div class="card-body">
                    <asp:Label ID="mlp_numperceptron_lbl" runat="server" Text="Number of Perceptrons: "></asp:Label>
                    <input runat="server" id="mlp_numperceptron" value="16" min="2" max="20" step="1" type="number" />

                    <asp:Label ID="mlp_numitr_lbl" runat="server" Text="Number of Iterations: "></asp:Label>
                    <input runat="server" id="mlp_numitr" value="400" min="50" max="1000" step="50" type="number" />

                </div>
            </div>
            <!-- Basic Card Example End -->

            <!-- Custom Support Vector Machine -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Customize Support Vector Machine</h6>
                </div>
                <div class="card-body">
                    <asp:Label ID="svm_maxepoch_lbl" runat="server" Text="Maximum Number of Epochs: "></asp:Label>
                    <input runat="server" id="svm_maxepoch" value="17000" min="1000" max="20000" step="1000" type="number" />

                    <asp:Label ID="svm_costthresh_lbl" runat="server" Text="Cost Threshold: "></asp:Label>
                    <input runat="server" id="svm_costthresh" value="1000"  min="10" max="10000" type="number" />
                </div>
            </div>
            <!-- Basic Card Example End -->

        </div>

    </div>

    <div class="row mt-4">
        <div class="col-lg-6">
            <%--<asp:Button ID="btnTrain" runat="server" Text="Train Classifiers" OnClick="btnTrain_Click" />--%>
            <a class="btn btn-primary btn-icon-split" runat="server" onserverclick="btnTrain_Click">
                <span class="icon text-white-50">
                    <i class="fas fa-cogs"></i>
                </span>
                <span class="text">Train Classifiers</span>
            </a>
        </div>

        <%--<div class="col-lg-6">
            <asp:Button ID="btnPerformance" runat="server" Text="View Classifier Performance" OnClick="btnPerformance_Click" />
        </div>--%>
    </div>

    <script src="./src/bootstrap-input-spinner.js"></script>
    <script>
        $("input[type='number']").inputSpinner()
    </script>
</asp:Content>
