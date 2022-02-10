using System;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;
using NovinMedia.Data;

namespace DataLayer
{
    [DataObject(true)]
    public class ArticleGroup
    {
		[DataObjectMethod(DataObjectMethodType.Fill)]
		public static DataSet SelectAll()
        {
            DbObject dbo = new DbObject();
            SqlParameter[] parameters = new SqlParameter[]
                {
 
                };
            return dbo.RunProcedure("sp_ArticleGroup_SelectAll", parameters, "ArticleGroup");
        }

		[DataObjectMethod(DataObjectMethodType.Fill)]
		public static DataSet SelectRow(int ArticleGroupID)
        {
            DbObject dbo = new DbObject();
            SqlParameter[] parameters = new SqlParameter[]
                {
					new SqlParameter("ArticleGroupID",ArticleGroupID) 
                };
            return dbo.RunProcedure("sp_ArticleGroup_SelectRow", parameters, "ArticleGroup");
        }

		[DataObjectMethod(DataObjectMethodType.Insert)]
		public static int InsertRow(string ArticleGroupTitle)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("ArticleGroupTitle",ArticleGroupTitle) 
				};
			Result = dbo.RunProcedure("sp_ArticleGroup_Insert", parameters, out RowsAffected);
			return Result;
        }

		[DataObjectMethod(DataObjectMethodType.Update)]
		public static int UpdateRow(int ArticleGroupID,string ArticleGroupTitle)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("ArticleGroupID",ArticleGroupID),
					new SqlParameter("ArticleGroupTitle",ArticleGroupTitle) 
				};
			Result = dbo.RunProcedure("sp_ArticleGroup_Update", parameters, out RowsAffected);
			return Result;
        }

		[DataObjectMethod(DataObjectMethodType.Delete)]
		public static int DeleteRow(int ArticleGroupID)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("ArticleGroupID",ArticleGroupID) 
				};
			Result = dbo.RunProcedure("sp_ArticleGroup_DeleteRow", parameters, out RowsAffected);
			return Result;
        }
    }
}