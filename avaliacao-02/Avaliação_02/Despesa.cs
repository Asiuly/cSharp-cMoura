using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Avaliação_02
{
    internal class Despesa : IDespesa
    {
        public List<IDespesa> despesasList;

        public Despesa()
        {
            this.despesasList = new List<IDespesa>();
        }

        public void addDespesa(IDespesa despesa)
        {
            despesasList.Add(despesa);
        }

        public decimal getValorTotal()
        {
            decimal valorTotal = 0;
            foreach (IDespesa despesa in despesasList)
            {
                if (despesa is DespesaMes)
                {
                    valorTotal += ((DespesaMes)despesa).getValor();
                }
                else if (despesa is DespesaDia)
                {
                    valorTotal += ((DespesaDia)despesa).getValor();
                }
            }
            return valorTotal;
        }
    }
}
