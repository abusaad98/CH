//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CH
{
    using System;
    using System.Collections.Generic;
    
    public partial class course_registerd
    {
        public int cr_id { get; set; }
        public int invoice_id { get; set; }
        public int course_id { get; set; }
    
        public virtual course course { get; set; }
        public virtual invoice invoice { get; set; }
    }
}
