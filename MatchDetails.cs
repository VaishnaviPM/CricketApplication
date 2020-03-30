using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyCricketApplication
{
    public class MatchDetails
    {
    }
    public class Competition
    {
        public int cid { get; set; }
        public string title { get; set; }
        public string abbr { get; set; }
        public string type { get; set; }
        public string category { get; set; }
        public string match_format { get; set; }
        public string status { get; set; }
        public string season { get; set; }
        public string datestart { get; set; }
        public string dateend { get; set; }
        public string total_matches { get; set; }
        public string total_rounds { get; set; }
        public string total_teams { get; set; }
        public string country { get; set; }
    }

    public class Teama
    {
        public int team_id { get; set; }
        public string name { get; set; }
        public string short_name { get; set; }
        public string logo_url { get; set; }
        public string scores_full { get; set; }
        public string scores { get; set; }
        public string overs { get; set; }
    }

    public class Teamb
    {
        public int team_id { get; set; }
        public string name { get; set; }
        public string short_name { get; set; }
        public string logo_url { get; set; }
        public string scores_full { get; set; }
        public string scores { get; set; }
        public string overs { get; set; }
    }

    public class Venue
    {
        public string name { get; set; }
        public string location { get; set; }
        public string timezone { get; set; }
    }

    public class Toss
    {
        public string text { get; set; }
        public int winner { get; set; }
        public int decision { get; set; }
    }

    public class Item
    {
        public int match_id { get; set; }
        public string title { get; set; }
        public string short_title { get; set; }
        public string subtitle { get; set; }
        public int format { get; set; }
        public string format_str { get; set; }
        public int status { get; set; }
        public string status_str { get; set; }
        public string status_note { get; set; }
        public string verified { get; set; }
        public string pre_squad { get; set; }
        public string odds_available { get; set; }
        public int game_state { get; set; }
        public string game_state_str { get; set; }
        public string domestic { get; set; }
        public Competition competition { get; set; }
        public Teama teama { get; set; }
        public Teamb teamb { get; set; }
        public string date_start { get; set; }
        public string date_end { get; set; }
        public int timestamp_start { get; set; }
        public int timestamp_end { get; set; }
        public Venue venue { get; set; }
        public string umpires { get; set; }
        public string referee { get; set; }
        public string equation { get; set; }
        public string live { get; set; }
        public string result { get; set; }
        public int result_type { get; set; }
        public string win_margin { get; set; }
        public int winning_team_id { get; set; }
        public int commentary { get; set; }
        public int wagon { get; set; }
        public int latest_inning_number { get; set; }
        public Toss toss { get; set; }
    }

    public class Response
    {
        public List<Item> items { get; set; }
        public int total_items { get; set; }
        public int total_pages { get; set; }
    }

    public class RootObject
    {
        public string status { get; set; }
        public Response response { get; set; }
        public string etag { get; set; }
        public string modified { get; set; }
        public string datetime { get; set; }
        public string api_version { get; set; }
    }
    public class RootObject1
    {
        public string status { get; set; }
        public Response1 response { get; set; }
        public string etag { get; set; }
        public string modified { get; set; }
        public string datetime { get; set; }
        public string api_version { get; set; }
    }

    public class Player
    {
        public int pid { get; set; }
        public string title { get; set; }
        public string short_name { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string middle_name { get; set; }
        public string birthdate { get; set; }
        public string birthplace { get; set; }
        public string country { get; set; }
        public List<object> primary_team { get; set; }
        public string thumb_url { get; set; }
        public string logo_url { get; set; }
        public string playing_role { get; set; }
        public string batting_style { get; set; }
        public string bowling_style { get; set; }
        public string fielding_position { get; set; }
        public int recent_match { get; set; }
        public int recent_appearance { get; set; }
        public double fantasy_player_rating { get; set; }
        public string nationality { get; set; }
    }

    public class Team
    {
        public int tid { get; set; }
        public string title { get; set; }
        public string abbr { get; set; }
        public string thumb_url { get; set; }
        public string logo_url { get; set; }
        public string type { get; set; }
        public string country { get; set; }
        public string alt_name { get; set; }
        public string sex { get; set; }
    }

    public class Squad
    {
        public string team_id { get; set; }
        public string title { get; set; }
        public string mid { get; set; }
        public string gmdate { get; set; }
        public List<Player> players { get; set; }
        public Team team { get; set; }
    }

    public class Response1
    {
        public string squad_type { get; set; }
        public List<Squad> squads { get; set; }
    }

   
}