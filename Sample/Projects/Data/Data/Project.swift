//
//  Project.swift
//  Config
//
//  Created by 김태형 on 9/26/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.configure(
    moduleType: .general(name: "Data"),
    product: .staticFramework,
    dependencies: [
        .Module.repository,
        .Module.localDataSource.implement,
        .Module.remoteDataSource.implement
    ]
)
