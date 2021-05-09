<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Model_Performance.aspx.cs" Inherits="Autism_Detection_Hons_Proj_WebApplication.Model_Performance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row mt-4 ">
        <div class="col-lg-6">
            <h2>Performance of the Classification Models</h2>
        </div>
    </div>

    <div class="row mt-4">

        <div class="col-lg-6">

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Support Vector Machine Performance</h6>
                </div>
                <div class="card-body">

                    <%--<asp:Label ID="svm_acc_lbl" runat="server" Text="SVM Accuracy: "></asp:Label>
                    <br />--%>

                    <asp:Table ID="svm_report_table" runat="server" Font-Size="Large" Width="550" Font-Names="Palatino" 
                        Font-Bold="true" BackColor="#99ff99" BorderColor="Black" BorderWidth="2" CellPadding="5" CellSpacing="5" 
                        GridLines="Both">

                        <asp:TableHeaderRow style="background-color:white">
                            <asp:TableCell>Predicted/Actual</asp:TableCell>
                            <asp:TableCell>Predicted Positive</asp:TableCell>
                            <asp:TableCell>Predicted Negative</asp:TableCell>
                            <asp:TableCell ></asp:TableCell>
                        </asp:TableHeaderRow>

                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white">Actual Positive</asp:TableCell>
                            <asp:TableCell ID="svm_tp" runat="server">TP: </asp:TableCell>
                            <asp:TableCell ID="svm_fn" runat="server">FN: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="svm_sensitivity" runat="server">Sensitivity: </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white">Actual Negative</asp:TableCell>
                            <asp:TableCell ID="svm_fp" runat="server">FP: </asp:TableCell>
                            <asp:TableCell ID="svm_tn" runat="server">TN: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="svm_specificity" runat="server">Specificity: </asp:TableCell>
                        </asp:TableHeaderRow>

                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white"></asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="svm_precision" runat="server">Precision</asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="svm_ngpredval" runat="server">Negative Predictive Value: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="svm_acc" runat="server">Accuracy</asp:TableCell>
                        </asp:TableHeaderRow>

                    </asp:Table>
                    
                </div>
            </div>
            <!-- Basic Card Example End-->

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Random Forest Performance</h6>
                </div>
                <div class="card-body">
                    
                    <asp:Table ID="rf_report_table" runat="server" Font-Size="Large" Width="550" Font-Names="Palatino" 
                        Font-Bold="true" BackColor="#99ff99" BorderColor="Black" BorderWidth="2" CellPadding="5" CellSpacing="5" 
                        GridLines="Both">

                        <asp:TableHeaderRow style="background-color:white">
                            <asp:TableCell>Predicted/Actual</asp:TableCell>
                            <asp:TableCell>Predicted Positive</asp:TableCell>
                            <asp:TableCell>Predicted Negative</asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableHeaderRow>

                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white">Actual Positive</asp:TableCell>
                            <asp:TableCell ID="rf_tp" runat="server">TP: </asp:TableCell>
                            <asp:TableCell ID="rf_fn" runat="server">FN: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="rf_sensitivity" runat="server">Sensitivity: </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white">Actual Negative</asp:TableCell>
                            <asp:TableCell ID="rf_fp" runat="server">FP: </asp:TableCell>
                            <asp:TableCell ID="rf_tn" runat="server">TN: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="rf_specificity" runat="server">Specificity: </asp:TableCell>
                        </asp:TableHeaderRow>

                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white"></asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="rf_precision" runat="server">Precision</asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="rf_ngpredval" runat="server">Negative Predictive Value: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="rf_acc" runat="server">Accuracy</asp:TableCell>
                        </asp:TableHeaderRow>

                    </asp:Table>

                </div>
            </div>
            <!-- Basic Card Example End-->

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Main Classifier Performance</h6>
                </div>
                <div class="card-body">
                    
                    <asp:Table ID="mc_report_table" runat="server" Font-Size="Large" Width="550" Font-Names="Palatino" 
                        Font-Bold="true" BackColor="#99ff99" BorderColor="Black" BorderWidth="2" CellPadding="5" CellSpacing="5" 
                        GridLines="Both">

                        <asp:TableHeaderRow style="background-color:white">
                            <asp:TableCell>Predicted/Actual</asp:TableCell>
                            <asp:TableCell>Predicted Positive</asp:TableCell>
                            <asp:TableCell>Predicted Negative</asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableHeaderRow>

                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white">Actual Positive</asp:TableCell>
                            <asp:TableCell ID="mc_tp" runat="server">TP: </asp:TableCell>
                            <asp:TableCell ID="mc_fn" runat="server">FN: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="mc_sensitivity" runat="server">Sensitivity: </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white">Actual Negative</asp:TableCell>
                            <asp:TableCell ID="mc_fp" runat="server">FP: </asp:TableCell>
                            <asp:TableCell ID="mc_tn" runat="server">TN: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="mc_specificity" runat="server">Specificity: </asp:TableCell>
                        </asp:TableHeaderRow>

                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white"></asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="mc_precision" runat="server">Precision</asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="mc_ngpredval" runat="server">Negative Predictive Value: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="mc_acc" runat="server">Accuracy</asp:TableCell>
                        </asp:TableHeaderRow>

                    </asp:Table>

                </div>
            </div>
            <!-- Basic Card Example End-->

            <a href="File_Upload_Page.aspx" class="btn btn-secondary btn-icon-split">
                <span class="icon text-white-50">
                    <i class="fas fa-arrow-left"></i>
                </span>
                <span class="text">Back To Home Page</span>
            </a>

            <br />
            <br />

        </div>

        <div class="col-lg-6">

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Adaboost Performance</h6>
                </div>
                <div class="card-body">
                    
                    <asp:Table ID="adb_report_table" runat="server" Font-Size="Large" Width="550" Font-Names="Palatino" 
                        Font-Bold="true" BackColor="#99ff99" BorderColor="Black" BorderWidth="2" CellPadding="5" CellSpacing="5" 
                        GridLines="Both">

                        <asp:TableHeaderRow style="background-color:white">
                            <asp:TableCell>Predicted/Actual</asp:TableCell>
                            <asp:TableCell>Predicted Positive</asp:TableCell>
                            <asp:TableCell>Predicted Negative</asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableHeaderRow>

                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white">Actual Positive</asp:TableCell>
                            <asp:TableCell ID="adb_tp" runat="server">TP: </asp:TableCell>
                            <asp:TableCell ID="adb_fn" runat="server">FN: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="adb_sensitivity" runat="server">Sensitivity: </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white">Actual Negative</asp:TableCell>
                            <asp:TableCell ID="adb_fp" runat="server">FP: </asp:TableCell>
                            <asp:TableCell ID="adb_tn" runat="server">TN: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="adb_specificity" runat="server">Specificity: </asp:TableCell>
                        </asp:TableHeaderRow>

                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white"></asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="adb_precision" runat="server">Precision</asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="adb_ngpredval" runat="server">Negative Predictive Value: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="adb_acc" runat="server">Accuracy</asp:TableCell>
                        </asp:TableHeaderRow>

                    </asp:Table>

                </div>
            </div>
            <!-- Basic Card Example End-->

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Multi-Layer Perceptron Performance</h6>
                </div>
                <div class="card-body">
                    
                    <asp:Table ID="mlp_report_table" runat="server" Font-Size="Large" Width="550" Font-Names="Palatino" 
                        Font-Bold="true" BackColor="#99ff99" BorderColor="Black" BorderWidth="2" CellPadding="5" CellSpacing="5" 
                        GridLines="Both">

                        <asp:TableHeaderRow style="background-color:white">
                            <asp:TableCell>Predicted/Actual</asp:TableCell>
                            <asp:TableCell>Predicted Positive</asp:TableCell>
                            <asp:TableCell>Predicted Negative</asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableHeaderRow>

                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white">Actual Positive</asp:TableCell>
                            <asp:TableCell ID="mlp_tp" runat="server">TP: </asp:TableCell>
                            <asp:TableCell ID="mlp_fn" runat="server">FN: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="mlp_sensitivity" runat="server">Sensitivity: </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white">Actual Negative</asp:TableCell>
                            <asp:TableCell ID="mlp_fp" runat="server">FP: </asp:TableCell>
                            <asp:TableCell ID="mlp_tn" runat="server">TN: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="mlp_specificity" runat="server">Specificity: </asp:TableCell>
                        </asp:TableHeaderRow>

                        <asp:TableHeaderRow>
                            <asp:TableCell style="background-color:white"></asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="mlp_precision" runat="server">Precision</asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="mlp_ngpredval" runat="server">Negative Predictive Value: </asp:TableCell>
                            <asp:TableCell style="background-color:lightpink" ID="mlp_acc" runat="server">Accuracy</asp:TableCell>
                        </asp:TableHeaderRow>

                    </asp:Table>

                </div>
            </div>
            <!-- Basic Card Example End-->

        </div>


    </div>

</asp:Content>
