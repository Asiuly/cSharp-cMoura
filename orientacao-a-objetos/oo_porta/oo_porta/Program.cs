using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace oo_porta
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Porta porta = new Porta();
            bool continuar = true;

            do
            {
                Console.WriteLine("Informações:");
                Console.WriteLine("" +
                "Para pintar a porta digite 'P'" +
                "\nPara abrir a porta digite 'A'" +
                "\nPara fechar a porta digite 'F'" +
                "\nPara conferir a situação da porta digite 'C'" +
                "\nPara encerrar o programa digite 'E'");

                Console.Write("\nO que deseja fazer: ");
                string opcao = Console.ReadLine();

                switch (opcao.ToUpper())
                {
                    case "P":
                        Console.Write("Digite a cor desejada: ");
                        porta.Cor = Console.ReadLine();
                        break;

                    case "A":
                        if (porta.getAberta())
                            Console.WriteLine("A porta já está aberta.");

                        else
                            porta.abrir();
                        break;

                    case "F":
                        if (!porta.getAberta())
                            Console.WriteLine("A porta já está fechada.");

                        else
                            porta.fechar();
                        break;

                    case "C":
                        string estaAberta;
                        if (porta.getAberta())
                            estaAberta = "Aberta";

                        else
                            estaAberta = "Fechada";

                        Console.WriteLine($"a porta está {estaAberta} sua cor é {porta.Cor}\n");
                        break;

                    case "E":
                        continuar = false;
                        break;

                    default:
                        Console.WriteLine("Opção inválida.");
                        break;
                }
            } while (continuar);

            Console.ReadKey();
        }
    }
}
