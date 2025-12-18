import ProjectDescription

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
}
