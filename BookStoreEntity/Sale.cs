//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BookStoreEntity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sale
    {
        public int id { get; set; }
        public string CustomerName { get; set; }
        public string Mobile { get; set; }
        public string BookName { get; set; }
        public string AuthorName { get; set; }
        public Nullable<int> Qty { get; set; }
        public Nullable<int> Price { get; set; }
        public string SDate { get; set; }
    }
}
