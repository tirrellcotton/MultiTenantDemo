using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MultiTenantDemo.Models {
    public class Tenant {
        public Guid Id { get; set; }
        public Guid ApiIKey { get; set; }
        public string TenantName { get; set; }
        public bool IsActive { get; set; }
    }
}
