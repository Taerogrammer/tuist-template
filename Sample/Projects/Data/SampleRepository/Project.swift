import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.configure(
    moduleType: .general(name: "SampleRepository"),
    product: .staticFramework,
    dependencies: [
        .Domain.Sample.interface,
        .Module.localDataSource.interface,
        .Module.remoteDataSource.interface
    ]
)
