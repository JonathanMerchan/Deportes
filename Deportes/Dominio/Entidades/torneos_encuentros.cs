using System;
using System.Collections.Generic;

namespace Dominio
{
    public class torneos_encuentros
    {
        public int Id_torneo {get;set;}
        public int Id_encuentro {get;set;}
        public int Id_equipo {get;set;}
        public int Id_equipo2 {get;set;}
        public int Id_ganador {get;set;}
        public torneo torneos {get;set;}
        public encuentro encuentros {get;set;}
    }
}