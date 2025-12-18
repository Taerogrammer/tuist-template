//
//  Project.swift
//  Config
//
//  Created by 김태형 on 9/26/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.configure(
    moduleType: .general(name: "Networker"),
    product: .staticFramework,
    dependencies: [
//        .Library.alamofire,
        // 순수 인프라 레이어 - Domain 의존 없음
    ]
)
