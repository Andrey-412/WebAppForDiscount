using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AviaWebApp
{
    public partial class Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dateS = Request.QueryString["dateS"];
            string datePo = Request.QueryString["datePo"];
            string cityOut = Request.QueryString["cityOut"];
            string cityIn = Request.QueryString["cityIn"];

            Period_Label.Text = dateS + " - " + datePo;
            Label2.Text = cityOut;
            Label4.Text = cityIn;
        }
    }
}