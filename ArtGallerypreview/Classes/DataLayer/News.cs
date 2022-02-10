using System;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;
using NovinMedia.Data;

namespace DataLayer
{
    [DataObject(true)]
    public class News
    {
		[DataObjectMethod(DataObjectMethodType.Fill)]
		public static DataSet SelectAll()
        {
            DbObject dbo = new DbObject();
            SqlParameter[] parameters = new SqlParameter[]
                {
 
                };
            return dbo.RunProcedure("sp_News_SelectAll", parameters, "News");
        }

		[DataObjectMethod(DataObjectMethodType.Fill)]
		public static DataSet SelectRow(int NewsID)
        {
            DbObject dbo = new DbObject();
            SqlParameter[] parameters = new SqlParameter[]
                {
					new SqlParameter("NewsID",NewsID) 
                };
            return dbo.RunProcedure("sp_News_SelectRow", parameters, "News");
        }

		[DataObjectMethod(DataObjectMethodType.Insert)]
		public static int InsertRow(string NewsTitle,string NewsText)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("NewsTitle",NewsTitle),
					new SqlParameter("NewsText",NewsText) 
				};
			Result = dbo.RunProcedure("sp_News_Insert", parameters, out RowsAffected);
			return Result;
        }

		[DataObjectMethod(DataObjectMethodType.Update)]
		public static int UpdateRow(int NewsID,string NewsTitle,string NewsText)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("NewsID",NewsID),
					new SqlParameter("NewsTitle",NewsTitle),
					new SqlParameter("NewsText",NewsText) 
				};
			Result = dbo.RunProcedure("sp_News_Update", parameters, out RowsAffected);
			return Result;
        }

		[DataObjectMethod(DataObjectMethodType.Delete)]
		public static int DeleteRow(int NewsID)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("NewsID",NewsID) 
				};
			Result = dbo.RunProcedure("sp_News_DeleteRow", parameters, out RowsAffected);
			return Result;
        }
    }
}