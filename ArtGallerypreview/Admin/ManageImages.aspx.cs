using System;

using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using apocryph.BitmapManip;
using System.Web.Security;

namespace ArtGallerypreview.Admin
{
    public partial class ManageImages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void grdImages_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DoEdit")
            {
                GC.Collect();
                GC.WaitForPendingFinalizers();
                int imageID = Convert.ToInt32(e.CommandArgument);

                ViewState["ImageID"] = imageID;
                ViewState["EditMode"] = "Edit";
                

                DataTable dtImages = DataLayer.Images.SelectRow(imageID).Tables["Images"];
                if (dtImages.Rows.Count != 0)
                {
                    DataRow drImages = dtImages.Rows[0];
                    txtFaImageTitle.Text = drImages["FaImageTitle"].ToString();
                    txtEnImageTitle.Text = drImages["EnImageTitle"].ToString();
                    txtDimension.Text = drImages["Dimension"].ToString();
                    txtPrice.Text = drImages["Price"].ToString();
                    txtFaTeknik.Text = drImages["FaTeknik"].ToString();
                    txtTeknik.Text = drImages["EnTeknik"].ToString();
                    txtFaStatus.Text = drImages["FaStatus"].ToString();
                    txtEnStatus.Text = drImages["EnStatus"].ToString();
                    ViewState["CurrentImageUrl"] = drImages["ImageUrl"].ToString();
                    mvImages.SetActiveView(vwEdit);
                }
            }

            else if (e.CommandName == "DoDelete")
            {
                GC.Collect();
                GC.WaitForPendingFinalizers();
                int imageID = Convert.ToInt32(e.CommandArgument);
                DataTable dtImages = DataLayer.Images.SelectRow(imageID).Tables["Images"];
                
                DataRow drImages = dtImages.Rows[0];
                ViewState["CurrentImageUrl"] = drImages["ImageUrl"].ToString();
                
                File.Delete(Server.MapPath(ViewState["CurrentImageUrl"].ToString()));
                File.Delete(Server.MapPath(GetThumbFilename(ViewState["CurrentImageUrl"].ToString())));
                DataLayer.Images.DeleteRow(imageID);
              
                grdImages.DataBind();
                mvImages.SetActiveView(vwList);

            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            mvImages.SetActiveView(vwList);
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            GC.Collect();
            GC.WaitForPendingFinalizers();
            ViewState["EditMode"] = "Insert";
            txtFaImageTitle.Text = string.Empty;
            txtEnImageTitle.Text = string.Empty;
            txtDimension.Text = string.Empty;
            txtPrice.Text = string.Empty;
            txtFaTeknik.Text = string.Empty;
            txtTeknik.Text = string.Empty;
            txtFaStatus.Text = string.Empty;
            txtEnStatus.Text = string.Empty;
            ViewState["CurrentImageUrl"] = string.Empty;
            mvImages.SetActiveView(vwEdit);
        }

        protected void cvUploadedFileSize_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = fuImageUrl.PostedFile.ContentLength <= 307200 && fuImageUrl.PostedFile.ContentLength != 0;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                GC.Collect();
                GC.WaitForPendingFinalizers();
                string EditMode = ViewState["EditMode"].ToString();

                switch (EditMode)
                {
                    case "Insert":
                        {

                            if (fuImageUrl.HasFile)
                            {
                                string OriginalExtension = Path.GetExtension(fuImageUrl.PostedFile.FileName);
                                string NewFilename = Guid.NewGuid().ToString();
                                string RelativeFilename = string.Format("~/Uploads/GalleryImages/{0}{1}", NewFilename, OriginalExtension);
                                string PhysicalFilename = Server.MapPath(RelativeFilename);
                                fuImageUrl.PostedFile.SaveAs(PhysicalFilename);
                                CreateThumbnail(PhysicalFilename);

                                ViewState["CurrentImageUrl"] = RelativeFilename;
                            }

                            DataLayer.Images.InsertRow(txtFaImageTitle.Text, txtEnImageTitle.Text,txtDimension.Text,txtPrice.Text
                            ,txtFaTeknik.Text,txtTeknik.Text,txtFaStatus.Text,txtEnStatus.Text, ViewState["CurrentImageUrl"].ToString());
                            grdImages.DataBind();
                            mvImages.SetActiveView(vwList);

                            break;
                        }

                    case "Edit":
                        {
                            int ImageID = Convert.ToInt32(ViewState["ImageID"]);

                            if (fuImageUrl.PostedFile.ContentLength != 0)
                            {
                                string OriginalExtension = Path.GetExtension(fuImageUrl.PostedFile.FileName);
                                string NewFilename = Guid.NewGuid().ToString();
                                string RelativeFilename = string.Format("~/Uploads/GalleryImages/{0}{1}", NewFilename, OriginalExtension);
                                string PhysicalFilename = Server.MapPath(RelativeFilename);
                                fuImageUrl.PostedFile.SaveAs(PhysicalFilename);
                                CreateThumbnail(PhysicalFilename);

                                if (ViewState["CurrentImageUrl"].ToString() != string.Empty)
                                {
                                    File.Delete(Server.MapPath(ViewState["CurrentImageUrl"].ToString()));
                                    File.Delete(Server.MapPath(GetThumbFilename(ViewState["CurrentImageUrl"].ToString())));

                                }
                                ViewState["CurrentImageUrl"] = RelativeFilename;
                            }

                            DataLayer.Images.UpdateRow(ImageID, txtFaImageTitle.Text, txtEnImageTitle.Text,txtDimension.Text,
                            txtPrice.Text,txtFaTeknik.Text,txtTeknik.Text,txtFaStatus.Text,txtEnStatus.Text,ViewState["CurrentImageUrl"].ToString());
                            grdImages.DataBind();
                            mvImages.SetActiveView(vwList);
                            break;
                        }

                }


            }
        }

        private string imageUploadPath = "~/Uploads/GalleryImages/";

        private string CreateThumbnail(string OriginalFileFullPath)
        {
            string filename = string.Empty;

            if (File.Exists(OriginalFileFullPath))
            {
                System.Drawing.Image img = Bitmap.FromFile(OriginalFileFullPath);
                Bitmap bmp = new Bitmap(img);

                bmp = BitmapManipulator.ThumbnailBitmap(bmp, 240, 240);

                string thumbfilename = Path.GetFileNameWithoutExtension(OriginalFileFullPath) + "_Thumb" + Path.GetExtension(OriginalFileFullPath);

                string thumb_file_relative_path = imageUploadPath + thumbfilename;

                bmp.Save(Server.MapPath(thumb_file_relative_path), System.Drawing.Imaging.ImageFormat.Jpeg);

                filename = thumb_file_relative_path;
            }
            return filename;
        }

        protected string GetThumbFilename(string OriginalFilename)
        {
            string thumbfilename =
                    Path.GetFileNameWithoutExtension(OriginalFilename)
                    + "_Thumb"
                    + Path.GetExtension(OriginalFilename);

            return imageUploadPath + thumbfilename;
        }

        //protected void DeleteThumbFilename(string OriginalFilename )
        //{
        //    string thumbfilename =
        //            Path.GetFileNameWithoutExtension(OriginalFilename)
        //            + "_Thumb"
        //            + Path.GetExtension(OriginalFilename);
        //    File.Delete(imageUploadPath + thumbfilename);
        //}

        protected void btnLogout_Click(object sender, ImageClickEventArgs e)
        {
           FormsAuthentication.SignOut();
            Response.Redirect(FormsAuthentication.DefaultUrl);
        
        }
    }
}