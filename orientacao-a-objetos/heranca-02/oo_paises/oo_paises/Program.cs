using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oo_paises
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Pais roma = new Pais("ROMA", "Athenas", 4556);

            Pais roma1 = new Pais();
            roma1.Nome = "ROMA";
            roma.NomeCapital = "Athenas";

            if (roma.igual(roma1) == true)
                Console.WriteLine("Ingualzinho");

            else 
                Console.WriteLine("Diferentein");

            Console.ReadLine();
        }
    }
}
