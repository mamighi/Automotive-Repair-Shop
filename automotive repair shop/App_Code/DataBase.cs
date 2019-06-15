using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DataBase
/// </summary>
public class DataBase
{

    SqlConnection conn;
    public DataBase()
    {
        conn = new SqlConnection("Data Source=MOHAMMAD\\MOHAMMAD;Initial Catalog=ARS;Integrated Security=True;Pooling=False");

    }
    public bool addCostumer(DataManagment.costumer costumer)
    {
        if (!checkCostumer(costumer.email))
            return false;
        string command = "INSERT INTO Costumer (FirstName,LastName,Email,Password,Gender,Age,ContactNumber,Address,CarModel,CarColor,PlateNumber) VALUES('" + costumer.firstName + "','" + costumer.lastName + "','" + costumer.email + "','" + costumer.password + "','" + costumer.gender + "','" + costumer.age + "','" + costumer.contactNumber + "','" + costumer.address + "','" + costumer.carModel + "','" + costumer.carColor + "','" + costumer.plateNumber + "')";
        SqlCommand comm = new SqlCommand(command, conn);
        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();
        return true;
    }
    public bool checkCostumer(string email)
    {
        string command = "SELECT * FROM Costumer WHERE Email='" + email + "'";
        SqlCommand comm = new SqlCommand(command, conn);
        SqlDataReader reader;
        conn.Open();
        reader = comm.ExecuteReader();
        if (reader.Read())
        {
            conn.Close();
            reader.Close();
            return false;
        }
        reader.Close();
        conn.Close();
        return true;
    }
    public bool deleteCostumer(string email)
    {
        string command = "DELETE FROM Costumer WHERE Email='" + email + "'";
        SqlCommand comm = new SqlCommand(command, conn);
        conn.Open();
        try
        { 
            comm.ExecuteNonQuery();
            conn.Close();
            return true;
        }
        catch(Exception ex)
        {
            conn.Close();
            return false;
        }
    }
    public int getCostumerId()
    {
        int ID = 0;
        string command = "SELECT ID FROM Costumer";
        SqlCommand comm = new SqlCommand(command, conn);
        SqlDataReader reader;
        conn.Open();
        reader = comm.ExecuteReader();
        while (reader.Read())
        {
            ID = reader.GetInt32(0);
        }
        reader.Close();
        conn.Close();
        return ID + 1;
    }
    public List<DataManagment.costumer> getCostumers()
    {
        List<DataManagment.costumer> retVal = new List<DataManagment.costumer>();
        string command = "SELECT * FROM Costumer";
        SqlCommand comm = new SqlCommand(command, conn);
        SqlDataReader reader;
        conn.Open();
        reader = comm.ExecuteReader();

        while (reader.Read())
        {
            DataManagment.costumer temp = new DataManagment.costumer();
            temp.ID = reader.GetInt32(0);
            temp.firstName = reader.GetString(1);
            temp.lastName = reader.GetString(2);
            temp.email = reader.GetString(3);
            temp.password = reader.GetString(4);
            temp.gender = reader.GetString(5);
            temp.age = reader.GetInt32(6);
            temp.contactNumber = reader.GetString(7);
            temp.address = reader.GetString(8);
            temp.carModel = reader.GetString(9);
            temp.carColor = reader.GetString(10);
            temp.plateNumber = reader.GetString(11);
            retVal.Add(temp);
        }
        reader.Close();
        conn.Close();
        return retVal;
    }
    public void updateProfile(DataManagment.costumer cost)
    {
        string command="UPDATE Costumer SET FirstName='"+cost.firstName+"', LastName='"+cost.lastName+"',Gender='"+cost.gender+"',Age='"+cost.age+"',ContactNumber='"+cost.contactNumber+"',Address='"+cost.address+"',CarModel='"+cost.carModel+"',CarColor='"+cost.carColor+"',PlateNumber='"+cost.plateNumber+"' WHERE ID='"+cost.ID+"'";
        SqlCommand comm = new SqlCommand(command, conn);
        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();
    }
    public void updatePass(DataManagment.costumer cost)
    {

        string command = "UPDATE Costumer SET Password='" + cost.password + "' WHERE ID='" + cost.ID + "'";
        SqlCommand comm = new SqlCommand(command, conn);
        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();
    }
    public DataManagment.costumer auth(string email, string password)
    {
        List<DataManagment.costumer> cost = getCostumers();
        foreach (DataManagment.costumer temp in cost)
        {
            if (temp.email.Equals(email) && temp.password.Equals(password))
                return temp;
        }
        return null;
    }
    public DataManagment.costumer searchCostumer(string searchVal)
    {
        List<DataManagment.costumer> cost = getCostumers();
        List<DataManagment.costumer> retVal = new List<DataManagment.costumer>();
        int searchID;
        try
        {
            searchID = Int32.Parse(searchVal);
        }
        catch(Exception)
        {
            searchID = 0;
        }
        foreach (DataManagment.costumer temp in cost)
        {
            if (temp.ID==searchID || temp.email.Equals(searchVal))
                return temp;

        }
        return null;
    }


