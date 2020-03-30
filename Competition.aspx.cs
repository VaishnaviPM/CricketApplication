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
    public partial class Competition1 : System.Web.UI.Page
    {
        string URL = string.Empty;
		
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				if (Session["CompID"] != null)
				{
					URL = "https://rest.entitysport.com/v2/competitions/" + Session["CompID"] + "/squads/?token=ec471071441bb2ac538a0ff901abd249";
					List<Squad> data = getCompData(URL);
					if (data == null)
					{
						lblErrorMsg.Text = "No data found! Go Back to Home Page";
						lblTeamID.Visible = false;
						btnSearch.Visible = false;
						txtTeamID.Visible = false;
						headerText.Visible = false;
					}
					else
					{
						lblErrorMessage.Visible = true;
						lblTeamID.Visible = true;
						btnSearch.Visible = true;
						txtTeamID.Visible = true;
					}

					lblTeamDetail.Visible = false;
					GridViewTeam.Visible = false;
					tblPlayerForm.Visible = false;
				}
			}		
        }

		private List<Squad> getCompData(string URL)
		{
			Object ar = new object();
			var jsonstring = JsonConvert.SerializeObject(ar);
			HttpClient httpclient = new HttpClient();
			httpclient.DefaultRequestHeaders.Accept.Clear();
			httpclient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
			HttpResponseMessage msg = httpclient.GetAsync(URL).Result;
			List<Squad> itemList = null;
			if (msg.IsSuccessStatusCode)
			{
				var data = msg.Content.ReadAsStringAsync().Result;
				RootObject1 obj = JsonConvert.DeserializeObject<RootObject1>(data);
				itemList = new List<Squad>(obj.response.squads);
				GridViewComp.DataSource = itemList;
				GridViewComp.DataBind();
			}
			return itemList;
		}

		protected void btnBack_Click(object sender, EventArgs e)
		{

		}

		protected void btnSearch_Click(object sender, EventArgs e)
		{
			string teamID = string.Empty;
			teamID = txtTeamID.Text.Trim();
			if (teamID == "")
			{
				lblErrorMessage.Text = "Team ID is Required";
				return;
			}
			else
			{
				Session["TeamID"] = teamID;
				lblTeamDetail.Visible = true;
				GridViewTeam.Visible = true;
				tblPlayerForm.Visible = true;

				URL = "https://rest.entitysport.com/v2/competitions/" + Session["CompID"] + "/squads/?token=ec471071441bb2ac538a0ff901abd249";
				List<Squad> itemList = getCompData(URL);
				foreach (Squad str in itemList)
				{
					if (str.team_id == teamID)
					{	
						GridViewTeam.DataSource = str.players;
						GridViewTeam.DataBind();
						return;
					}
				}
			}
		}

		protected void btnSearchPlayerData_Click(object sender, EventArgs e)
		{
			Session["PlayerID"] = txtPlayerID.Text.Trim();
			string url = "PlayerInfo.aspx";
			string s = "window.open('" + url + "', 'popup_window', 'width=700,height=500,left=100,top=100');";
			ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
		}
	}
}