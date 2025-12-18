//
//  Dependency+Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김태형 on 9/26/25.
//

import ProjectDescription

// MARK: - DataSource
// 프로젝트 단위의 의존성
// Q. 굳이 이름을 프로젝트?로 해야 하나? 지금은 Data Layer랑 Core가 함께 혼재되어 있어서 그런거 같긴한데, 이것을 분리하고 이름을 명확하게 지정하는 것이 가시성이 좋지 않을까?
public extension TargetDependency.Module {
    static let localDataSource = LocalDataSource.self
    static let remoteDataSource = RemoteDataSource.self

    struct LocalDataSource {
        public static let implement = dependency(
            target: "LocalDataSource",
            path: .relativeLocalDataSource()
        )

        public static let interface = dependency(
            target: "LocalDataSourceInterface",
            path: .relativeLocalDataSource()
        )
    }

    struct RemoteDataSource {
        public static let implement = dependency(
            target: "RemoteDataSource",
            path: .relativeRemoteDataSource()
        )

        public static let interface = dependency(
            target: "RemoteDataSourceInterface",
            path: .relativeRemoteDataSource()
        )
    }
}

public extension TargetDependency.Module {
    static let data = dependency(
        target: "Data",
        path: .relativeData()
    )

    static let repository = dependency(
        target: "Repository",
        path: .relativeRepository()
    )

    static let sampleRepository = dependency(
        target: "SampleRepository",
        path: .relativeSampleRepository()
    )

    static let firstRepository = dependency(
        target: "FirstRepository",
        path: .relativeFirstRepository()
    )

    static let persistence = dependency(
        target: "Persistence",
        path: .relativePersistence()
    )

    static let shared = dependency(
        target: "Shared",
        path: .relativShared()
    )

    static let networker = dependency(
        target: "Networker",
        path: .relativeToNetwork()
    )
}

public extension TargetDependency.Core {
    static let designKit = dependency(
        target: "DesignKit",
        path: .relativeToCore(path: "DesignKit")
    )

    static let core = dependency(
        target: "Core",
        path: .relativeToCore(path: "Core")
    )
}

public extension TargetDependency.App {
    static let umbrella = dependency(
        target: "Umbrella",
        path: .relativeUmbrella()
    )
}
