//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SNS
{
    using System;
    using System.Collections.Generic;
    
    public partial class CustomerInfo
    {
        public int CustomerInfoID { get; set; }
        public int CustomerID { get; set; }
        public int CustomerAddressID { get; set; }
        public int CustomerPhoneNumberID { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual CustomerAddress CustomerAddress { get; set; }
        public virtual CustomerPhoneNumber CustomerPhoneNumber { get; set; }
    }
}
