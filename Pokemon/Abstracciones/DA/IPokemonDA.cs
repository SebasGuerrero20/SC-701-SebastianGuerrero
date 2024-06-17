using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Abstracciones.Modelos;

namespace Abstracciones.DA
{
    public interface IPokemonDA
    {
        public Task<IEnumerable<Equipo>> ObtenerEquipos();
        public Task<IEnumerable<Pokemon>> ObtenerPokemonXEquipo(Guid Id);
    }
}