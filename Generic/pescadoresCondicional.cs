using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula_25_01
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Entrada de dados
            Console.Write("O rendimento, em kg, de peixes hoje foi de: ");
            double kilos = double.Parse(Console.ReadLine());

            //atribuição de condições, processamento e exibição de variaveis
            if (kilos > 50)
            {
                double multa = 4 * (kilos - 50);
                Console.WriteLine($"\nOps! Você excedeu o limite de peso (50kg) em {kilos - 50}kg, sua multa é de {multa:C}");
            }

            else
                Console.WriteLine("\nTudo dentro dos limites patrão, sua multa é R$0,00");

            //execução do código
            Console.WriteLine("\n\n----------- Obrigada, aperte ENTER para encerrar o programa -----------------");
            Console.ReadLine();
        }
    }
}
