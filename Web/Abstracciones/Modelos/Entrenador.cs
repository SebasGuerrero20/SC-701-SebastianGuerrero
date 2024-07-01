using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos
{
    public class Entrenador
    {
        [Required (ErrorMessage ="El campo Id es requerido")]
        public Guid? Id { get; set; }
        [Required (ErrorMessage ="El campo Nombre es requerido")]
        [StringLength(100, ErrorMessage =("El nombre no puede ser mayor a 100 caracteres"))]
        [RegularExpression(@"ˆ[a-zA_Z]*$")]
        public string? Nombre { get; set; }
    }
}
