using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Abstracciones.Modelos;

namespace Abstracciones.API
{
    public interface IEntrenadorAPI
    {
        [HttpGet]
        public Task<IActionResult> Obtener();
        [HttpGet]
        public Task<IActionResult> Obtener(Guid Id);
        [HttpPost]
        public Task<IActionResult> AgregarAsync(Entrenador entrenador);
        [HttpPut]
        public Task<IActionResult> Editar(Entrenador entrenador);
        [HttpDelete]
        public Task<IActionResult> Eliminar(Guid Id);
    }
}
