using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Abstracciones.Modelos;

namespace Abstracciones.BW
{
    public interface IPokemonBW
    {
        public Task<IEnumerable<Equipo>> ObtenerEquipos();
        public Task<IEnumerable<Pokemon>> ObtenerPokemonXEquipos(Guid Id);
    }
}

