using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using System.IO;
using Newtonsoft.Json;
using System.Diagnostics;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace YelpDataAnalyse
{
    
    public partial class test : System.Web.UI.Page
    {
        [WebMethod]
        public static int[] getStars()
        {
            int[] stars = new int[11];
            int totalCount = 0;
            var watch = Stopwatch.StartNew();
            Console.WriteLine("this is a json test");

            using (StreamReader r = new StreamReader(@"C:\yelp_dataset\yelp_academic_dataset_business.json"))
            {

                string json = r.ReadLine();
                Business array = JsonConvert.DeserializeObject<Business>(json);
                if (array != null)
                {
                    totalCount++;
                    int starPos = (int)(array.stars / 0.5);
                    stars[starPos]++;
                }
                while (!r.EndOfStream)
                {
                    json = r.ReadLine();
                    array = JsonConvert.DeserializeObject<Business>(json);
                    int starPos = (int)(array.stars / 0.5);
                    stars[starPos]++;
                    totalCount++;
                }
                watch.Stop();
                var elapsedMs = watch.ElapsedMilliseconds;   
            }
            //return new int[] { stars[0], stars[1], stars[2], stars[3], stars[4], stars[5], stars[6], stars[7], 
            //stars[8],stars[9],stars[10]};
            return stars;
        }

    }
    [DataContract]
    class Tips
    {
        [DataMember]
        internal string type;
        [DataMember]
        internal string text;
        [DataMember]
        internal string business_id;
        [DataMember]
        internal string user_id;
        [DataMember]
        internal string date;
        [DataMember]
        internal string likes;
    }

    [DataContract]
    class Business
    {
        [DataMember]
        internal string business_id;
        [DataMember]
        internal string full_address;
        [DataMember]
        internal Day hours;
        [DataMember]
        internal string open;
        [DataMember]
        internal string[] categories;
        [DataMember]
        internal string city;
        [DataMember]
        internal string name;
        [DataMember]
        internal string[] neighborhoods;
        [DataMember]
        internal string state;
        [DataMember]
        internal double latitude;
        [DataMember]
        internal double longitude;
        [DataMember]
        internal int review_count;
        [DataMember]
        internal double stars;

        // WCF stores any items we did not map here
        [DataMember]
        internal ExtensionDataObject ExtensionData;
    }
    [DataContract]
    class OpenClose
    {
        [DataMember]
        internal string close;
        [DataMember]
        internal string open;
    }
    [DataContract]
    class Day
    {
        [DataMember]
        internal OpenClose Monday;
        [DataMember]
        internal OpenClose Tuesday;
        [DataMember]
        internal OpenClose Wednesday;
        [DataMember]
        internal OpenClose Thursday;
        [DataMember]
        internal OpenClose Friday;
        [DataMember]
        internal OpenClose Saturday;
        [DataMember]
        internal OpenClose Sunday;
    }
}