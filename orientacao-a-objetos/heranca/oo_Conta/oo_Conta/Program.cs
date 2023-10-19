using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oo_Conta
{
    internal class Program
    {
        static void Main(string[] args)
        {

            ContaPoupança cp = new ContaPoupança(10);
            ContaCorrente cc = new ContaCorrente(11);

            Console.WriteLine($"Numero cc1 {cp.Numero}");
            Console.WriteLine($"Numero cc2 {cc.Numero}");

            //ITributavel t1 = cp;
            ITributavel t2 = cc;

            Console.ReadKey();
        }
    }
}
