using System;
using System.Data.SqlClient;

namespace Parcial3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Conexion con base de datos");
            string connString = "Data Source=DESKTOP-S5G74PE;Initial Catalog=Parcial3;Integrated Security=True";
            SqlConnection sqlConnection = new SqlConnection(connString);
            SqlDataReader sqlDataReader = null;

            try
            {
                Console.WriteLine("Abriendo conexion...");
                sqlConnection.Open();
                Console.WriteLine("Conectado");
            }
            catch (Exception e)
            {
                Console.WriteLine("Error: " + e.Message);
                Environment.Exit(0);
            }

            String libro = "", autor = "";
            ObtenerDatos(ref libro, ref autor);

            // VERIFICAR EXISTENCIA DE LIBRO
            if (VerificarLibro(ref libro, sqlConnection).Equals("Libro no encontrado"))
                Console.WriteLine(RegistrarLibro(ref libro, sqlConnection));

            // VERIFICAR EXISTENCIA DE AUTOR(ES)
            String [] autores = autor.Split(' ');
            foreach(String aut in autores)
            {
                String aux = aut;
                if(VerificarAutor(ref aux, sqlConnection).Equals("Autor no encontrado"))
                    Console.WriteLine(RegistrarAutor(ref aux, sqlConnection));
            }

            // VERIFICAR AUTORIAS
            foreach(String aut in autores)
            {
                String aux = aut;
                if (VerificarAutoria(ref aux, ref libro, sqlConnection).Equals("Autoria no encontrada"))
                    Console.WriteLine(RegistrarAutoria(ref aux, ref libro, sqlConnection));
            }

            //Console.Clear();
            ObtenerListaLibros(sqlConnection, ref sqlDataReader);
            ObtenerListaAutores(sqlConnection, ref sqlDataReader);
            ObtenerListaAutorias(sqlConnection, ref sqlDataReader);
        }

        static void ObtenerDatos(ref String libro, ref String autor)
        {
            Console.WriteLine("Libro: ");
            libro = Console.ReadLine().Trim().ToUpper();
            Console.WriteLine("Autor(es): ");
            autor = Console.ReadLine().Trim().ToUpper();
        }

        static String VerificarLibro(ref String idLibro, SqlConnection connection)
        {
            SqlCommand command = new SqlCommand("VerificarLibro", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@IdLibro", idLibro);

            SqlParameter respuesta = new SqlParameter("@Respuesta", System.Data.SqlDbType.VarChar, 21); // SALIDA
            respuesta.Direction = System.Data.ParameterDirection.Output;

            command.Parameters.Add(respuesta);
            command.ExecuteNonQuery();

            return respuesta.Value.ToString();
        }

        static String RegistrarLibro(ref String idLibro, SqlConnection connection)
        {
            Console.WriteLine("=====NUEVO LIBRO=====");
            Console.WriteLine("Titulo: ");
            String titulo = Console.ReadLine();

            Console.WriteLine("Subtitulo: ");
            String subTitulo = Console.ReadLine();

            Console.WriteLine("Editorial: ");
            String editorial = Console.ReadLine();

            Console.WriteLine("Area: ");
            String area = Console.ReadLine();

            Console.WriteLine("AnoPublicacion: ");
            String anoPublicacion = Console.ReadLine();

            Console.WriteLine("Paginas: ");
            String totalPaginas = Console.ReadLine();

            Console.WriteLine("Edicion: ");
            String edicion = Console.ReadLine();

            SqlCommand sqlCommand = new SqlCommand("RegistrarLibro", connection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@IdLibro", idLibro);
            sqlCommand.Parameters.AddWithValue("@Titulo", titulo);
            sqlCommand.Parameters.AddWithValue("@SubTitulo", subTitulo);
            sqlCommand.Parameters.AddWithValue("@Editorial", editorial);
            sqlCommand.Parameters.AddWithValue("@Area", area);
            sqlCommand.Parameters.AddWithValue("@AnoPublicacion", anoPublicacion);
            sqlCommand.Parameters.AddWithValue("@TotalPaginas", totalPaginas);
            sqlCommand.Parameters.AddWithValue("@Edicion", edicion);

            SqlParameter respuesta = new SqlParameter("@Respuesta", System.Data.SqlDbType.VarChar, 16);
            respuesta.Direction = System.Data.ParameterDirection.Output;

            sqlCommand.Parameters.Add(respuesta);
            sqlCommand.ExecuteNonQuery();

            return respuesta.Value.ToString();
        }

        static String VerificarAutor(ref String idAutor, SqlConnection sqlConnection)
        {
            SqlCommand command = new SqlCommand("VerificarAutor", sqlConnection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@IdAutor", idAutor);

            SqlParameter respuesta = new SqlParameter("@Respuesta", System.Data.SqlDbType.VarChar, 21); // SALIDA
            respuesta.Direction = System.Data.ParameterDirection.Output;

            command.Parameters.Add(respuesta);
            command.ExecuteNonQuery();

            return respuesta.Value.ToString();
        }

        static String RegistrarAutor(ref String idAutor, SqlConnection sqlConnection)
        {
            Console.WriteLine("=====NUEVO AUTOR=====");
            Console.WriteLine($"ID: {idAutor}");
            Console.WriteLine("Nombre: ");
            String nombre = Console.ReadLine().Trim();

            Console.WriteLine("Nacionalidad: ");
            String nacionalidad = Console.ReadLine().Trim();

            SqlCommand command = new SqlCommand("RegistrarAutor", sqlConnection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@IdAutor", idAutor);
            command.Parameters.AddWithValue("@Nombre", nombre);
            command.Parameters.AddWithValue("@Nacionalidad", nacionalidad);

            SqlParameter respuesta = new SqlParameter("@Respuesta", System.Data.SqlDbType.VarChar, 16);
            respuesta.Direction = System.Data.ParameterDirection.Output;

            command.Parameters.Add(respuesta);
            command.ExecuteNonQuery();

            return respuesta.Value.ToString();
        }

        static String VerificarAutoria(ref String idAutor, ref String idLibro, SqlConnection sqlConnection)
        {
            SqlCommand sqlCommand = new SqlCommand("VerificarAutoria", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sqlCommand.Parameters.AddWithValue("@IdAutor", idAutor);
            sqlCommand.Parameters.AddWithValue("@IdLibro", idLibro);

            SqlParameter respuesta = new SqlParameter("@Respuesta", System.Data.SqlDbType.VarChar, 21);
            respuesta.Direction = System.Data.ParameterDirection.Output;

            sqlCommand.Parameters.Add(respuesta);
            sqlCommand.ExecuteNonQuery();

            return respuesta.Value.ToString();
        }

        static String RegistrarAutoria(ref String idAutor, ref String idLibro, SqlConnection sqlConnection)
        {
            SqlCommand sqlCommand = new SqlCommand("RegistrarAutoria", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sqlCommand.Parameters.AddWithValue("@IdAutor", idAutor);
            sqlCommand.Parameters.AddWithValue("@IdLibro", idLibro);

            SqlParameter respuesta = new SqlParameter("@Respuesta", System.Data.SqlDbType.VarChar, 20);
            respuesta.Direction = System.Data.ParameterDirection.Output;

            sqlCommand.Parameters.Add(respuesta);
            sqlCommand.ExecuteNonQuery();

            return respuesta.Value.ToString();
        }

        static void ObtenerListaLibros(SqlConnection sqlConnection, ref SqlDataReader sqlDataReader)
        {
            Console.WriteLine("=====LIBROS=====");
            SqlCommand sqlCommand = new SqlCommand("select * from Libros", sqlConnection);
            sqlDataReader = sqlCommand.ExecuteReader();
            while (sqlDataReader.Read())
                Console.WriteLine($"IDLibro: {sqlDataReader["IdLibro"]}Titulo:{sqlDataReader["Titulo"]} {sqlDataReader["Subtitulo"]} Editorial:{sqlDataReader["Editorial"]} Area:{sqlDataReader["Area"]} AnoPublicacion:{sqlDataReader["AnoPublicacion"]} Paginas:{sqlDataReader["TotalPaginas"]} Edicion:{sqlDataReader["Edicion"]}");
            sqlDataReader.Close();
            Console.WriteLine("================");
        }

        static void ObtenerListaAutores(SqlConnection sqlConnection, ref SqlDataReader sqlDataReader)
        {
            Console.WriteLine("=====AUTORES=====");
            SqlCommand sqlCommand = new SqlCommand("select * from Autores", sqlConnection);
            sqlDataReader = sqlCommand.ExecuteReader();
            while (sqlDataReader.Read())
                Console.WriteLine($"Nombre: {sqlDataReader["Nombre"]} IDAutor: {sqlDataReader["IdAutor"]} Nacionalidad: {sqlDataReader["Nacionalidad"]}");
            sqlDataReader.Close();
            Console.WriteLine("=================");
        }

        static void ObtenerListaAutorias(SqlConnection sqlConnection, ref SqlDataReader sqlDataReader)
        {
            Console.WriteLine("=====AUTORIAS=====");
            SqlCommand sqlCommand = new SqlCommand("select * from Autorias", sqlConnection);
            sqlDataReader = sqlCommand.ExecuteReader();
            while (sqlDataReader.Read())
                Console.WriteLine($"IdAutor: {sqlDataReader["IdAutor"]} IdLibro: {sqlDataReader["IdLibro"]}");
            sqlDataReader.Close();
            Console.WriteLine("==================");
        }
    }
}