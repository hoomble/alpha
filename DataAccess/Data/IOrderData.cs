using DataAccess.Models;

namespace DataAccess.Data
{
    public interface IOrderData
    {
        Task DeleteOrder(int id);
        Task<OrderModel?> GetOrder(int id);
        Task<IEnumerable<OrderModel>> GetOrders();
        Task InsertOrder(OrderModel order);
        Task UpdateOrder(OrderModel order);
    }
}