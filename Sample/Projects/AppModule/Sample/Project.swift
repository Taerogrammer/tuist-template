//
//  Project.swift
//  TestProjectManifests
//
//  Created by 김태형 on 9/26/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.configure(
    moduleType: .app,
    product: .app,
    dependencies: [
        .App.umbrella
    ]
)
