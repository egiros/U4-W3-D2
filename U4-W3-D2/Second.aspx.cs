using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace U4_W3_D2
{
    public partial class Second : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Verifica se c'è un cookie contenente la username
            if (Request.Cookies["UsernameCookie"] != null)
            {
                // Visualizza la username nella Label
                DatiUsername.Text = "Username: " + Request.Cookies["UsernameCookie"]["Username"] + " Password: " + Request.Cookies["UsernameCookie"]["Password"];
            }
            else
            {
                // Se il cookie non è presente, reinderizza alla pagina di login
                Response.Redirect("Default");
            }
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            // Cancella il Cookie Sovrascrivendolo
            HttpCookie cookie = new HttpCookie("UsernameCookie");
            cookie.Expires = DateTime.Now.AddDays(-1); // mettendo -1 vuol dire che il cookie nasce già scaduto da ieri
            Response.Cookies.Add(cookie);  // viene inviato il cookie scaduto
            Response.Redirect("Default");
        }
    }
}