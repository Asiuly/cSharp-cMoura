using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Permissions;
using System.Text;
using System.Threading.Tasks;

namespace oo_Conta
{
    internal class ContaCorrente: Conta, ITributavel
    {
        public double Tributo { get; set; }

        public ContaCorrente(int numero)
            : base(numero)
        {
            this.tipo = enmTipo.ContaCorrente;
        }

        public void tributar()
        {

        }
    }
}
