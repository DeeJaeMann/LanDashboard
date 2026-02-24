var builder = DistributedApplication.CreateBuilder(args);

var web = builder.AddProject<Projects.LanDashboard_App>("web")
    .WithExternalHttpEndpoints();

builder.Build().Run();
