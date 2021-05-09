<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserHelpPage.aspx.cs" Inherits="Autism_Detection_Hons_Proj_WebApplication.UserHelpPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row mt-4 ">
        <div class="col-lg-6">
            <h2>User Help</h2>
        </div>
    </div>

    <div class="row">

        <div class="col-lg-6">

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Step 1</h6>
                </div>
                <div class="card-body">
                    
                    <img src="userhelpimages\image1.png" width="400" height="200" />
                    <br />
                    <b>A: </b>Upload the text file containing the scan path of the test subject.
                    <br />
                    <b>B: </b>Upload the image that was viewed by the subject when scan paths were collected.
                    <br />
                    <b>C: </b>Upload the image and the text file to the server to perform classification.
                    <br />
                    <b>D: </b>Displays the image that was uploaded.
                    <br />
                    <b>E: </b>Table displaying the scan paths in the text file.

                </div>
            </div>


            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Step 3</h6>
                </div>
                <div class="card-body">
                    <img src="userhelpimages\image3.png" width="400" height="200" />
                    <br />
                    <b>A: </b>Increase the classifer weight (if less than 1.0) if it performs the correct classification.
                    <br />
                    <b>B: </b>Decrease the classifier weight (if more than 0.0) if it performs the incorrect classification.
                    <br />
                    <b>C: </b>If the classfier weigth below threshold than the classifier does not contribute to the final classification.
                    <br />
                    <b>D: </b>Submit the updated classifiers weights.
                    <br />
                    <b>E: </b>The result of the final classifier.

                </div>
            </div>

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Step 5</h6>
                </div>
                <div class="card-body">
                    <img src="userhelpimages\image5.png" width="400" height="200" />
                    <br />
                    <b>Sensitivity: </b>Measures the ratio of the subjects that are classified as ASD by the model versus the subjects
                    that actually have ASD.
                    <br />
                    <b>Specificity: </b>Measures the ratio of the subjects that are classified as Normal by the model versus the subjects
                    that actually are Normal.
                    <br />
                    <b>Accuracy: </b>Ratio of the subjects that were correctly classified by the model.
                    <br />
                    <b>Precision: </b>Ratio of the correctly classified ASD subjects by the model versus all the ASD labels.
                    <br />
                    <b>Negative Predition: </b>Ratio of the correctly classified Normal subjects by the model versus all Negative labels.

                </div>
            </div>

            <a href="File_Upload_Page.aspx" class="btn btn-secondary btn-icon-split">
                <span class="icon text-white-50">
                    <i class="fas fa-arrow-left"></i>
                </span>
                <span class="text">Go To Home Page</span>
            </a>

            <br />
            <br />

        </div>

        <div class="col-lg-6">

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Step 2</h6>
                </div>
                <div class="card-body">
                    <img src="userhelpimages\image2.png" width="400" height="200" />
                    <br />
                    <b>A: </b>Saliency Map that is generated from the uploaded image. And it is used to calculate saliency features.
                    <br />
                    <b>B: </b>Table displaying all the features that are calculated from the saliency map and 
                    the uploaded scan path file to perform classification.

                </div>
            </div>

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Step 4</h6>
                </div>
                <div class="card-body">
                    <img src="userhelpimages\image4.png" width="400" height="200" />
                    <br />
                    <b>Customize Random Forest: </b>Allows number of trees and depth of each tree to be specified during training.
                    <br />
                    <b>Customize Multi Layer Perceptron: </b>Allows the number of neurons (perceptrons) to be specified in a single layer and
                    the number of iterations over the training data.
                    <br />
                    <b>Customize Adaboost: </b>Allows to specify the number of stumps to be used.
                    <br />
                    <b>Customuze Support Vector Machine: </b>Allows to mention the number of iteration of the training data to be done and 
                    the cost threshold to be used for the stopping criterion.

                </div>
            </div>
            

        </div>

    </div>

</asp:Content>
