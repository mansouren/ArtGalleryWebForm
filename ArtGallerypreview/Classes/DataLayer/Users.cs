using System;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;
using NovinMedia.Data;

namespace DataLayer
{
    [DataObject(true)]
    public class Users
    {
		[DataObjectMethod(DataObjectMethodType.Fill)]
		public static DataSet SelectAll()
        {
            DbObject dbo = new DbObject();
            SqlParameter[] parameters = new SqlParameter[]
                {
 
                };
            return dbo.RunProcedure("sp_Users_SelectAll", parameters, "Users");
        }

		[DataObjectMethod(DataObjectMethodType.Fill)]
		public static DataSet SelectRow(int UserID)
        {
            DbObject dbo = new DbObject();
            SqlParameter[] parameters = new SqlParameter[]
                {
					new SqlParameter("UserID",UserID) 
                };
            return dbo.RunProcedure("sp_Users_SelectRow", parameters, "Users");
        }


        [DataObjectMethod(DataObjectMethodType.Fill)]
        public static DataSet CheckLogin(string Username, string Password)
        {
            DbObject dbo = new DbObject();
            SqlParameter[] parameters = new SqlParameter[]
                {
					new SqlParameter("Username",Username),
                    new SqlParameter("Password",Password) 
                };
            return dbo.RunProcedure("sp_Users_CheckLogin", parameters, "Users");
        }


		[DataObjectMethod(DataObjectMethodType.Insert)]
		public static int InsertRow(int RoleID,string UserName,string Password)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("RoleID",RoleID),
					new SqlParameter("UserName",UserName),
					new SqlParameter("Password",Password) 
				};
			Result = dbo.RunProcedure("sp_Users_Insert", parameters, out RowsAffected);
			return Result;
        }

		[DataObjectMethod(DataObjectMethodType.Update)]
		public static int UpdateRow(int UserID,int RoleID,string UserName,string Password)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("UserID",UserID),
					new SqlParameter("RoleID",RoleID),
					new SqlParameter("UserName",UserName),
					new SqlParameter("Password",Password) 
				};
			Result = dbo.RunProcedure("sp_Users_Update", parameters, out RowsAffected);
			return Result;
        }

		[DataObjectMethod(DataObjectMethodType.Delete)]
		public static int DeleteRow(int UserID)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("UserID",UserID) 
				};
			Result = dbo.RunProcedure("sp_Users_DeleteRow", parameters, out RowsAffected);
			return Result;
        }
    }
}