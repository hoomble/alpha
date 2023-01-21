using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models;

public class OrderModel
{
    public int OrderID { get; set; }
    public int DrinkID { get; set; }

    public int Price { get; set; }

    public int EmployeeID { get; set; }
}
