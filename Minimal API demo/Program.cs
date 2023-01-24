global using DataAccess.Data;
global using DataAccess.Models;
using DataAccess.DBaccess;
using Minimal_API_demo;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddSingleton<ISqlDataAccess, SqlDataAccess>();
builder.Services.AddSingleton<IOrderData, OrderData>();

var app = builder.Build();

app.Logger.LogInformation($@"Application is running on {app.Environment.EnvironmentName} environment... at {DateTime.UtcNow}");

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.ConfigureApi();

app.Run();

