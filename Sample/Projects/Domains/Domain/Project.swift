//
//  Project.swift
//  Config
//
//  Created by 김태형 on 9/26/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Domain
/// 가장 상단의 Domain이기 때문에 Interface와 tests를 제거하였습니다.
let project = Project.configure(
    moduleType: .general(name: "Domain"),
    product: .staticFramework,
    dependencies: [
        .Domain.Sample.implement,
        .Domain.First.implement,
    ]
)
