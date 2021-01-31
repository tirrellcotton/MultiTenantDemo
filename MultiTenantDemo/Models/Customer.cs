using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MultiTenantDemo.Models {
    public class Customer {
        public Guid Id { get; set; }
        public Guid TenantId { get; set; }
        public string CustomerName { get; set; }
        public bool IsActive { get; set; }
    }
}
