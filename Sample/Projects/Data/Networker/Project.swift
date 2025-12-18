//
//  Project.swift
//  Config
//
//  Created by Junyoung on 1/9/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.configure(
    moduleType: .general(name: "Networker"),
    product: .staticFramework,
    dependencies: [
        // 순수 인프라 레이어 - Domain 의존 없음
    ]
)
