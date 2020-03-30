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
    public partial class PlayerInfo : System.Web.UI.Page
    {
        string URL = string.Empty;
        string PlayerID = string.Empty;
        private bool found = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            PlayerID = Session["PlayerID"].ToString();
            getPlayerData(URL);
        }

        protected void getPlayerData(string URL)
        {
            URL = "https://rest.entitysport.com/v2/competitions/" + Session["CompID"].ToString() + "/squads/?token=ec471071441bb2ac538a0ff901abd249";
            List<Squad> itemList = getCompData(URL);
            //List<Player> playerDetail = null;
            //GridViewPlayerInfo.DataSource =  assigntoGrid(itemList);
            //GridViewPlayerInfo.DataBind();
            foreach (Squad str in itemList)
            {
                if (Session["TeamID"].ToString() == str.team_id.ToString())
                {
                    List<Player> players = str.players;
                    
                    foreach (Player player in players)
                    {
                        if (player.pid.ToString() == PlayerID)
                        {
                            found = true;
                            var list = new List<Player> { player };
                            txtPlayerID.Text = player.pid.ToString();
                            txtshortName.Text = player.short_name.ToString();
                            txtDOB.Text = player.birthdate.ToString();
                            txtPlayinRole.Text = player.playing_role.ToString();
                            txtBatStyle.Text = player.batting_style.ToString();
                            txtBowlStyle.Text = player.bowling_style.ToString();
                            txtRatin.Text = player.fantasy_player_rating.ToString();
                            txtNationality.Text = player.nationality.ToString();
                            //GridViewPlayerInfo.DataSource = list;
                            //GridViewPlayerInfo.DataBind();
                            break;
                        }
                    }
                }    
                if(found == false)
                {
                    lblErrorMsg.Text = "Player ID not Found.";
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
                //GridViewComp.DataSource = itemList;
                //GridViewComp.DataBind();
            }
            return itemList;
        }


    }
}