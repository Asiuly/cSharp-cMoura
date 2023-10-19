using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oo_Conta
{
    internal class ContaPoupança: Conta
    {
        public ContaPoupança(int numero) 
            : base(numero)
        {
            this.tipo = enmTipo.ContaPoupanca;
        }
    }
}
