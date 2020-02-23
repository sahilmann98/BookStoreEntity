using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
namespace BookStoreEntity
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            DatabaseLayer.Connection obj = new DatabaseLayer.Connection();
            DataTable tbl = new DataTable();
            tbl =obj.srchRecord("select BookName,AuthorName,Price from Purchase");
            String dt = "";
            if (tbl.Rows.Count>0) {
                for (int x=0;x<tbl.Rows.Count;x++)
                {
                    dt = dt + "<div class='col-md-4' style='background-color:black;'><center><h2 style='text-align:center;color:white;'>"+tbl.Rows[x]["BookName"]+"</h2><img src='images/bg1.jpg' class='img img-thumbnail'><br/><h3 style='color:white;'> $"+ tbl.Rows[x]["Price"] + "</h3><center></div>";

                }
                data.InnerHtml = dt;
            }

        }
    }
}