using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace oo_01
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //code em program.cs 
            Carro carro = new Carro();

            Console.WriteLine("Informe os dados do seu carro.");

            Console.Write("Quantidade de Portas: ");
            carro.setQuantidadePortas(int.Parse(Console.ReadLine()));

            Console.Write($"\nSeu carro tem {carro.getQuantidadePortas()} portas");

            Console.ReadKey();
        }
    }
}

/*
Console.Write("Ano de fabricação: ");
carro.anoFabricacao = int.Parse(Console.ReadLine());

Console.Write("Velocidade: ");
carro.velocidade = int.Parse(Console.ReadLine());

Console.Write("Cor: ");
carro.cor = Console.ReadLine();

Console.Write("Modelo: ");
carro.modelo = Console.ReadLine();

Console.Write("Fabricante: ");
carro.fabricante = Console.ReadLine();

Console.Write($"seu carro é o {carro.modelo}, que foi fabricado em {carro.anoFabricacao} pela empresa {carro.fabricante} com {carro.quantidadePortas} portas e da cor {carro.cor}, podendo atingir a velocidade maxima de {carro.velocidade} KM/H ");*/