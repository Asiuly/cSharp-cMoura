using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OO_ParkDiversao
{
    internal interface IEletricos
    {
        bool Ligado { get; }
        void Ligar();
        void Desligar();
    }
}
