using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OO_ParkDiversao
{
    internal class BrinquedoEletrico : Brinquedos, IEletricos
    {
        private bool ligado;

        public bool Ligado
        {
            get { return ligado; }
        }

        public BrinquedoEletrico()
        {
            this.ligado = false;
        }

        public void Ligar()
        {
            this.ligado = true;
        }

        public void Desligar()
        {
            this.ligado = false;
        }
    
    }
}
