using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oo_01
{
    internal class Carro
    {
        public int anoFabricacao; 
        public int velocidade;
        public int quantidadePortas;
        public string cor;
        public string modelo;
        public string fabricante;
        

        public Carro()
        {
            this.anoFabricacao = 0;
            this.velocidade = 0;
            this.quantidadePortas = 0;
            this.cor = String.Empty;
            this.modelo = String.Empty;
            this.fabricante = String.Empty;
        }

        public Carro(int anoFabricacao, int velocidade, int quantidadePortas, string cor, string modelo, string fabricante)
        {
            this.anoFabricacao = anoFabricacao;
            this.velocidade = velocidade;
            this.quantidadePortas = quantidadePortas;
            this.cor = cor;
            this.modelo = modelo;
            this.fabricante = fabricante;
        }

        public void setQuantidadePortas(int quantidade)
        {
            this.quantidadePortas = quantidade;
        }

        public int getQuantidadePortas()
        {
            return this.quantidadePortas;
        }
    }
}
