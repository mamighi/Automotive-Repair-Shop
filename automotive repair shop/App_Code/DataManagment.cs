using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DataManagment
/// </summary>
public class DataManagment
{
	public DataManagment()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public class costumer
    {
        public int ID, age;
        public string firstName, lastName, email, gender, contactNumber, address, carModel, carColor, plateNumber,password;
    }
    public class appontment
    {
        public int ID, costumerID;
        public DateTime date;
        public TimeSpan time;
    }
    public class task
    {
        public int ID, appID, status;
        public string name, description;
    }
   
}