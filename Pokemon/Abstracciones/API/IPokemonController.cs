using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Abstracciones.Modelos;

namespace Abstracciones.API
{
    public interface IPokemonController
    {
        public Task<IActionResult> ObtenerEquipos();
        public Task<IActionResult> ObtenerPokemonxEquipo(Guid Id);
    }
}
