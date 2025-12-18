import ProjectDescription

// .Data 네임스페이스를 만들기 위한 확장
public extension TargetDependency {
    struct Data { }
}

public extension TargetDependency.Data {
    struct Sample {
        private static let name = "SampleRepository"
        public static let implement = dataDependency(target: name)
        public static let interface = dataInterfaceDependency(target: name)
    }

    struct First {
        private static let name = "FirstRepository"
        public static let implement = dataDependency(target: name)
        public static let interface = dataInterfaceDependency(target: name)
    }

    struct FNI {
        private static let name = "FNIRepository"
        public static let implement = dataDependency(target: name)
        public static let interface = dataInterfaceDependency(target: name)
    }
}

// 위 코드들이 동작하기 위한 헬퍼 함수들
// (이미 다른 곳에 정의되어 있다면 이 부분은 생략될 수 있습니다)
private func dataDependency(target: String) -> TargetDependency {
    .project(
        target: target,
        path: .relativeToRoot("Projects/Data/\(target)")
    )
}

private func dataInterfaceDependency(target: String) -> TargetDependency {
    .project(
        target: "\(target)Interface",
        path: .relativeToRoot("Projects/Data/\(target)")
    )
}
