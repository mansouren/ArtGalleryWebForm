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
    public partial class ManageNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogout_Click(object sender, ImageClickEventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect(FormsAuthentication.DefaultUrl);

        }

       

        protected void grdNews_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DoEdit")
            {
                GC.Collect();
                GC.WaitForPendingFinalizers();
                int NewsID = Convert.ToInt32(e.CommandArgument);

                ViewState["NewsID"] = NewsID;
                ViewState["EditMode"] = "Edit";

                DataTable dtNews = DataLayer.News.SelectRow(NewsID).Tables["News"];
                if (dtNews.Rows.Count != 0)
                {
                    DataRow drNews = dtNews.Rows[0];
                    txtNewsTitle.Text = drNews["NewsTitle"].ToString();
                    txtNewsText.Text = drNews["NewsText"].ToString();
                    mvNews.SetActiveView(vwEdit);
                }

            }

       

        }

      


        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                GC.Collect();
                GC.WaitForPendingFinalizers();
              
                            int NewsID = Convert.ToInt32(ViewState["NewsID"]);
                            DataLayer.News.UpdateRow(NewsID,txtNewsTitle.Text,txtNewsText.Text);
                            grdNews.DataBind();
                            mvNews.SetActiveView(vwList);
                 
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            mvNews.SetActiveView(vwList);
        }
        
    }
}