using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Dershane
{
    public class Baglan
    {
        public string uzanti = ConfigurationManager.ConnectionStrings["bagla"].ConnectionString;

        public DataTable tablo_getir(string proc)
        {
            DataTable deger = new DataTable();
            using (SqlConnection connec = new SqlConnection(uzanti))
            {
                try
                {
                    SqlCommand cmda = new SqlCommand(proc, connec);
                    cmda.CommandType = CommandType.StoredProcedure;
                    if (connec.State != ConnectionState.Open)
                        connec.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmda);
                    da.Fill(deger);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }

            }
            return deger;
        }

        public DataTable tablo_getir(object[,] degerler, string proc)
        {
            DataTable deger = new DataTable();
            using (SqlConnection connec = new SqlConnection(uzanti))
            {
                try
                {
                    SqlCommand cmda = new SqlCommand(proc, connec);
                    cmda.CommandType = CommandType.StoredProcedure;

                    for (int z = 0; z <= (degerler.Length / 2) - 1; z++)
                    {
                        cmda.Parameters.AddWithValue(degerler[z, 0].ToString(), degerler[z, 1]);
                    }

                    if (connec.State != ConnectionState.Open)
                        connec.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmda);
                    da.Fill(deger);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }

            }
            return deger;
        }

        public DataSet tablolar_getir(string proc)
        {
            DataSet deger = new DataSet();
            using (SqlConnection connec = new SqlConnection(uzanti))
            {
                try
                {
                    SqlCommand cmda = new SqlCommand(proc, connec);
                    cmda.CommandType = CommandType.StoredProcedure;
                    if (connec.State != ConnectionState.Open)
                        connec.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmda);
                    da.Fill(deger);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }

            }
            return deger;
        }

        public DataSet tablolar_getir(object[,] degerler, string proc)
        {
            DataSet deger = new DataSet();
            using (SqlConnection connec = new SqlConnection(uzanti))
            {
                try
                {
                    SqlCommand cmda = new SqlCommand(proc, connec);
                    cmda.CommandType = CommandType.StoredProcedure;

                    for (int z = 0; z <= (degerler.Length / 2) - 1; z++)
                    {
                        cmda.Parameters.AddWithValue(degerler[z, 0].ToString(), degerler[z, 1]);
                    }

                    if (connec.State != ConnectionState.Open)
                        connec.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmda);
                    da.Fill(deger);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }

            }
            return deger;
        }

        public string calistir(string proc)
        {
            string drmmm = "ok";
            using (SqlConnection connec = new SqlConnection(uzanti))
            {
                try
                {
                    SqlCommand cmda = new SqlCommand(proc, connec);
                    cmda.CommandType = CommandType.StoredProcedure;

                    if (connec.State != ConnectionState.Open)
                        connec.Open();
                    cmda.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    drmmm = ex.Message.ToString();
                }

            }
            return drmmm;
        }

        public string calistir(object[,] degerler, string proc)
        {

            string drmmm = "ok";
            using (SqlConnection connec = new SqlConnection(uzanti))
            {
                try
                {
                    SqlCommand cmda = new SqlCommand(proc, connec);
                    cmda.CommandType = CommandType.StoredProcedure;

                    for (int z = 0; z <= (degerler.Length / 2) - 1; z++)
                    {
                        cmda.Parameters.AddWithValue(degerler[z, 0].ToString(), degerler[z, 1]);
                    }

                    if (connec.State != ConnectionState.Open)
                        connec.Open();
                    cmda.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    drmmm = ex.Message.ToString();
                }

            }
            return drmmm;

        }

        public SqlDataReader calistir_dra(string proc)
        {
            SqlDataReader dras = null;
            SqlConnection connec = new SqlConnection(uzanti);

            try
            {
                SqlCommand cmda = new SqlCommand(proc, connec);
                cmda.CommandType = CommandType.StoredProcedure;
                if (connec.State != ConnectionState.Open)
                    connec.Open();
                dras = cmda.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return dras;
        }

        public SqlDataReader calistir_dra(object[,] degerler, string proc)
        {
            SqlDataReader dras = null;
            SqlConnection connec = new SqlConnection(uzanti);

            try
            {
                SqlCommand cmda = new SqlCommand(proc, connec);
                cmda.CommandType = CommandType.StoredProcedure;
                for (int z = 0; z <= (degerler.Length / 2) - 1; z++)
                {
                    cmda.Parameters.AddWithValue(degerler[z, 0].ToString(), degerler[z, 1]);
                }
                if (connec.State != ConnectionState.Open)
                    connec.Open();
                dras = cmda.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return dras;
        }

        public object tek_veri_getir(string proc)
        {
            object deger = null;
            using (SqlConnection connec = new SqlConnection(uzanti))
            {
                try
                {
                    SqlCommand cmda = new SqlCommand(proc, connec);
                    cmda.CommandType = CommandType.StoredProcedure;
                    if (connec.State != ConnectionState.Open)
                        connec.Open();
                    deger = cmda.ExecuteScalar();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            return deger;
        }

        public object tek_veri_getir(object[,] degerler, string proc)
        {
            object deger = null;
            using (SqlConnection connec = new SqlConnection(uzanti))
            {
                try
                {
                    SqlCommand cmda = new SqlCommand(proc, connec);
                    cmda.CommandType = CommandType.StoredProcedure;
                    for (int z = 0; z <= (degerler.Length / 2) - 1; z++)
                    {
                        cmda.Parameters.AddWithValue(degerler[z, 0].ToString(), degerler[z, 1]);
                    }
                    if (connec.State != ConnectionState.Open)
                        connec.Open();
                    deger = cmda.ExecuteScalar();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            return deger;
        }

    }
}