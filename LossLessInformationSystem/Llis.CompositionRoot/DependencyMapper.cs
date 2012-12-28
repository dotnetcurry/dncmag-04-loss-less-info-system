using Ninject.Modules;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Llis.Data.Respository;
using Llis.Domain.Repository;

namespace Llis.CompositionRoot
{
    public class DependencyMapper : NinjectModule
    {
        public override void Load()
        {
            this.Bind<IUserDataRepository>().To<SqlServerRepository>();
        }
    }
}
