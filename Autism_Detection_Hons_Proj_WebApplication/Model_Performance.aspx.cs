using RestSharp;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autism_Detection_Hons_Proj_WebApplication
{
    public partial class Model_Performance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine("Page Called");
            // Making Request to API
            var rest_client = new RestClient("http://127.0.0.1:5000/");
            var request = new RestRequest("model_performance/view_model_performance/", Method.GET);

            var response = rest_client.Execute<List<Dictionary<string, string>>>(request);

            if (response.IsSuccessful)
            {
                Debug.WriteLine(response);
                display_svm_report(response.Data[0]);
                display_rf_report(response.Data[1]);
                display_adb_report(response.Data[2]);
                display_mlp_report(response.Data[3]);
                display_mc_report(response.Data[4]);
            }
            else
            {
                Debug.WriteLine("Not Successful");
            }
        }

        private void display_svm_report(Dictionary<string, string> input)
        {
            double acc, prec, ng_pred_val, specificity, sensitivity;

            int fp, tp, fn, tn;

            tp = int.Parse(input["tp"]);
            fn = int.Parse(input["fn"]);
            fp = int.Parse(input["fp"]);
            tn = int.Parse(input["tn"]);
            acc = double.Parse(input["accuracy_score"]);
            specificity = double.Parse(input["specificity"]);
            sensitivity = double.Parse(input["sensitivity"]);

            prec = (double)tp / ((double)tp + (double)fp);
            ng_pred_val = (double)tn / ((double)tn + (double)fn);

            svm_tp.Text = "TP: " + tp.ToString();
            svm_fn.Text = "FN: " + fn.ToString();
            svm_fp.Text = "FP: " + fp.ToString();
            svm_tn.Text = "TN: " + tn.ToString();
            svm_acc.Text = "Accuracy: " + acc.ToString("0.000");
            svm_specificity.Text = "Specificity: " + specificity.ToString("0.000");
            svm_sensitivity.Text = "Sensitivity: " + sensitivity.ToString("0.000");
            svm_precision.Text = "Precision: " + prec.ToString("0.000");
            svm_ngpredval.Text = "Negative Prediction Value: " + ng_pred_val.ToString("0.000");
        }

        private void display_rf_report(Dictionary<string, string> input)
        {
            double acc, prec, ng_pred_val, specificity, sensitivity;

            int fp, tp, fn, tn;

            tp = int.Parse(input["tp"]);
            fn = int.Parse(input["fn"]);
            fp = int.Parse(input["fp"]);
            tn = int.Parse(input["tn"]);
            acc = double.Parse(input["accuracy_score"]);
            specificity = double.Parse(input["specificity"]);
            sensitivity = double.Parse(input["sensitivity"]);

            prec = (double)tp / ((double)tp + (double)fp);
            ng_pred_val = (double)tn / ((double)tn + (double)fn);

            rf_tp.Text = "TP: " + tp.ToString();
            rf_fn.Text = "FN: " + fn.ToString();
            rf_fp.Text = "FP: " + fp.ToString();
            rf_tn.Text = "TN: " + tn.ToString();
            rf_acc.Text = "Accuracy: " + acc.ToString("0.000");
            rf_specificity.Text = "Specificity: " + specificity.ToString("0.000");
            rf_sensitivity.Text = "Sensitivity: " + sensitivity.ToString("0.000");
            rf_precision.Text = "Precision: " + prec.ToString("0.000");
            rf_ngpredval.Text = "Negative Prediction Value: " + ng_pred_val.ToString("0.000");
        }

        private void display_mc_report(Dictionary<string, string> input)
        {
            double acc, prec, ng_pred_val, specificity, sensitivity;

            int fp, tp, fn, tn;

            tp = int.Parse(input["tp"]);
            fn = int.Parse(input["fn"]);
            fp = int.Parse(input["fp"]);
            tn = int.Parse(input["tn"]);
            acc = double.Parse(input["accuracy_score"]);
            specificity = double.Parse(input["specificity"]);
            sensitivity = double.Parse(input["sensitivity"]);

            prec = (double)tp / ((double)tp + (double)fp);
            ng_pred_val = (double)tn / ((double)tn + (double)fn);

            mc_tp.Text = "TP: " + tp.ToString();
            mc_fn.Text = "FN: " + fn.ToString();
            mc_fp.Text = "FP: " + fp.ToString();
            mc_tn.Text = "TN: " + tn.ToString();
            mc_acc.Text = "Accuracy: " + acc.ToString("0.000");
            mc_specificity.Text = "Specificity: " + specificity.ToString("0.000");
            mc_sensitivity.Text = "Sensitivity: " + sensitivity.ToString("0.000");
            mc_precision.Text = "Precision: " + prec.ToString("0.000");
            mc_ngpredval.Text = "Negative Prediction Value: " + ng_pred_val.ToString("0.000");
        }

        private void display_adb_report(Dictionary<string, string> input)
        {
            double acc, prec, ng_pred_val, specificity, sensitivity;

            int fp, tp, fn, tn;

            tp = int.Parse(input["tp"]);
            fn = int.Parse(input["fn"]);
            fp = int.Parse(input["fp"]);
            tn = int.Parse(input["tn"]);
            acc = double.Parse(input["accuracy_score"]);
            specificity = double.Parse(input["specificity"]);
            sensitivity = double.Parse(input["sensitivity"]);

            prec = (double)tp / ((double)tp + (double)fp);
            ng_pred_val = (double)tn / ((double)tn + (double)fn);

            adb_tp.Text = "TP: " + tp.ToString();
            adb_fn.Text = "FN: " + fn.ToString();
            adb_fp.Text = "FP: " + fp.ToString();
            adb_tn.Text = "TN: " + tn.ToString();
            adb_acc.Text = "Accuracy: " + acc.ToString("0.000");
            adb_specificity.Text = "Specificity: " + specificity.ToString("0.000");
            adb_sensitivity.Text = "Sensitivity: " + sensitivity.ToString("0.000");
            adb_precision.Text = "Precision: " + prec.ToString("0.000");
            adb_ngpredval.Text = "Negative Prediction Value: " + ng_pred_val.ToString("0.000");
        }

        private void display_mlp_report(Dictionary<string, string> input)
        {
            double acc, prec, ng_pred_val, specificity, sensitivity;

            int fp, tp, fn, tn;

            tp = int.Parse(input["tp"]);
            fn = int.Parse(input["fn"]);
            fp = int.Parse(input["fp"]);
            tn = int.Parse(input["tn"]);
            acc = double.Parse(input["accuracy_score"]);
            specificity = double.Parse(input["specificity"]);
            sensitivity = double.Parse(input["sensitivity"]);

            prec = (double)tp / ((double)tp + (double)fp);
            ng_pred_val = (double)tn / ((double)tn + (double)fn);

            mlp_tp.Text = "TP: " + tp.ToString();
            mlp_fn.Text = "FN: " + fn.ToString();
            mlp_fp.Text = "FP: " + fp.ToString();
            mlp_tn.Text = "TN: " + tn.ToString();
            mlp_acc.Text = "Accuracy: " + acc.ToString("0.000");
            mlp_specificity.Text = "Specificity: " + specificity.ToString("0.000");
            mlp_sensitivity.Text = "Sensitivity: " + sensitivity.ToString("0.000");
            mlp_precision.Text = "Precision: " + prec.ToString("0.000");
            mlp_ngpredval.Text = "Negative Prediction Value: " + ng_pred_val.ToString("0.000");
        }
    }
}