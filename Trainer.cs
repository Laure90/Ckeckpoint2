using System;
using System.Collections.Generic;
using System.Text;

namespace WCS
{
    public class Trainer : Person
    {
        public LeadTrainer LeadTrainer { get; set; }
        public List<Student> StudentList { get; set; } = new List<Student>();

        public static List<Student> GetStudentsList(Trainer trainerName)
        {
            List<Student> studentList = Database.GetStudentListDB(trainerName);
            return studentList;
        }


    }
}
