using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AviaWebApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Date_s.Text = DateTime.Now.ToString("dd.MM.yyy");
            //Date_po.Text = DateTime.Now.AddMonths(1).AddDays(-1).ToString("dd.MM.yyy");
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            //параметры запроса рейсов из БД
            string dateS = Server.UrlEncode(Date_s.Text); //дата начала
            string datePo = Server.UrlEncode(Date_po.Text);
            string cityOut = Server.UrlEncode(City_out.SelectedValue);//город отправления
            string cityIn = Server.UrlEncode(City_in.SelectedValue);

            Response.Redirect("Results.aspx?dateS=" + Date_s.Text + "&datePo=" + Date_po.Text + "&cityOut=" + cityOut + "&cityIn=" + cityIn);
        }
    }
}