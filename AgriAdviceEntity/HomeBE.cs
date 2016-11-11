using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AgriAdviceEntity
{
    public class HomeBE
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string Passw0rd { get; set; }
    }

    public class NewUser
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string Passw0rd { get; set; }
        public string MobileNumber { get; set; }
        public string HouseName { get; set; }
        public string Name { get; set; }
        public int HouseNo { get; set; }
        public int Area { get; set; }
        public int RoleId { get; set; }
        public int Flag { get; set; }
    }

    public class AgricultureDetails
    {
        public int Rubber { get; set; }
        public int Tapioca { get; set; }
        public int Pepper { get; set; }
        public int Cocoa { get; set; }
        public int Vegetables { get; set; }
        public int CoconutTree { get; set; }
        public int Banana { get; set; }
        public int Status { get; set; }
        public int UserId { get; set; }
    }

    public enum RoleInfo
    {
        Administrator =1,
        Farmer = 2,
        Agriculture_Officer =3
    }

    public class MarketPriceDetails
    {
        public Decimal Rubber { get; set; }
        public Decimal Tapioca { get; set; }
        public Decimal Pepper { get; set; }
        public Decimal Cocoa { get; set; }
        public Decimal Vegetables { get; set; }
        public Decimal CoconutTree { get; set; }
        public Decimal Banana { get; set; }
        public Decimal Status { get; set; }
        public Decimal UserId { get; set; }
    }
}