    public void newAppointment(DataManagment.appontment app, List<string> task)
    {
        string command = "INSERT INTO Appointment (CostumerID,Date,Time) VALUES('" + app.costumerID + "','" + app.date + "','" + app.time + "')";
        SqlCommand com = new SqlCommand(command, conn);
        conn.Open();
        com.ExecuteNonQuery();
        int appID=0;
        command = "SELECT ID FROM Appointment";
        com = new SqlCommand(command, conn);
        SqlDataReader reader = com.ExecuteReader();
        while (reader.Read())
            appID = reader.GetInt32(0);
        reader.Close();
        foreach(string tempTask in task)
        {
            command = "INSERT INTO Task (appID,Name) VALUES('" + appID + "','" + tempTask + "')";
            com = new SqlCommand(command, conn);
            com.ExecuteNonQuery();

        }
        conn.Close();
    }
    public int getAppointmentDate(int costumerId,DateTime date)
    {
        string command = "SELECT * FROM Appointment WHERE CostumerID='" + costumerId + "' AND Date='" + date + "'";
        SqlCommand com = new SqlCommand(command, conn);
        SqlDataReader reader;
        conn.Open();
        reader = com.ExecuteReader();
        if(reader.Read())
        {
            int id = reader.GetInt32(0);
            reader.Close();
            conn.Close();
            return id;

        }
        reader.Close();
        conn.Close();
        return 0;
    }
    public DataManagment.appontment getupcoming(int costumerId)
    {
        DateTime date = DateTime.Today;
        DataManagment.appontment app = new DataManagment.appontment();
        string command = "SELECT * FROM Appointment WHERE CostumerID='" + costumerId + "' AND Date>='" + date + "'";
        SqlCommand com = new SqlCommand(command, conn);
        SqlDataReader reader;
        conn.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            app.ID = reader.GetInt32(0);
            app.date = reader.GetDateTime(2);
            app.time = reader.GetTimeSpan(3);
            reader.Close();
            conn.Close();
            return app;

        }
        reader.Close();
        conn.Close();
        return null ;
    }
    public List<DataManagment.appontment> getApps()
    {
        List<DataManagment.appontment> retVal = new List<DataManagment.appontment>();
        string command = "SELECT * FROM Appointment";
        SqlCommand comm = new SqlCommand(command, conn);
        SqlDataReader reader;
        conn.Open();
        reader = comm.ExecuteReader();
        while(reader.Read())
        {
            DataManagment.appontment temp = new DataManagment.appontment();
            temp.ID = reader.GetInt32(0);
            temp.costumerID = reader.GetInt32(1);
            temp.date = reader.GetDateTime(2);
            temp.time = reader.GetTimeSpan(3);
            retVal.Add(temp);
        }
        reader.Close();
        conn.Close();
        return retVal;
    }
    public List<DataManagment.appontment> getAppsbyID(int ID)
    {
        List<DataManagment.appontment> retVal = new List<DataManagment.appontment>();
        string command = "SELECT * FROM Appointment WHERE CostumerID='"+ID+"'";
        SqlCommand comm = new SqlCommand(command, conn);
        SqlDataReader reader;
        conn.Open();
        reader = comm.ExecuteReader();
        while (reader.Read())
        {
            DataManagment.appontment temp = new DataManagment.appontment();
            temp.ID = reader.GetInt32(0);
            temp.costumerID = reader.GetInt32(1);
            temp.date = reader.GetDateTime(2);
            temp.time = reader.GetTimeSpan(3);
            retVal.Add(temp);
        }
        reader.Close();
        conn.Close();
        return retVal;
    }
    public List<string> getTaskList(int appId)
    {
        List<string> tasksList = new List<string>();
        string command = "SELECT Name FROM Task WHERE appID='" + appId + "'";
        SqlCommand com = new SqlCommand(command, conn);
        SqlDataReader reader;
        conn.Open();
        reader = com.ExecuteReader();
        while(reader.Read())
        {
            tasksList.Add(reader.GetString(0));
        }
        reader.Close();
        conn.Close();
        return tasksList;
    }
    public List<DataManagment.task> getTasks(int appID)
    {
        List<DataManagment.task> retVal = new List<DataManagment.task>();
        string command = "SELECT * FROM Task WHERE appID='" + appID + "'";
        SqlCommand com = new SqlCommand(command, conn);
        SqlDataReader reader;
        conn.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            DataManagment.task temp = new DataManagment.task();
            temp.appID = reader.GetInt32(1);
            temp.name = reader.GetString(2);
            try
            {
                temp.description = reader.GetString(3);
            }
            catch (Exception) { temp.description = ""; }
            try
            {
                temp.status = reader.GetInt32(4);
            }
            catch (Exception) { temp.status = 0; }
            retVal.Add(temp);
        }
        reader.Close();
        conn.Close();
        return retVal;
    }
    public void updateTask(List<DataManagment.task> tasks)
    {
        conn.Open();
        foreach (DataManagment.task temp in tasks)
        {
            string command = "UPDATE TASK SET Description='" + temp.description + "', Status='" + temp.status + "' WHERE appID='" + temp.appID + "' AND Name='" + temp.name + "'";
            SqlCommand com = new SqlCommand(command, conn);
            com.ExecuteNonQuery();
        }
        conn.Close();
    }

}