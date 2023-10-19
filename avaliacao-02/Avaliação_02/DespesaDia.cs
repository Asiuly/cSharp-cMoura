using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Avaliação_02
{
    internal class DespesaDia: DespesaMes, IDespesa
    {
        private int dia;

        public DespesaDia(int dia, int mes, decimal valor) : base(mes, valor)
        {
            this.dia = dia;
        }

        public int getDia()
        {
            return this.dia;
        }
    }
}
