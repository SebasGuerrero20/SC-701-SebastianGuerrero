using Abstracciones.DA;
using Abstracciones.Entidades;
using Abstracciones.Modelos;
using Dapper;
using Helpers;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DA
{
    public class EntrenadorDA : IEntrenadorDA
    {
        private IRepositorioDapper _repositorioDapper;
        private SqlConnection _sqlConnection;

        public EntrenadorDA(IRepositorioDapper repositorioDapper)
        {
            _repositorioDapper = repositorioDapper;
            _sqlConnection = _repositorioDapper.ObtenerRepositorioDapper();
        }

        public async Task<Guid> AgregarAsync(Abstracciones.Modelos.Entrenador entrenador)
        {
            string sql = @"AgregarEntrenador";
            var resultadoConsulta = await _sqlConnection.QueryAsync<Abstracciones.Entidades.Entrenador>(sql, new { Id = entrenador.Id, Nombre = entrenador.Nombre });
            return entrenador.Id;
        }

        public async Task<Guid> Editar(Abstracciones.Modelos.Entrenador entrenador)
        {
            string sql = @"ActualizarEntrenador";
            var resultadoConsulta = await _sqlConnection.QueryAsync<Abstracciones.Entidades.Entrenador>(sql, new { Id = entrenador.Id, Nombre = entrenador.Nombre });
            return entrenador.Id;
        }

        public async Task<Guid> Eliminar(Guid Id)
        {
            string sql = @"EliminarEntrenador";
            var resultadoConsulta = await _sqlConnection.QueryAsync<Abstracciones.Entidades.Entrenador>(sql, new { Id = Id });
            return Id;
        }

        public async Task<IEnumerable<Abstracciones.Modelos.Entrenador>> Obtener()
        {
            string sql = @"ObtenerTodosEntrenador";
            var resultadoConsulta = await _sqlConnection.QueryAsync<Abstracciones.Entidades.Entrenador>(sql);
            if (!resultadoConsulta.Any())
                return null;
            return ConvertirEntrenadoresAModelo(resultadoConsulta);
        }

        public async Task<Abstracciones.Modelos.Entrenador> Obtener(Guid Id)
        {
            string sql = @"ObtenerEntrenador";
            var resultadoConsulta = await _sqlConnection.QueryAsync<Abstracciones.Entidades.Entrenador>(sql, new { Id = Id });
            if (!resultadoConsulta.Any())
                return null;
            return ConvertirEntrenadorAModelo(resultadoConsulta.First());
        }

        #region Convertidores

        private Abstracciones.Modelos.Entrenador ConvertirEntrenadorAModelo(Abstracciones.Entidades.Entrenador entrenador)
        {
            var resultadoConversion = Convertidor.Convertir<Abstracciones.Entidades.Entrenador, Abstracciones.Modelos.Entrenador>(entrenador);
            return resultadoConversion;
        }
        private IEnumerable<Abstracciones.Modelos.Entrenador> ConvertirEntrenadoresAModelo(IEnumerable<Abstracciones.Entidades.Entrenador> entrenador)
        {
            var resultadoConversion = Convertidor.ConvertirLista<Abstracciones.Entidades.Entrenador, Abstracciones.Modelos.Entrenador>(entrenador);
            return resultadoConversion;
        }
        #endregion
    }
}
