using Microsoft.AspNetCore.Builder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MultiTenantDemo.Middleware {
    public static class TenantSecurityMiddlewareExtension {
        public static IApplicationBuilder UseTenant(this IApplicationBuilder app) {
            app.UseMiddleware<TenantSecurityMiddleware>();
            return app;
        }
    }
}
