using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula1___Soma_de_N1_e_N2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Console Write Line = Console(maquina) escreva isso para o usuario ler. 
            Console.WriteLine("Digite um valor inteiro:");
            int n1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Digite outro valor inteiro:");
            int n2 = int.Parse(Console.ReadLine());

            Console.WriteLine($"a Soma de {n1} com {n2} é de {n1 + n2}");

            Console.Write("-----------Pressione ENTER para encerrar o programa -------------");
            Console.ReadLine();
        }
    }
}
