using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Ajax.Utilities;

namespace TDR.DAO
{
    public class FFIL_Single
    {
        public int singleId { get; set; }
        public DateTime depositDate { get; set; }
        public int tdrSlNo { get; set; }
        public int accountNumber { get; set; }
        public string clientName { get; set; }
        public string fatherName { get; set; }
        public string motherName { get; set; }
        public string spouseName { get; set; }
        public string religion { get; set; }
        public DateTime DOB { get; set; }
        public string sex { get; set; }
        public string nationality { get; set; }
        public string id { get; set; }
        public int idNo { get; set; }
        public string occupation { get; set; }
        public string organization { get; set; }
        public string designation { get; set; }
        public string officeAddress { get; set; }
        public string permAddress { get; set; }
        public int phone { get; set; }
        public int mobile { get; set; }
        public string  email { get; set; }
        public int fax { get; set; }
        public int depAmount { get; set; }
        public int depTenure { get; set; }
        public DateTime depDateIssue { get; set; }
        public DateTime depDateMaturity { get; set; }
        public int cheqPoDDNo { get; set; }
        public DateTime cheqDate { get; set; }
        public string cheqBank { get; set; }
        public string cheqBranch { get; set; }
        public string cheqTakaInWrd { get; set; }
        public string nominee1 { get; set; }
        public string nominee1FatherName { get; set; }
        public string nominee1MotherName { get; set; }
        public string nominee1SpouseName { get; set; }
        public string nominee1Relation { get; set; }
        public int nominee1Percentage { get; set; }
        public string nominee2 { get; set; }
        public string nominee2FatherName { get; set; }
        public string nominee2MotherName { get; set; }
        public string nominee2SpouseName { get; set; }
        public string nominee2Relation { get; set; }
        public int nominee2Percentage { get; set; }
    }
}