import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.configure(
    moduleType: .data(name: "FirstRepository"),
    product: .staticFramework,
    dependencies: [
        .Domain.First.interface,
        .Module.localDataSource.interface,
        .Module.remoteDataSource.interface
    ]
)
