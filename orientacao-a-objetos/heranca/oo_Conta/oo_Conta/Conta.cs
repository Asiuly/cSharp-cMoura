using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oo_Conta
{
    internal class Conta
    {
        protected enmTipo tipo;
        private int numero;
        public enum enmTipo
        {
            Conta = 0,
            ContaCorrente = 1,
            ContaPoupanca = 2
        }

        public int Numero 
        { 
            get { return numero; } 
        }

        public enmTipo Tipo 
        {
            get { return this.tipo; }
        }

        public Conta(int numero) 
        {
            this.tipo = enmTipo.Conta;
            this.numero = numero;
        }
    }
}
