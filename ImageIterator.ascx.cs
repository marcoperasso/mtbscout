using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using MTBScout;
using System.Web.Caching;


//================================================================================
public partial class ImageIterator : System.Web.UI.UserControl
{
	string title = "Galleria fotografica";
	private const int maxPages = 10;

	ImageCache cache;
	//--------------------------------------------------------------------------------
	public string Title
	{
		get { return title; }
		set { title = value; }
	}
    public bool HideAds { get; set; }
    public string ImagesPath { get; set; }
	
	//--------------------------------------------------------------------------------
	protected void Page_Load(object sender, EventArgs e)
	{
        if (string.IsNullOrEmpty(ImagesPath))
            ImagesPath = Page.MapPath("Images");

        cache = Helper.GetImageCache(ImagesPath);
        if (cache == null)
            return;

        PageCounterDown.OnClick += new PageCounter.OnClickDelegate(PageCounter_OnClick);
        PageCounterUp.OnClick += new PageCounter.OnClickDelegate(PageCounter_OnClick);

        int start = 0;
        int.TryParse(Start.Value, out start);
        int currentPage = (int)Math.Ceiling((float)start / (float)ImageCache.maxPerPage);
        PageCounterUp.Pages = PageCounterDown.Pages = cache.pages;
        PageCounterUp.CurrentPage = PageCounterDown.CurrentPage = currentPage;
        PageCounterUp.DrawPages();
        PageCounterDown.DrawPages();

        ImagesTitle.InnerText = Title;
        ImagesContainer.Style[HtmlTextWriterStyle.MarginLeft] = "auto";
        ImagesContainer.Style[HtmlTextWriterStyle.MarginRight] = "auto";
        ImagesContainer.Width = Unit.Percentage(95);

		if (!Page.IsPostBack)
			DrawTable();
        Spot1.Visible = !HideAds;
	}

	//--------------------------------------------------------------------------------
	void PageCounter_OnClick(int page)
	{
		Start.Value = (page * ImageCache.maxPerPage).ToString();
		DrawTable();
	}

	//--------------------------------------------------------------------------------
	private void DrawTable()
	{
		int start = 0;
		int.TryParse(Start.Value, out start);
		int currentPage = (int)Math.Ceiling((float)start / (float)ImageCache.maxPerPage);
		PageCounterUp.Pages = PageCounterDown.Pages = cache.pages;
		PageCounterUp.CurrentPage = PageCounterDown.CurrentPage = currentPage;
		PageCounterUp.DrawPages();
		PageCounterDown.DrawPages();

		int prog = 0;
		int end = Math.Min(cache.files.Length, start + ImageCache.maxPerPage);

		Previous.Visible = start != 0;
		Next.Visible = end != cache.files.Length;
        Panel p = new Panel();
        p.CssClass = "album";
			ImagesContainer.Controls.Add(p);
		for (prog = start; prog < end; prog++)
		{
			string file = cache.files[prog];

			string caption = cache.captions[prog];

			HyperLink a = new HyperLink();
            a.NavigateUrl = cache.reducedUrls[prog];
            Image img = new Image();
            img.ImageUrl = cache.thumbUrls[prog];
            img.AlternateText = caption;
            a.Controls.Add(img);

			p.Controls.Add(a);

		}
		ImagesPanel.Update();


	}

	//--------------------------------------------------------------------------------
	protected void Next_Click(object sender, EventArgs e)
	{
		int start = 0;
		int.TryParse(Start.Value, out start);
		Start.Value = (start + ImageCache.maxPerPage).ToString();
		DrawTable();

	}
	//--------------------------------------------------------------------------------
	protected void Previous_Click(object sender, EventArgs e)
	{
		int start = 0;
		int.TryParse(Start.Value, out start);
		Start.Value = Math.Max(0, start - ImageCache.maxPerPage).ToString();
		DrawTable();

	}
}
