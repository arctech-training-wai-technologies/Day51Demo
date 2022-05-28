using System;

namespace Day51Demo.Services.Utilities
{
    public static class DbHelper
    {
        //public static string GetStringData(this object dataField)
        //{
        //    return dataField == DBNull.Value ? null : (string)dataField;
        //}
        //public static char? GetCharData(this object dataField)
        //{
        //    return dataField == DBNull.Value ? null : (char?)dataField;
        //}
        //public static int? GetIntData(this object dataField)
        //{
        //    return dataField == DBNull.Value ? null : (int?)dataField;
        //}

        public static T GetDataFromDb<T>(this object dataField)
        {
            return dataField == DBNull.Value ? default : (T)dataField;
        }

        public static object GetDataFromUi<T>(this object uiField)
        {
            // If data is null or in case of strings it is blank "", return DBNull
            
            if (uiField == null ||
                (uiField.GetType() == typeof(string) && (string)uiField == ""))
                return DBNull.Value;

            return (T)uiField;
        }
    }
}