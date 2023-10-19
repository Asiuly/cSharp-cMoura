using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oo_porta
{
    internal class Porta
    {
        private bool aberta;

        public Porta()
        {
            this.Cor = String.Empty;
            this.aberta = false;
        }

        public string Cor { get; set; }

        public void abrir()
        {
            this.aberta = true;
        }
        public void fechar()
        {
            this.aberta = false;
        }

        public bool getAberta()
        {
            return this.aberta;
        }

    }

   
}
