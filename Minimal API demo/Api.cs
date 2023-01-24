using Microsoft.Extensions.Logging;

namespace Minimal_API_demo
{
    public static class Api
    {
        public static void ConfigureApi(this WebApplication app)
        {
            // Used for endpoint mapping
            app.MapGet("/Orders", GetOrders);
            app.MapGet("/Orders/{id}", GetOrder);
            app.MapPost("/Orders", InsertOrder);
            app.MapPut("/Orders", UpdateOrder);
            app.MapDelete("/Orders", DeleteOrder);
        }

        private static async Task<IResult> GetOrders(IOrderData data)
        {
            try
            {
                return Results.Ok(await data.GetOrders());
            }
            catch (Exception ex)
            {
                return Results.Problem(ex.Message);
            }
        }

        private static async Task<IResult> GetOrder(int id, IOrderData data)
        {
            try
            {
                var results = await data.GetOrder(id);
                if(results == null)
                {
                    return Results.NotFound();
                }
                return Results.Ok(results);
            }
            catch (Exception ex)
            {
                return Results.Problem(ex.Message);
            }
        }
        private static async Task<IResult> InsertOrder(OrderModel order, IOrderData data)
        {
            try
            {
                await data.InsertOrder(order);
                return Results.Ok();
            }
            catch (Exception ex)
            {
                return Results.Problem(ex.Message);
            }
        }

        private static async Task<IResult> UpdateOrder(OrderModel order, IOrderData data)
        {
            try
            {
                await data.UpdateOrder(order);
                return Results.Ok();

            }
            catch (Exception ex)
            {
                return Results.Problem(ex.Message);
            }
        }


        private static async Task<IResult> DeleteOrder(int id, IOrderData data)
        {
            try
            {
                await data.DeleteOrder(id);
                return Results.Ok();
            }
            catch (Exception ex)
            {
                return Results.Problem(ex.Message);
            }
        }

    }
}
