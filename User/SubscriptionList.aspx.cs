using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MTBScout.Entities;
using System.Globalization;

public partial class SubscriptionList : System.Web.UI.Page
{
    EventSubscriptor[] subscriptors;
    
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);


    }
    protected void Page_Load(object sender, EventArgs e)
    {
		
        if (!Page.IsPostBack)
        {
            BoundField dcf = new BoundField();
            dcf.HeaderText = "Nome";
            dcf.DataField = "Name";
            GridViewSubscriptions.Columns.Add(dcf);

            dcf = new BoundField();
            dcf.HeaderText = "Cognome";
            dcf.DataField = "Surname";
            GridViewSubscriptions.Columns.Add(dcf);

            dcf = new BoundField();
            dcf.HeaderText = "Gruppo";
            dcf.DataField = "Club";
            GridViewSubscriptions.Columns.Add(dcf);

            dcf = new BoundField();
            dcf.HeaderText = "Mail";
            dcf.DataField = "EMail";
            GridViewSubscriptions.Columns.Add(dcf);

            dcf = new BoundField();
            dcf.HeaderText = "Data di nascita";
            dcf.DataField = "BirthDateFormatted";
            GridViewSubscriptions.Columns.Add(dcf);

            dcf = new BoundField();
            dcf.HeaderText = "Sesso";
            dcf.DataField = "GenderDescription";
            GridViewSubscriptions.Columns.Add(dcf);
        }
        LoadSubscriptors();
    }

    private void LoadSubscriptors()
    {
		subscriptors = DBHelper.GetSubscriptors(Helper.CurrentEventId);
		Total.InnerText = string.Format("Totale iscritti: {0}", subscriptors.Length);
        GridViewSubscriptions.DataSource = subscriptors;
        GridViewSubscriptions.DataBind();
    }
	protected void ButtonSend_Click(object sender, EventArgs e)
	{
		subscriptors = DBHelper.GetSubscriptors(Helper.CurrentEventId);
		Helper.SendMail("marco.perasso@tiscali.it", null, null, "Foto Enduro dei Fieschi", "Ciao, ti informiamo che abbiamo pubblicato alcune foto dell'evento in oggetto: <a href='http://www.mtbscout.it/Events/Enduro2014/Enduro2014.aspx'>http://www.mtbscout.it/Events/Enduro2014/Enduro2014.aspx</a>. A breve ne arriveranno altre.<br>Buona visione!", true);
		foreach (EventSubscriptor es in subscriptors)
			Helper.SendMail(es.EMail, null, null, "Foto Enduro dei Fieschi", "Ciao, ti informiamo che abbiamo pubblicato alcune foto dell'evento in oggetto: <a href='http://www.mtbscout.it/Events/Enduro2014/Enduro2014.aspx'>http://www.mtbscout.it/Events/Enduro2014/Enduro2014.aspx</a><br>Buona visione!", true);
	}
}
