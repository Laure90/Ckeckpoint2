using CommandLine;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;

namespace WCS
{
    class Program
    {
        public void Main(string[] args)
        {
            Parser.Default.ParseArguments<EventsByPersonOptions, CursusOptions>(args)
                .WithParsed<EventsByPersonOptions>(RunGetEventsLisOptions)
                .WithParsed<CursusOptions>(RunGetListCursusOptions);


            Event newEvent = new Event("Important meeting");
            newEvent.StartTime = DateTime.Now;
            newEvent.EndTime = DateTime.Now + TimeSpan.FromHours(1);
            newEvent.Postpone(TimeSpan.FromHours(1));
            Console.WriteLine("Another meeting is postponed");
        }

        public void RunGetEventsLisOptions(EventsByPersonOptions opts)
        {

        }

        public void RunGetListCursusOptions(CursusOptions opts)
        { 

        }
    }
}
