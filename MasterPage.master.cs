using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MTBScout;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        AddReference("Script/CommonScript.js", true, "");
        AddReference("Script/jquery-2.0.3.min.js", true, "");
        AddReference("Script/tinycolor-0.9.16.min.js", true, "");
        AddReference("Script/jgallery.min.js", true, "");
        AddReference("Script/jgallery.js", true, "");

        AddReference("css/StyleSheet.css", false, "");
        AddReference("css/font-awesome.min.css", false, "");
        AddReference("css/jgallery.min.css", false, "");
    }

    private void AddReference(string subPath, bool script, string parms)
    {
        LiteralControl c = new LiteralControl();
        string ub = PathFunctions.GetFullPath(Request, subPath);
        if (!string.IsNullOrEmpty(parms))
            ub = ub + '?' + parms;
        c.Text = script
            ? string.Format("<script type=\"text/javascript\" src=\"{0}\"></script>", ub)
            : string.Format("<link rel=\"stylesheet\" href=\"{0}\" type=\"text/css\" media=\"screen\" />", ub);
        Page.Header.Controls.Add(c);
    }


}
