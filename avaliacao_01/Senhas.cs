using System;
using System.Collections.Generic;

namespace _03_Senhas
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<int> filaPrioritaria = new List<int>();
            List<int> filaComum = new List<int>();
            int proximaSenha = 1;
            bool atendimentoEmAndamento = false;
            int opcao = 0;

            Console.WriteLine("--------------------------------------------------------");
            Console.WriteLine("------Bem vindo ao programa de controle de senhas ------");
            Console.WriteLine("--------------------------------------------------------");
            Console.WriteLine("");

            do
            {
                Console.WriteLine("1 - Gerar senha para atendimento comum.");
                Console.WriteLine("2 - Gerar senha para atendimento prioritário.");
                Console.WriteLine("3 - Chamada da senha para atendimento.");
                Console.WriteLine("4 - Encerramento do atendimento.");
                Console.WriteLine("5 - Visualizar fila de chamada");

                Console.Write("Informe uma opção: ");
                opcao = int.Parse(Console.ReadLine());

                switch (opcao)
                {
                    case 1:
                        filaComum.Add(proximaSenha);
                        Console.WriteLine($"Senha comum gerada: {proximaSenha}");
                        proximaSenha++;
                        break;
                    case 2:
                        filaPrioritaria.Add(proximaSenha);
                        Console.WriteLine($"Senha prioritária gerada: {proximaSenha}");
                        proximaSenha++;
                        break;

                    case 3:
                        if (filaPrioritaria.Count > 0)
                        {
                            Console.WriteLine($"Chamando senha prioritária: {filaPrioritaria[0]}");
                            filaPrioritaria.RemoveAt(0);
                        }

                        else if (filaComum.Count > 0)
                        {
                            Console.WriteLine($"Chamando senha comum: {filaComum[0]}");
                            filaComum.RemoveAt(0);
                        }

                        else if (filaPrioritaria.Count == 0 && filaComum.Count == 0)
                        {
                            Console.WriteLine("Não existem mais senhas na fila de atendimento.");
                            return;
                        }

                        break;
                    case 4:
                        if (filaPrioritaria.Count == 0 && filaComum.Count == 0)
                        {
                            Console.WriteLine("Atendimento Encerrado.");
                            atendimentoEmAndamento = false;
                        }

                        else
                            Console.WriteLine("Ainda há senhas para serem chamadas");

                        break;

                    case 5:
                        Console.WriteLine("Fila prioritária:");
                        foreach (int senha in filaPrioritaria)
                        {
                            Console.Write($"{senha} ");
                        }
                        Console.WriteLine();
                        Console.WriteLine("Fila comum:");
                        foreach (int senha in filaComum)
                        {
                            Console.Write($"{senha} ");
                        }
                        break;

                    default:
                        Console.WriteLine("Opção inválida! Informe outra por favor");
                        break;
                }

                Console.WriteLine("Pressione ENTER para continuar.");
                Console.ReadLine();

                Console.Clear(); //Limpar a tela em cada LOOP.

            } while (true);

            Console.ReadKey();
        }
    }
}
