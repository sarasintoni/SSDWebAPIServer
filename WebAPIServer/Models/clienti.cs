/*Per ogni cliente quanto chiede ad ogni magazzino.
 Nel db vero c'è anche node_id ma riguarda la mappa e noi non lo usiamo quindi possiamo anche non metterlo*/
namespace WebAPIServer.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class clienti
    {
        public int id { get; set; }
        public int req{ get; set; }
        public int mag { get; set; }
    }
}
