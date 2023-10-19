using System;
using System.Collections.Generic;

namespace theGame_oo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Inventario i1 = new Inventario();

            Bola b1= new Bola();
            Dinheiro d1= new Dinheiro();
            Dinheiro d2= new Dinheiro();
            Arma a1= new Arma();
            Carro c1 = new Carro();

            i1.AddItem(b1);

            i1.AddItem(d1);

            i1.AddItem(d2);

            b1.Nome = "bolinha";

            Console.ReadLine();
        }
    }
}
