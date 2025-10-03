//
//  Project.swift
//  Config
//
//  Created by Junyoung on 1/9/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.configure(
    moduleType: .general(name: "RemoteDataSource"),
    product: .staticFramework,
    dependencies: [
        .Module.networker
    ],
    hasInterface: true
)
