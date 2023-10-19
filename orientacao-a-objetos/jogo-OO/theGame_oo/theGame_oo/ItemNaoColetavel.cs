using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace theGame_oo
{
    internal class ItemNaoColetavel : Item
    {
        public ItemNaoColetavel() 
        {
            this.isColetavel = false;
        }
    }
}
