//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김태형 on 9/26/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.configure(
    moduleType: .general(name: "Feature"),
    product: .staticFramework,
    dependencies: [
        .Feature.First.feature,
    ]
)
