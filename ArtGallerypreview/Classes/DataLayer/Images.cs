using System;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;
using NovinMedia.Data;

namespace DataLayer
{
    [DataObject(true)]
    public class Images
    {
		[DataObjectMethod(DataObjectMethodType.Fill)]
		public static DataSet SelectAll()
        {
            DbObject dbo = new DbObject();
            SqlParameter[] parameters = new SqlParameter[]
                {
 
                };
            return dbo.RunProcedure("sp_Images_SelectAll", parameters, "Images");
        }

		[DataObjectMethod(DataObjectMethodType.Fill)]
		public static DataSet SelectRow(int ImageID)
        {
            DbObject dbo = new DbObject();
            SqlParameter[] parameters = new SqlParameter[]
                {
					new SqlParameter("ImageID",ImageID) 
                };
            return dbo.RunProcedure("sp_Images_SelectRow", parameters, "Images");
        }

		[DataObjectMethod(DataObjectMethodType.Insert)]
		public static int InsertRow(string FaImageTitle,string EnImageTitle,string Dimension,string Price,string FaTeknik,string EnTeknik,string FaStatus,string Enstatus,string ImageUrl)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("FaImageTitle",FaImageTitle),
					new SqlParameter("EnImageTitle",EnImageTitle),
					new SqlParameter("Dimension",Dimension),
					new SqlParameter("Price",Price),
					new SqlParameter("FaTeknik",FaTeknik),
					new SqlParameter("EnTeknik",EnTeknik),
					new SqlParameter("FaStatus",FaStatus),
					new SqlParameter("Enstatus",Enstatus),
					new SqlParameter("ImageUrl",ImageUrl) 
				};
			Result = dbo.RunProcedure("sp_Images_Insert", parameters, out RowsAffected);
			return Result;
        }

		[DataObjectMethod(DataObjectMethodType.Update)]
		public static int UpdateRow(int ImageID,string FaImageTitle,string EnImageTitle,string Dimension,string Price,string FaTeknik,string EnTeknik,string FaStatus,string Enstatus,string ImageUrl)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("ImageID",ImageID),
					new SqlParameter("FaImageTitle",FaImageTitle),
					new SqlParameter("EnImageTitle",EnImageTitle),
					new SqlParameter("Dimension",Dimension),
					new SqlParameter("Price",Price),
					new SqlParameter("FaTeknik",FaTeknik),
					new SqlParameter("EnTeknik",EnTeknik),
					new SqlParameter("FaStatus",FaStatus),
					new SqlParameter("Enstatus",Enstatus),
					new SqlParameter("ImageUrl",ImageUrl) 
				};
			Result = dbo.RunProcedure("sp_Images_Update", parameters, out RowsAffected);
			return Result;
        }

		[DataObjectMethod(DataObjectMethodType.Delete)]
		public static int DeleteRow(int ImageID)
		{
			int RowsAffected = 0;
			int Result = 0;
			DbObject dbo = new DbObject();
			SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("ImageID",ImageID) 
				};
			Result = dbo.RunProcedure("sp_Images_DeleteRow", parameters, out RowsAffected);
			return Result;
        }
    }
}