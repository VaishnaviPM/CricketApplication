using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace MyCricketApplication
{
    public partial class Match : System.Web.UI.Page
    {
        string URL = "https://rest.entitysport.com/v2/matches/?status=2&token=ec471071441bb2ac538a0ff901abd249&per_page=10&&paged=1";
        protected void Page_Load(object sender, EventArgs e)
        {
			if (!Page.IsPostBack)
			{				
				if (Session["MatchID"] != null)
				{
					if (getMatchData(URL))
					{
					}
					else
						lblErrorMsg.Text = "No data found! Go Back to Home Page";
					
						//if (data == null)
						//{
						//	lblErrorMsg.Text = "No data found! Go Back to Home Page";
						//	//lblTeamID.Visible = false;
						//	//btnSearch.Visible = false;
						//	//txtTeamID.Visible = false;
						//}
						//else
						//{
						//	lblErrorMsg.Visible = true;
						//	//lblTeamID.Visible = true;
						//	//btnSearch.Visible = true;
						//	//txtTeamID.Visible = true;
						//}
					}
				lblErrorMsg.Text = "Match ID is null.";
			}
		}

		private bool getMatchData(string URL)
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
				List<Teama> teamList = null;

				foreach (Item str in itemList)
				{
					if (str.match_id.ToString() == Session["MatchID"].ToString())
					{
						var list = new List<Item> { str };
						//teamList = new List<Teama>(str.teama.team_id);
						string teama_id = list[0].teama.team_id.ToString();
						string teamb_id = list[0].teamb.team_id.ToString();


						GridViewTeamA.DataSource = list;
						GridViewTeamA.DataBind();

						GridViewTeamB.DataSource = list;
						GridViewTeamB.DataBind();
						break;
					}
				}				
			}
			return true;
		}

    }
}