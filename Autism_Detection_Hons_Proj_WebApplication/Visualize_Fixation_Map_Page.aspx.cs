using RestSharp;
using RestSharp.Extensions;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autism_Detection_Hons_Proj_WebApplication
{
    public partial class Visualize_Fixation_Map_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["Image_File_URL"] != null) 
            {
                var restclient = new RestClient("http://localhost:5000/");
                var request = new RestRequest("classify_samples/get_saliency_map/", Method.POST);
                request.AlwaysMultipartFormData = true;
                request.AddHeader("content-type", "multipart/form-data");

                request.AddFile("file1", (string)Session["Image_File_URL"]);

                //string fl_path = "c:/users/brijesh prajapati/documents/projects" +
                //    "/autism_detection_hons_proj_webapplication/autism_detection_hons_proj_webapplication/" +
                //    "downloaded_files/image.png";

                //string fl_path = "~/Downloaded_files/salmap.png";
                string file_path = Server.MapPath("~/Uploaded_files/");
                string image_fl_url = file_path + Path.GetFileName("salmap.png");
                //byte[] response = restclient.DownloadData(request);
                //File.WriteAllBytes(fl_path, response);
                restclient.DownloadData(request).SaveAs(image_fl_url);

                Salmap_Img.ImageUrl = "~/Uploaded_files/salmap.png";

                //restclient.DownloadData(request).SaveAs(fl_path);   
                display_features_in_table((Dictionary<string, string>)Session["Feature_Values"]);
            }
        }

        private void display_features_in_table(Dictionary<string, string> input)
        {
            foreach(KeyValuePair<string, string> kvp in input)
            {
                TableRow tableRow = new TableRow();
                TableCell tableCell1 = new TableCell();
                TableCell tableCell2 = new TableCell();

                tableCell1.Text = kvp.Key;
                tableCell2.Text = kvp.Value;

                tableRow.Cells.Add(tableCell1);
                tableRow.Cells.Add(tableCell2);

                feature_table.Rows.Add(tableRow);
            } 
        }
    }
}