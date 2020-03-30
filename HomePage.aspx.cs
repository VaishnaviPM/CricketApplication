using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace MyCricketApplication
{
    public partial class HomePage : System.Web.UI.Page
    {
        string URL = "https://rest.entitysport.com/v2/matches/?status=2&token=ec471071441bb2ac538a0ff901abd249&per_page=10&&paged=1";
        protected void Page_Load(object sender, EventArgs e)
        {
			Session["MatchID"] = string.Empty;
			Session["CompID"] = string.Empty;
			Session["PlayerID"] = string.Empty;
			Session["TeamID"] = string.Empty;
			headerText.Visible = false;
			lblErrorMsg.Text = "";
		}

		private string getMatchData(string URL)
		{
			Object ar = new object();
			var jsonstring = JsonConvert.SerializeObject(ar);
			HttpClient httpclient = new HttpClient();
			httpclient.DefaultRequestHeaders.Accept.Clear();
			httpclient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
			HttpResponseMessage msg = httpclient.GetAsync(URL).Result;

			List<Item> itemList = null;

			if (msg.IsSuccessStatusCode)
			{
				var data = msg.Content.ReadAsStringAsync().Result;
				RootObject obj = JsonConvert.DeserializeObject<RootObject>(data);
				itemList = new List<Item>(obj.response.items);
				GridMatches.DataSource = itemList;
				GridMatches.DataBind();				
			}
			return null;
		}

		protected void btnSearchbyComp_Click(object sender, EventArgs e)
		{
			Session["CompID"] = string.Empty;
			string compID = txtCompID.Text.Trim();

			if (compID == "")
			{
				lblErrorMsg.Text = "Competition ID is required";
				return;
			}
			else
			{
				Session["CompID"] = compID;
				Server.Transfer("~/Competition.aspx");
			}
		}

		//protected void btnSearchbyMatch_Click(object sender, EventArgs e)
		//{
		//	Session["MatchID"] = string.Empty;
		//	string matchID = txtMatchID.Text.Trim();

		//	if (matchID == "")
		//	{
		//		lblErrorMsg.Text = "Match ID is required";
		//		return;
		//	}
		//	else
		//	{
		//		Session["MatchID"] = matchID;
		//		Server.Transfer("~/Match.aspx");
		//	}
		//}

		protected void btnMatchDetail_Click(object sender, EventArgs e)
		{
			getMatchData(URL);
			headerText.Visible = true;
		}
	}
}