using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace OO_ParkDiversao
{
    internal class Brinquedos
    {
        public bool IsFuncionando;

        public Brinquedos()
        {
            this.IsFuncionando = false;
        }

        public void Abrir()
        {
            this.IsFuncionando = true;
        }

        public void Fechar()
        {
            this.IsFuncionando = false;
        }
    }
}
