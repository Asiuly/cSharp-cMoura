using System;
using System.Collections.Generic;

namespace theGame_oo
{
    internal class Inventario
    {
        public int Id { get; set; }

        List<IItemColetavel> itens;

        public Inventario()
        {
            this.itens = new List <IItemColetavel>();
        }

        public void AddItem(IItemColetavel item) 
        {
            this.itens.Add(item);
            
        }

    }

}
