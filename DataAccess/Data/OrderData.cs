using DataAccess.DBaccess;
using DataAccess.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Data
{
    public class OrderData : IOrderData
    {
        private readonly ISqlDataAccess _db;

        public OrderData(ISqlDataAccess db)
        {
            _db = db;
        }

        public Task<IEnumerable<OrderModel>> GetOrders() =>
            _db.LoadData<OrderModel, dynamic>("dbo.spOrders_getAll", new { });

        public async Task<OrderModel?> GetOrder(int id)
        {
            var results = await _db.LoadData<OrderModel, dynamic>("dbo.spOrders_get", new { Id = id });

            return results.FirstOrDefault();
        }

        public Task InsertOrder(OrderModel order) =>
          _db.SaveData("dbo.spOrders_Insert", new { order.Drink, order.Price, order.EmployeeFname, order.IsRewards });

        public Task UpdateOrder(OrderModel order) =>
            _db.SaveData("dbo.spOrders_Update", order);

        public Task DeleteOrder(int id) =>
            _db.SaveData("dbo.spOrders_delete", new { Id = id });
    }
}
