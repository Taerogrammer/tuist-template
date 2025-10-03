//
//  Dependency+Feature.swift
//  Config
//
//  Created by 김태형 on 9/26/25.
//

import ProjectDescription

public extension TargetDependency.Feature {
    struct Root {
        private static let name = "Feature"
        public static let feature = featureDependency(target: name)
        public static let interface = featureInterfaceDependency(target: name)
    }

    struct First {
        private static let name = "FirstFeature"
        public static let feature = featureDependency(target: name)
        public static let interface = featureInterfaceDependency(target: name)
    }
}
