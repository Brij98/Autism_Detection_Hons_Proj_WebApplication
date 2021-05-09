using RestSharp;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autism_Detection_Hons_Proj_WebApplication
{
    public partial class Classification_Report_Page : System.Web.UI.Page
    {
        private static double min_threshold = 0.9;

        private static Dictionary<string, double> update_weights_dict;
        private Dictionary<string, string> classifier_weights_dict;
        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<string, string> results_dict = (Dictionary<string, string>)Session["Classification_Result"];
            classifier_weights_dict = (Dictionary<string, string>)Session["Classifier_Weights"];

            if (!IsPostBack)
            {
                if (results_dict.Count > 0)
                {
                    update_weights_dict = new Dictionary<string, double>();
                    update_weights_dict.Add(classifier_weights_dict.ElementAt(0).Key, double.Parse(classifier_weights_dict.ElementAt(0).Value));
                    update_weights_dict.Add(classifier_weights_dict.ElementAt(1).Key, double.Parse(classifier_weights_dict.ElementAt(1).Value));
                    update_weights_dict.Add(classifier_weights_dict.ElementAt(2).Key, double.Parse(classifier_weights_dict.ElementAt(2).Value));
                    update_weights_dict.Add(classifier_weights_dict.ElementAt(3).Key, double.Parse(classifier_weights_dict.ElementAt(3).Value));


                    //update_weights_dict.Add(classifier_weights_dict.ElementAt(0).Key, double.Parse(classifier_weights_dict.ElementAt(0).Value));
                    result_1.InnerText = classifier_weights_dict.ElementAt(0).Value + "\t|\t";
                    if (double.Parse(classifier_weights_dict.ElementAt(0).Value) <= min_threshold)
                    {
                        result_1.Style.Value = "text-decoration: line-through;";
                    }

                    if (results_dict.ElementAt(0).Value == "-1")
                    {
                        result_1.InnerText += results_dict.ElementAt(0).Key + ": " + "Normal";
                    }
                    else
                    {
                        result_1.InnerText += results_dict.ElementAt(0).Key + ": " + "ASD";
                    }


                    //update_weights_dict.Add(classifier_weights_dict.ElementAt(1).Key, double.Parse(classifier_weights_dict.ElementAt(1).Value));
                    result_2.InnerText = classifier_weights_dict.ElementAt(1).Value + "\t|\t";
                    if (double.Parse(classifier_weights_dict.ElementAt(1).Value) <= min_threshold)
                    {
                        result_2.Style.Value = "text-decoration: line-through;";
                    }
                    if (results_dict.ElementAt(1).Value == "-1")
                    {
                        result_2.InnerText += results_dict.ElementAt(1).Key + ": " + "Normal";
                    }
                    else
                    {
                        result_2.InnerText += results_dict.ElementAt(1).Key + ": " + "ASD";
                    }


                    //update_weights_dict.Add(classifier_weights_dict.ElementAt(2).Key, double.Parse(classifier_weights_dict.ElementAt(2).Value));
                    result_3.InnerText = classifier_weights_dict.ElementAt(2).Value + "\t|\t";
                    if (double.Parse(classifier_weights_dict.ElementAt(2).Value) <= min_threshold)
                    {
                        result_3.Style.Value = "text-decoration: line-through;";
                    }
                    if (results_dict.ElementAt(2).Value == "-1")
                    {
                        result_3.InnerText += results_dict.ElementAt(2).Key + ": " + "Normal";
                    }
                    else
                    {
                        result_3.InnerText += results_dict.ElementAt(2).Key + ": " + "ASD";
                    }


                    //update_weights_dict.Add(classifier_weights_dict.ElementAt(3).Key, double.Parse(classifier_weights_dict.ElementAt(3).Value));
                    result_4.InnerText = classifier_weights_dict.ElementAt(3).Value + "\t|\t";
                    if (double.Parse(classifier_weights_dict.ElementAt(3).Value) <= min_threshold)
                    {
                        result_4.Style.Value = "text-decoration: line-through;";
                    }
                    if (results_dict.ElementAt(3).Value == "-1")
                    {
                        result_4.InnerText += results_dict.ElementAt(3).Key + ": " + "Normal";
                    }
                    else
                    {
                        result_4.InnerText += results_dict.ElementAt(3).Key + ": " + "ASD";
                    }


                    if (results_dict.ElementAt(4).Value == "-1")
                    {
                        final_result.InnerText = results_dict.ElementAt(4).Key + ": " + "Normal";
                    }
                    else
                    {
                        final_result.InnerText = results_dict.ElementAt(4).Key + ": " + "ASD";
                    }

                    //final_result.InnerText = results_dict.ElementAt(0).Key + ": " + results_dict.ElementAt(0).Value;
                }
                else
                {
                    Response.Redirect("~/File_Upload_Page.aspx");
                }
            } // end of is post back
        }

        protected void SVM_Right_Click(object sender, EventArgs e)
        {
            if(double.Parse(classifier_weights_dict.ElementAt(0).Value) < 1.0)
            {
                update_weights_dict[update_weights_dict.ElementAt(0).Key] += 0.1;
                string str = result_1.InnerText;
                str = str.Substring(str.IndexOf('|'));
                result_1.InnerText = update_weights_dict[update_weights_dict.ElementAt(0).Key].ToString() + "\t" + str;
            }
        }
        protected void SVM_Wrong_Click(object sender, EventArgs e)
        {
            if (double.Parse(classifier_weights_dict.ElementAt(0).Value) > 0.0)
            {
                update_weights_dict[update_weights_dict.ElementAt(0).Key] -= 0.1;
                string str = result_1.InnerText;
                str = str.Substring(str.IndexOf('|'));
                result_1.InnerText = update_weights_dict[update_weights_dict.ElementAt(0).Key].ToString() + "\t" + str;
            }
        }

        protected void RF_Right_Click(object sender, EventArgs e)
        {
            if (double.Parse(classifier_weights_dict.ElementAt(1).Value) < 1.0)
            {
                update_weights_dict[update_weights_dict.ElementAt(1).Key] += 0.1;
                string str = result_2.InnerText;
                str = str.Substring(str.IndexOf('|'));
                result_2.InnerText = update_weights_dict[update_weights_dict.ElementAt(1).Key].ToString() + "\t" + str;
            }
        }
        protected void RF_Wrong_Click(object sender, EventArgs e)
        {
            if (double.Parse(classifier_weights_dict.ElementAt(1).Value) > 0.0)
            {
                update_weights_dict[update_weights_dict.ElementAt(1).Key] -= 0.1;
                string str = result_2.InnerText;
                str = str.Substring(str.IndexOf('|'));
                result_2.InnerText = update_weights_dict[update_weights_dict.ElementAt(1).Key].ToString() + "\t" + str;
            }
        }

        protected void MLP_Right_Click(object sender, EventArgs e)
        {
            if (double.Parse(classifier_weights_dict.ElementAt(2).Value) < 1.0)
            {
                update_weights_dict[update_weights_dict.ElementAt(2).Key] += 0.1;
                string str = result_3.InnerText;
                str = str.Substring(str.IndexOf('|'));
                result_3.InnerText = update_weights_dict[update_weights_dict.ElementAt(2).Key].ToString() + "\t" + str;
            }
        }
        protected void MLP_Wrong_Click(object sender, EventArgs e)
        {
            if (double.Parse(classifier_weights_dict.ElementAt(2).Value) > 0.0)
            {
                update_weights_dict[update_weights_dict.ElementAt(2).Key] -= 0.1;
                string str = result_3.InnerText;
                str = str.Substring(str.IndexOf('|'));
                result_3.InnerText = update_weights_dict[update_weights_dict.ElementAt(2).Key].ToString() + "\t" + str;
            }
        }

        protected void ADB_Right_Click(object sender, EventArgs e)
        {
            if (double.Parse(classifier_weights_dict.ElementAt(3).Value) < 1.0)
            {
                update_weights_dict[update_weights_dict.ElementAt(3).Key] += 0.1;
                string str = result_4.InnerText;
                str = str.Substring(str.IndexOf('|'));
                result_4.InnerText = update_weights_dict[update_weights_dict.ElementAt(3).Key].ToString() + "\t" + str;
            }
        }
        protected void ADB_Wrong_Click(object sender, EventArgs e)
        {
            if (double.Parse(classifier_weights_dict.ElementAt(3).Value) > 0.0)
            {
                update_weights_dict[update_weights_dict.ElementAt(3).Key] -= 0.1;
                string str = result_4.InnerText;
                str = str.Substring(str.IndexOf('|'));
                result_4.InnerText = update_weights_dict[update_weights_dict.ElementAt(3).Key].ToString() + "\t" + str;
            }
        }

        protected void Submit_Updated_Weights_Click(object sender, EventArgs e)
        {
            var restclient = new RestClient("http://localhost:5000/");
            var request = new RestRequest("classify_samples/update_classifier_weights/", Method.POST);

            request.AddJsonBody(update_weights_dict);
            var response = restclient.Execute(request);

            if (response.IsSuccessful)
            {
                Response.Redirect("File_Upload_Page.aspx");
                Debug.WriteLine(response);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "update_classifier_weights_failure", "alert('Error Updating the " +
                    "Weights');", true);
                Debug.WriteLine(response);
                Response.Redirect("File_Upload_Page.aspx");
            }

            
        }
    }
}