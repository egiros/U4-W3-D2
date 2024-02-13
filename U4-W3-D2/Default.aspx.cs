using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace U4_W3_D2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            // Validazione del Login (qualsiasi username e password sono accettati)
            // In un'applicazione reale, andrebbe effettuata una verifica sicura delle credenziali.

            HttpCookie cookie = new HttpCookie("UsernameCookie"); // Viene instanziato HttpCookie che permette di gestire il cookie con il nome scelto
            cookie.Values["Username"] = Username.Text; // Viene inserita all'interno del cookie la chiave "Username" che prende il valore direttamente dal campo con lo stesso nome
            cookie.Values["Password"] = Password.Text; // idem ma con chiave "Password"
            cookie.Expires = DateTime.Now.AddDays(10);

           Response.Cookies.Add(cookie); // Invia al client il cookie creato

           
            Response.Redirect("Second");
        }
    }
}