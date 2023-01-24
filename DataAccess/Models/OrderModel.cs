using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models;

public class OrderModel
{
    public int Id { get; set; }
    public string Drink { get; set; } = "";

    public string OrderStatus { get; set; } = "";

    public int Price { get; set; }

    public string EmployeeFname { get; set; } = "";
    
    public int IsRewards { get; set;  }
}
