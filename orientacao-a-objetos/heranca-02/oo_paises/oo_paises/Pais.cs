using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oo_paises
{
    internal class Pais
    { 
        public string Nome { get; set; }

        public string NomeCapital { get; set; }

        public double Dimensao { get; set; }


        public Pais(string nome, string capital, double dimensao)
        {
            this.Nome = nome;
            this.NomeCapital = capital;
            this.Dimensao = dimensao;
        }


        public Pais()
        {

        }

        public bool igual(Pais pais)
        { /*está comparando o nome do objeto visto em this com o do objeto pais.
            caso a sentença dê verdadeiro, retorna valor verdadeiro.*/
            return (pais.Nome == this.Nome && pais.NomeCapital == this.NomeCapital);
        }
    }
}
