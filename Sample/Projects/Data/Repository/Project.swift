//
//  Project.swift
//  Config
//
//  Created by Junyoung on 1/9/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.configure(
    moduleType: .general(name: "Repository"),
    product: .staticFramework,
    dependencies: [
        .Module.localDataSource.interface,
        .Module.remoteDataSource.interface
    ]
)
