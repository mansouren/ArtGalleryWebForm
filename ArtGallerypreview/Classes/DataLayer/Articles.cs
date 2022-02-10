using System;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;
using NovinMedia.Data;

namespace DataLayer
{
    [DataObject(true)]
    public class Articles
    {
		[DataObjectMethod(DataObjectMethodType.Fill)]
		public static DataSet SelectAll()
        {
            DbObject dbo = new DbObject();
            SqlParameter[] parameters = new SqlParameter[]
                {
 
                };
            return dbo.RunProcedure("sp_Articles_SelectAll", parameters, "Articles");
        }

		[DataObjectMethod(DataObjectMethodType.Fill)]
		public static DataSet SelectRow(int ArticleID)
        {
            DbObject dbo = new DbObject();
            SqlParameter[] parameters = new SqlParameter[]
                {
					new SqlParameter("ArticleID",ArticleID) 
                };
            return dbo.RunProcedure("sp_Articles_SelectRow", parameters, "Articles");
        }

		[DataObjectMethod(DataObjectMethodType.Insert)]
		public static int InsertRow(int ArticleID,int ArticleGroupID,string ArticleTitle,string ArticleText)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("ArticleID",ArticleID),
					new SqlParameter("ArticleGroupID",ArticleGroupID),
					new SqlParameter("ArticleTitle",ArticleTitle),
					new SqlParameter("ArticleText",ArticleText) 
				};
			Result = dbo.RunProcedure("sp_Articles_Insert", parameters, out RowsAffected);
			return Result;
        }

		[DataObjectMethod(DataObjectMethodType.Update)]
		public static int UpdateRow(int ArticleID,int ArticleGroupID,string ArticleTitle,string ArticleText)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("ArticleID",ArticleID),
					new SqlParameter("ArticleGroupID",ArticleGroupID),
					new SqlParameter("ArticleTitle",ArticleTitle),
					new SqlParameter("ArticleText",ArticleText) 
				};
			Result = dbo.RunProcedure("sp_Articles_Update", parameters, out RowsAffected);
			return Result;
        }

		[DataObjectMethod(DataObjectMethodType.Delete)]
		public static int DeleteRow(int ArticleID)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("ArticleID",ArticleID) 
				};
			Result = dbo.RunProcedure("sp_Articles_DeleteRow", parameters, out RowsAffected);
			return Result;
        }
    }
}