using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OO_ParkDiversao
{
    internal class Parque: IParque
    {
        private bool ligado;
        private List<BrinquedoEletrico> brinquedosEletricos;
        private List<INaoEletrico> brinquedosNaoEletricos;

        //método construtor
        public Parque() 
        {
            this.ligado = false;
            this.brinquedosEletricos = new List<BrinquedoEletrico>();
            this.brinquedosNaoEletricos = new List<INaoEletrico>();
        }

        //propriedade get ligado
        public bool Ligado
        {
            get { return ligado; }
        }

        //métodos do parque
        public void Ligar()
        {
            this.ligado = true;

            foreach (var item in this.brinquedosEletricos)
            {
                item.Ligar();
            }
        }

        public void Desligar()
        {
            this.ligado = false;
            foreach (var item in this.brinquedosEletricos)
            {
                item.Desligar();
            }
        }

        public void adicionarBrinquedoEletrico(BrinquedoEletrico brinquedo)
        {
            this.brinquedosEletricos.Add(brinquedo);
        }

        public void adicionarBrinquedoNaoEletrico(INaoEletrico brinquedo)
        {
            this.brinquedosNaoEletricos.Add(brinquedo);
        }

        public void Abrir()
        {
            foreach (var item in this.brinquedosEletricos)
            {
                item.Abrir();
            }

            foreach (Brinquedos item in this.brinquedosNaoEletricos)
            { 
                item.Abrir(); 
            }
        }

        public void Fechar()
        {
            foreach (var item in this.brinquedosEletricos)
            {
                item.Fechar();
            }

            foreach (Brinquedos item in this.brinquedosNaoEletricos)
            {
                item.Fechar();
            }
        }
    }
}
