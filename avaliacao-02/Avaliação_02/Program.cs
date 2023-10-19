using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Avaliação_02
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Despesa despesa = new Despesa();

            // Criando uma despesa mensal com valor de R$ 100,00 para o mês de janeiro
            DespesaMes despesaMes = new DespesaMes(1, 100);
            despesa.addDespesa(despesaMes);

            // Criando uma despesa diária com valor de R$ 10,00 para o dia 1 do mês
            DespesaDia despesaDia = new DespesaDia(1, 2, 10);
            despesa.addDespesa(despesaDia);

            // Exibir a lista de despesas
            Console.WriteLine("Lista de despesas:");
            foreach (IDespesa item in despesa.despesasList)
            {
                if (item is DespesaMes)
                {
                    DespesaMes dm = (DespesaMes)item;
                    Console.WriteLine($"Despesa mensal para o mês {dm.getMes()}: R$ {dm.getValor()}");
                }
                else if (item is DespesaDia)
                {
                    DespesaDia dd = (DespesaDia)item;
                    Console.WriteLine($"Despesa diária para o dia {dd.getDia()}/{dd.getMes()}: R$ {dd.getValor()}");
                }
            }

            // Exibir o valor total das despesas
            Console.WriteLine($"Valor total das despesas: R$ {despesa.getValorTotal()}");

            Console.ReadKey();
        }
    }
}
