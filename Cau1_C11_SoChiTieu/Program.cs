using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Serilog;
namespace SoChiTieu;
internal static class Program
{
    [STAThread]
    static void Main()
    {
        ApplicationConfiguration.Initialize();
        var cfg = new ConfigurationBuilder().SetBasePath(AppContext.BaseDirectory).AddJsonFile("appsettings.json", false, true).AddJsonFile("appsettings.Development.json", true, true).Build();
        var connection = cfg.GetConnectionString("QL_ChiTieu") ?? throw new InvalidOperationException("Thiếu ConnectionStrings:QL_ChiTieu trong appsettings.json");
        Log.Logger = new LoggerConfiguration().MinimumLevel.Information().WriteTo.File("Logs/log-.txt", rollingInterval: RollingInterval.Day).CreateLogger();
        using var loggerFactory = LoggerFactory.Create(b => b.AddSerilog());
        Application.Run(new MainForm(connection, loggerFactory.CreateLogger<MainForm>()));
        Log.CloseAndFlush();
    }
}
