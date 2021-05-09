using RestSharp;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autism_Detection_Hons_Proj_WebApplication
{
    public partial class Train_and_Customize_Classifiers_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTrain_Click(object sender, EventArgs e)
        {
            Dictionary<string, int> rf_param_dict = new Dictionary<string, int>();
            rf_param_dict.Add("num_trees", int.Parse(rf_numtrees.Value));
            rf_param_dict.Add("max_depth", int.Parse(rf_maxtreedepth.Value));

            Dictionary<string, int> adb_param_dict = new Dictionary<string, int>();
            adb_param_dict.Add("num_classifiers", int.Parse(adbst_numstumps.Value));

            Dictionary<string, int> mlp_param_dict = new Dictionary<string, int>();
            mlp_param_dict.Add("hidden_layer_sizes", int.Parse(mlp_numperceptron.Value));
            mlp_param_dict.Add("max_iter", int.Parse(mlp_numitr.Value));

            Dictionary<string, int> svm_param_dict = new Dictionary<string, int>();
            svm_param_dict.Add("max_epochs", int.Parse(svm_maxepoch.Value));
            svm_param_dict.Add("cost_thresh", int.Parse(svm_costthresh.Value));

            List<Dictionary<string, int>> list_to_ret = new List<Dictionary<string, int>>();
            list_to_ret.Add(rf_param_dict);
            list_to_ret.Add(adb_param_dict);
            list_to_ret.Add(mlp_param_dict);
            list_to_ret.Add(svm_param_dict);


            // Making request to the API

            var rest_client = new RestClient("http://127.0.0.1:5000/");
            var request = new RestRequest("train_classifiers/train_all_models/", Method.POST);

            request.AddJsonBody(list_to_ret);

            var response = rest_client.Execute(request);

            if (response.IsSuccessful)
            {
                Debug.WriteLine("success");
                ScriptManager.RegisterStartupScript(this, GetType(), "js_alert_train_success", "alert('Training the " +
                    "Classification Models has started in the background. This may take several minutes. " +
                    "Till then you can check the performance of the " +
                    "previously trained customized models');", true);
            }
            else
            {
                Debug.WriteLine("Failure");
                ScriptManager.RegisterStartupScript(this, GetType(), "js_alert_train_failure", "alert('Oops something went wrong." +
                    " Please Try Again.');", true);
            }

        }

        protected void btnPerformance_Click(object sender, EventArgs e)
        {
            Response.Redirect("#");
        }
    }
}