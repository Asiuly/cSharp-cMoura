using System;

/* Três amigos jogaram na loteria, caso ganhem, vão dividir o premio proporcionalmente em referencia ao valor inicial. Indique quanto cada um investiu, valor do prêmio e retorno a cada um.
 */

namespace Loteria_com_retorno_proporcional
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Entrada de dados
            Console.Write("O Valor total do prêmio em que vocês desejam investir é de: ");
            double premio = double.Parse(Console.ReadLine());

            Console.Write("\nOlá investidor 1, informe o valor que vc deseja investir: ");
            double invest1 = double.Parse(Console.ReadLine());

            Console.Write("Olá investidor 2, informe o valor que vc deseja investir: ");
            double invest2 = double.Parse(Console.ReadLine());

            Console.Write("Olá investidor 3, informe o valor que vc deseja investir: ");
            double invest3 = double.Parse(Console.ReadLine());

            //processamento de variaveis
            double porcentagem1 = (invest1 * 100) / (invest1 + invest2 + invest3);
            double porcentagem2 = (invest2 * 100) / (invest1 + invest2 + invest3);
            double porcentagem3 = (invest3 * 100) / (invest1 + invest2 + invest3);

            //saída de dados processados
            Console.WriteLine($"\nO total investido por vocês foi de R${invest1+invest2+invest3}");

            Console.WriteLine($"\nInvestidor 1, você investiu {invest1:C}, o que é {porcentagem1:F1}% do valor total investido" +
                $"\nDessa forma, caso vocês ganhem o prêmio de {premio:C}, seu retorno será de {(porcentagem1 / 100 * premio).ToString("C")}.");

            Console.WriteLine($"\nInvestidor 2, você investiu {invest2:C}, o que é {porcentagem2:F1}% do valor total investido" +
                $"\nDessa forma, caso vocês ganhem o prêmio de {premio:C}, seu retorno será de {(porcentagem2 / 100 * premio).ToString("C")}.");

            Console.Write($"\nInvestidor 3, você investiu {invest3:C}, o que é {porcentagem3:F1}% do valor total investido" +
                $"\nDessa forma, caso vocês ganhem o prêmio de {premio:C}, seu retorno será de {(porcentagem3 / 100 * premio).ToString("C")}.");

            //Execuçao e finalização do código
            Console.Write("\n\nObrigada pela participação, aperte ENTER para fechar o programa.");
            Console.ReadLine();
        }
    }
}
