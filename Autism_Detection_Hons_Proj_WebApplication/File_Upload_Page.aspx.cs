using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;
using System.Diagnostics;

namespace Autism_Detection_Hons_Proj_WebApplication
{
    public partial class FileUploadPage : System.Web.UI.Page
    {

        private struct SingleScanpath
        {
            public int Idx;
            public int x;
            public int y;
            public int duration;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Upload_view_files_Click(object sender, EventArgs e)
        {
            string file_path = Server.MapPath("~/Uploaded_files/");

            if (scanpath_file_upload.HasFile && image_file_upload.HasFile)
            {
                if (!Directory.Exists(file_path))
                {
                    Directory.CreateDirectory(file_path);
                }

                string scanpath_fl_url = file_path + Path.GetFileName(scanpath_file_upload.FileName);
                string image_fl_url = file_path + Path.GetFileName(image_file_upload.FileName);

                // Saving the files to UploadedData dir
                scanpath_file_upload.SaveAs(scanpath_fl_url);
                image_file_upload.SaveAs(image_fl_url);

                // Viewing Scan pathFiles
                List<SingleScanpath> singleScanpaths = SeperateScanPaths();
                DisplayinTable(singleScanpaths);

                // Viewing the Image File
                UploadedImg.ImageUrl = "../Uploaded_files/"+ Path.GetFileName(image_file_upload.FileName);

                Debug.WriteLine(scanpath_fl_url); // debug
                Debug.WriteLine(image_fl_url);    // debug

                // Uploading Files to API

                var restclient = new RestClient("http://localhost:5000/");
                var request = new RestRequest("classify_samples/classify/", Method.POST);
                request.AlwaysMultipartFormData = true;
                request.AddHeader("content-type", "multipart/form-data");

                request.AddFile("file1", scanpath_fl_url);
                request.AddFile("file2", image_fl_url);

                var response = restclient.Execute<List<Dictionary<string, string>>>(request);
                
                Debug.WriteLine("Headers: "+response.Headers);  // debug
                Debug.WriteLine("Content: " + response.Content);  // debug
                Debug.WriteLine("response: " + response.Data); // debug
                if (response.IsSuccessful)
                {
                    Debug.WriteLine("success");

                    Session["Classification_Result"] = response.Data[0];
                    Session["Feature_Values"] = response.Data[1];
                    Session["Classifier_Weights"] = response.Data[2];
                    Session["Image_File_URL"] = image_fl_url; 
                    
                }
                else
                {
                    Debug.WriteLine("failure");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "js_alert_1", "alert('Please Select the Image and Text File');", true);
            }
        }

        private List<SingleScanpath> SeperateScanPaths()
        {
            List<SingleScanpath> list_to_return = new List<SingleScanpath>();

            using (StreamReader reader = new StreamReader(scanpath_file_upload.PostedFile.InputStream))
            {
                string line = "";

                if ((line = reader.ReadLine()) != null)
                {
                    while((line = reader.ReadLine()) != null)
                    {
                        string[] arr_val = line.Split(',');
                        SingleScanpath singleScanpath = new SingleScanpath
                        {
                            Idx = int.Parse(arr_val[0]),
                            x = int.Parse(arr_val[1]),
                            y = int.Parse(arr_val[2]),
                            duration = int.Parse(arr_val[3])
                        };

                        list_to_return.Add(singleScanpath);
                    }
                }
                reader.Close();
                return list_to_return;
            }  
        }

        private void DisplayinTable(List<SingleScanpath> data)
        {
            int counter = 0;
            foreach(SingleScanpath singleScanpath in data)
            {
                TableRow tableRow = new TableRow();
                TableCell tableCell1 = new TableCell();
                TableCell tableCell2 = new TableCell();
                TableCell tableCell3 = new TableCell();
                TableCell tableCell4 = new TableCell();

                if ((counter % 2) > 0)
                {
                    tableRow.BackColor =  Color.Beige;
                }
                else
                {
                    tableRow.BackColor = Color.Aqua;
                }

                tableCell1.Text = Convert.ToString(singleScanpath.Idx);
                tableRow.Cells.Add(tableCell1);

                tableCell2.Text = Convert.ToString(singleScanpath.x);
                tableRow.Cells.Add(tableCell2);

                tableCell3.Text = Convert.ToString(singleScanpath.y);
                tableRow.Cells.Add(tableCell3);

                tableCell4.Text = Convert.ToString(singleScanpath.duration);
                tableRow.Cells.Add(tableCell4);

                Scanpath_table.Rows.Add(tableRow);

                counter++;
            }
        }

        protected void btn_next_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Classification_Report_Page.aspx");
            Response.Redirect("~/Visualize_Fixation_Map_Page.aspx");
        }
    }
}