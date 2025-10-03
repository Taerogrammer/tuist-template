//
//  Dependency+Domain.swift
//  Config
//
//  Created by 김태형 on 9/26/25.
//

import ProjectDescription

public extension TargetDependency.Domain {
    struct Sample {
        private static let name = "SampleDomain"
        public static let implement = domainDependency(target: name)
        public static let interface = domainInterfaceDependency(target: name)
    }

    struct First {
        private static let name = "FirstDomain"
        public static let implement = domainDependency(target: name)
        public static let interface = domainInterfaceDependency(target: name)
    }
}
