using System;

namespace _01_ParOuImpar
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string opcaoJogador;
            int humano = 0;
            int computador = 0;

            Console.WriteLine("---------------------------------------------");
            Console.WriteLine("------Bem vindo ao jogo do Par ou Ímpar------");
            Console.WriteLine("---------------------------------------------");
            Console.WriteLine("OBS: Para parar de jogar, digite 'n' quando for escolher par ou ímpar. ");

            do
            {
                Console.Write("\nVocê quer par (p) ou ímpar (i): ");
                opcaoJogador = Console.ReadLine();

                if (opcaoJogador == "n")
                {
                    Console.WriteLine("\nOkay, programa encerrado");
                    break;
                }
                    
                Console.Write("\nInforme um número inteiro: ");
                int numeroJogador = int.Parse(Console.ReadLine());

                Random roleta = new Random();
                int numeroComputador = roleta.Next(100);

                Console.WriteLine($"O número escolhido pelo computador foi: {numeroComputador}\n");

                int resultado = numeroJogador + numeroComputador;

                if (opcaoJogador == "p")
                {
                    if (resultado % 2 == 0)
                    {
                        Console.WriteLine($"Uau, {resultado} é par, você ganhou <3");
                        humano++;
                    }

                    else
                    {
                        Console.WriteLine($"Infelizmente, {resultado} é ímpar, o computador te venceu!");
                        computador++;
                    }
                }

                else if (opcaoJogador == "i")
                {
                    if (resultado % 2 == 0)
                    {
                        Console.WriteLine($"Infelizmente, {resultado} é par, o computador te venceu!");
                        computador++;
                    }

                    else
                    {
                        Console.WriteLine($"Uau, {resultado} é ímpar, você ganhou <3");
                        humano++;
                    }

                }

                else
                    Console.WriteLine("Você não escolheu ímpar ou par, faça novamente.");

            } while (opcaoJogador != "n");

            Console.WriteLine($"\nPlacar final: Jogador: {humano} pontos." +
                $"\nComputador: {computador} pontos.");

            if (humano > computador)
                Console.WriteLine("\nVitória do Jogador");

            else if (humano < computador)
                Console.WriteLine("\nVitória do Computador");

            else 
                Console.WriteLine("\nEmpate!!");

            Console.ReadKey();
        }
    }
}
