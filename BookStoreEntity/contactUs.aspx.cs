using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStoreEntity
{
    public partial class contactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //below code will insert data into database contact table
        //qry is a type of string that is taking code of entering the data into the contact table
        protected void Button1_Click(object sender, EventArgs e)
        {

            DatabaseLayer.Connection obj = new DatabaseLayer.Connection();
            String qry = "insert into Contact (Name,Email,Msg) values('" + TxtName.Text + "','" + TxtEmail.Text + "','" + TxtMsg.Text + "')";
            obj.SqlQuery(qry);
            //this will make text box empty after entering data into the databse
            TxtName.Text = "";
            TxtEmail.Text = "";
            TxtMsg.Text = "";

        }
    }
}