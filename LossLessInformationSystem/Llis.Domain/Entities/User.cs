using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Llis.Domain.Entities
{
    public class User
    {
        public string Address { get; set; }

        public string UserName { get; set; }

        public int Id { get; set; }

        public int OperationId { get; set; }

        public string Action { get; set; }

        public DateTime CreateDate { get; set; }

        public DateTime UpdatedDate { get; set; }
    }
}
