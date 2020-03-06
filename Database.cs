using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data.Common;

namespace WCS
{
    public class Database
    {
        private static Database _instance = null;
        private SqlConnection _connection = null;

        public static Database Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new Database();
                }
                return _instance;
            }
        }

        private Database()
        {
            string connectionString = "Data Source=LOCALHOST\\SQLEXPRESS;Initial Catalog=Checkpoint2;Integrated Security=True";

            SqlConnection conn = new SqlConnection(connectionString);
            _connection = conn;

            try
            {
                conn.Open();
            }
            catch (Exception e)
            { }
        }

        public void Connect(SqlConnectionStringBuilder builder)
        {
            if (_connection.State == System.Data.ConnectionState.Open)
            {
                throw new Exception("Database already connected");
            }
            _connection.ConnectionString = builder.ConnectionString;
            _connection.Open();
        }

        public static List<Student> GetStudentListDB(Trainer trainerName)
        {
            string sql = "EXECUTE sp_GetStudentList @TrainerName = 'Bobby', @StudentList = @ListOfTrainer OUTPUT";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Database.Instance._connection;
            cmd.CommandText = sql;
            List<Student> studentList = new List<Student>();
            return studentList;
        }

        public static List<Agenda> GetEventsListByPerson(Person person)
        {
            string sql = "EXECUTE sp_GetEventsListByPerson";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Database.Instance._connection;
            cmd.CommandText = sql;
            List<Agenda> eventsList = new List<Agenda>();
            return eventsList;
        }

        public static List<Agenda> GetAgendaByperiod(Event period)
        {
            string sql = "EXECUTE sp_GetAgendaByperiod";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Database.Instance._connection;
            cmd.CommandText = sql;
            List<Agenda> periodEventList = new List<Agenda>();
            return periodEventList;
        }
    }
}