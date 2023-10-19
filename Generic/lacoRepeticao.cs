using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PilotosCorridas_Array
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Informe o número de voltas da corrida:\n>");
            int numVoltas = int.Parse(Console.ReadLine());

            int[] tempos = new int[numVoltas];
            int tempo, volta = 0;

            Console.WriteLine("Informe o tempo (em segundos) de cada volta. Para encerrar, digite um número negativo.");
            while (volta < numVoltas)
            {
                tempo = int.Parse(Console.ReadLine());
                if (tempo < 0)
                {
                    break;
                }

                tempos[volta++] = tempo;
            }

            int melhorTempo = tempos[0];
            int voltaMelhorTempo = 1;
            int somaTempos = 0;

            for (int i = 0; i < volta; i++)
            {
                somaTempos += tempos[i];
                if (tempos[i] < melhorTempo)
                {
                    melhorTempo = tempos[i];
                    voltaMelhorTempo = i + 1;
                }
            }

            Console.WriteLine("Melhor tempo: " + melhorTempo + " segundos");
            Console.WriteLine("Volta com melhor tempo: " + voltaMelhorTempo);
            Console.WriteLine("Tempo médio das " + volta + " voltas: " + (somaTempos / volta) + " segundos");

            Console.ReadKey();
        }
    }
}
