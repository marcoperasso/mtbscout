﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using MTBScout.Entities;
using MTBScout;
using System.IO;
using System.Threading;

public partial class Admin : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!LoginState.IsAdmin())
			FormsAuthentication.RedirectToLoginPage();
	}
	protected void ButtonExecQuery_Click(object sender, EventArgs e)
	{
		TextBoxResult.Text = "";
		try
		{
			GridViewSelectResults.DataSource = (Object)DBHelper.ExecQuery(TextBoxQuery.Text);
			GridViewSelectResults.DataBind();
			TextBoxResult.Text = "Query eseguita con successo";
		}
		catch (Exception ex)
		{
			WriteException(ex);
		}
	}

	private void WriteException(Exception ex)
	{
		TextBoxResult.Text += ex.Message;
		if (ex.InnerException != null)
			WriteException(ex.InnerException);
	}
	protected void ButtonOffsetDate_Click(object sender, EventArgs e)
	{
		string original = PathFunctions.GetImagePathFromRouteName(TextBoxRouteName.Text);
		if (!Directory.Exists(original))
			return;
		TimeSpan offset;
		if (!TimeSpan.TryParse(TextBoxOffset.Text, out offset))
			return;
		
		foreach (string file in Directory.GetFiles(original, "*.jpg"))
		{
			DateTime photoTime;
			double latidudeRef, latitude, longitudeRef, longitude;
			Helper.GetImageInfos(file, out photoTime, out latidudeRef, out latitude, out longitudeRef, out longitude);
			photoTime += offset;
			Helper.SetCreationTime(file, photoTime);

		}
		
	}
    protected void ButtonMail_Click(object sender, EventArgs e)
    {
        try
		{
			List<string> mailing = new List<string>();
            foreach (MTBUser u in DBHelper.Users)
				if (u.SendMail)
				{
					if (!mailing.Contains(u.EMail, StringComparer.InvariantCultureIgnoreCase))
						mailing.Add(u.EMail);
				}
			foreach (EventSubscriptor es in DBHelper.GetSubscriptors())
				{
					if (!mailing.Contains(es.EMail, StringComparer.InvariantCultureIgnoreCase))
						mailing.Add(es.EMail);
					
				}

			foreach (string mail in mailing)
			{
				Helper.SendMail(mail, null, null, "News", TextBoxMail.Text, true);
				Log.Add(Log.MsgType.info, string.Concat("Inviata mail di news a ", mail));
			}
			
        }
        catch (Exception ex)
        {
            TextBoxResult.Text = ex.ToString();
        }
   
    }
	protected void Button1_Click(object sender, EventArgs e)
	{
		new Thread(new ThreadStart((Action)delegate { ImageCache.Create(Server.MapPath(ImageUrl.Text)); })).Start();
		
	}
}

