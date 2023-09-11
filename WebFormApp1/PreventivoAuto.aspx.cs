using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormApp1
{
    using System;

    public partial class PreventivoAuto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                ViewState["PrezzoAuto"] = 20000.00; 
            }
        }

        protected void ddlAuto_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedModel = ddlAuto.SelectedValue;
            double prezzoBase = 0.00; 

            
            switch (selectedModel)
            {
                case "Fiat Punto":
                    prezzoBase = 20000.00;
                    imgAuto.ImageUrl = "https://upload.wikimedia.org/wikipedia/commons/6/60/Fiat_Punto_II_front_20100509.jpg";
                    break;
                case "Lancia Delta":
                    prezzoBase = 25000.00;
                    imgAuto.ImageUrl = "https://upload.wikimedia.org/wikipedia/commons/f/f1/Lancia_delta_34_front_grigia_dx.jpg"; 
                    break;
                  
            }

            ViewState["PrezzoAuto"] = prezzoBase; 
            imgAuto.Visible = true; 
        }

        protected void btnCalcola_Click(object sender, EventArgs e)
        {
            double totaleOptionals = 0.00;

           
            if (cbVerniceMetallizzata.Checked)
                totaleOptionals += 330.00;
            if (cbFariXeno.Checked)
                totaleOptionals += 180.00;
            if (cbNavigazioneSatellitare.Checked)
                totaleOptionals += 1800.00;
            if (cbLineAssistant.Checked)
                totaleOptionals += 2000.00;
            if (cbRuotaDiScorta.Checked)
                totaleOptionals += 155.00;
            if (cbPelle.Checked)
                totaleOptionals += 700.00;

           
            int anniGaranzia = Convert.ToInt32(ddlGaranzia.SelectedValue);
            double costoGaranzia = anniGaranzia * 120.00;

            
            double prezzoAuto = (double)ViewState["PrezzoAuto"];
            double totaleComplessivo = prezzoAuto + totaleOptionals + costoGaranzia;

            
            lblPrezzoAuto.Text = prezzoAuto.ToString("C");
            lblTotaleOptionals.Text = totaleOptionals.ToString("C");
            lblCostoGaranzia.Text = costoGaranzia.ToString("C");
            lblTotaleComplessivo.Text = totaleComplessivo.ToString("C");
        }
    }
}
