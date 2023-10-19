using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oo_Conta
{
    internal interface ITributavel
    {
        double Tributo { get; set; }

        void tributar();
    }
}
