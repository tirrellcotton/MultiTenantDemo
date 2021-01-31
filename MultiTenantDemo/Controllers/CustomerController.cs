using Microsoft.AspNetCore.Mvc;
using MultiTenantDemo.Models;
using MultiTenantDemo.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MultiTenantDemo.Controllers {
    [Route("api/[controller]")]
    [ApiController]
    public class CustomersController : ControllerBase {
        private readonly CustomerRepository _customerRepository;
        private readonly TenantRepository _tenantRepository;
        public CustomersController(CustomerRepository customerRepository,

        TenantRepository tenantRepository) {
            _customerRepository = customerRepository;
            _tenantRepository = tenantRepository;

        }

        [HttpGet]
        public async Task<List<Customer>> GetAll() {
            string tenantId = await _tenantRepository.GetTenantId();
            return await _customerRepository.GetAllCustomers(tenantId);
        }
    }

}
