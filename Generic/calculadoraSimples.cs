using System;

/* Faça uma calculadora que leia dois números e imprima a soma, a subtração, o produto da multiplicação e o resto da divisão desses numeros.
 */

namespace Calculadora_20_01_23
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Calculadora");

            Console.Write("\nDigite o primeiro número: ");
            int n1 = int.Parse(Console.ReadLine());

            Console.Write("Digite o segundo número: ");
            int n2 = int.Parse(Console.ReadLine());

            //Processamento de variaveis
            Console.WriteLine($"\nA soma de {n1} + {n2} é = a {n1+n2}");
            Console.WriteLine($"A subtração de {n1} - {n2} é = a {n1 - n2}");
            Console.WriteLine($"A multiplicação de {n1} * {n2} é = a {n1 * n2}");
            Console.WriteLine($"A divisão de {n1} / {n2} é = a {(double) n1 / n2}");
            Console.WriteLine($"o resto da divisão de {n1} por {n2} é = {n1 % n2}");

            //Execução do código
            Console.Write("-----------Pressione ENTER para encerrar o programa -------------");
            Console.ReadLine();
        }
    }
}
