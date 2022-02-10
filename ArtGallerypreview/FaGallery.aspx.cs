using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace ArtGallerypreview
{
    public partial class FaGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FetchDataToDataList();
            }
        }

        private string imageUploadPath = "~/Uploads/GalleryImages/";
        protected string GetThumbFilename(string OriginalFilename)
        {
            string thumbfilename =
                    Path.GetFileNameWithoutExtension(OriginalFilename)
                    + "_Thumb"
                    + Path.GetExtension(OriginalFilename);

            return imageUploadPath + thumbfilename;
        }

        private void FetchDataToDataList()
        {
            SqlConnection con = new SqlConnection(@"Persist Security Info=False;Initial Catalog=ArtGallery;Data Source=.; User ID=sa;Password=1366");

            PagedDataSource pagedDS = new PagedDataSource();
            DataTable dt = DataLayer.Images.SelectAll().Tables["Images"];
            pagedDS.DataSource = dt.DefaultView;
            pagedDS.AllowPaging = true;
            pagedDS.PageSize = 4;
            pagedDS.CurrentPageIndex = CurrentPage;
            dlImages.DataSource = pagedDS;
            dlImages.DataBind();

            lblCurrentPage.Text = "Page: " + (CurrentPage + 1).ToString() + " of " + pagedDS.PageCount.ToString();
            // Disable Prev or Next buttons if necessary
            cmdPrev.Enabled = !pagedDS.IsFirstPage;
            cmdNext.Enabled = !pagedDS.IsLastPage;
        }

        public int CurrentPage
        {
            get
            {
                // look for current page in ViewState
                object o = this.ViewState["_CurrentPage"];
                if (o == null)
                    return 0; // default page index of 0
                else
                    return (int)o;
            }

            set
            {
                this.ViewState["_CurrentPage"] = value;
            }
        }

        protected void cmdPrev_Click(object sender, EventArgs e)
        {
            // Set viewstate variable to the previous page
            CurrentPage -= 1;

            // Reload control
            FetchDataToDataList();
        }
        protected void cmdNext_Click(object sender, EventArgs e)
        {
            // Set viewstate variable to the previous page
            CurrentPage += 1;

            // Reload control
            FetchDataToDataList();
        }


    }
}