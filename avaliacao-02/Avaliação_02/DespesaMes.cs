using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Avaliação_02
{
    internal class DespesaMes: IDespesa
    {
        private int mes;
        private decimal valor;

        public DespesaMes(int mes, decimal valor)
        {
            this.mes = mes;
            this.valor = valor;
        }

        public int getMes()
        {
            return this.mes;
        }

        public decimal getValor() 
        {
            return this.valor;
        }
    }
}
