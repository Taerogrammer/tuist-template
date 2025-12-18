import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.configure(
    moduleType: .data(name: "SampleRepository"),
    product: .staticFramework,
    dependencies: [
        .Domain.Sample.interface,
        .Module.localDataSource.interface,
        .Module.remoteDataSource.interface
    ]
)
