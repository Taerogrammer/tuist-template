//
//  TargetDependency+.swift
//  ProjectDescriptionHelpers
//
//  Created by 김태형 on 9/26/25.
//

import ProjectDescription

// MARK: - Base Dependency Protocol
/// 의존성을 생성하는 기본 프로토콜
public protocol DependencyProvider {
    static func dependency(target: String, path: Path) -> TargetDependency
    
    static func domainDependency(target: String) -> TargetDependency
    static func domainInterfaceDependency(target: String) -> TargetDependency
    
    static func featureDependency(target: String) -> TargetDependency
    static func featureInterfaceDependency(target: String) -> TargetDependency
}

public extension DependencyProvider {
    static func dependency(target: String, path: Path) -> TargetDependency {
        return .project(
            target: target,
            path: path
        )
    }
    
    static func domainDependency(target: String) -> TargetDependency {
        return .project(
            target: target,
            path: .relativeToDomain(path: target)
        )
    }
    
    static func domainInterfaceDependency(target: String) -> TargetDependency {
        return .project(
            target: "\(target)Interface",
            path: .relativeToDomain(path: target)
        )
    }
    
    static func featureDependency(target: String) -> TargetDependency {
        return .project(
            target: target,
            path: .relativeToFeature(path: target)
        )
    }
    
    static func featureInterfaceDependency(target: String) -> TargetDependency {
        return .project(
            target: "\(target)Interface",
            path: .relativeToFeature(path: target)
        )
    }
}

// MARK: - Module Categories
// Q. Data 레이어는 따로 안만드나
public extension TargetDependency {
    /// 외부 라이브러리 의존성
    struct Library: DependencyProvider {}

    /// 핵심 모듈 의존성 (Core, DesignKit 등)
    struct Core: DependencyProvider {}
    
    /// 비즈니스 로직 모듈 의존성
    struct Module: DependencyProvider {}
    
    /// 도메인 레이어 의존성
    struct Domain: DependencyProvider {
        static let domain = Domain.self
        
        private static let name = "Domain"
        public static let implement = domainDependency(target: name)
        public static let interface = domainInterfaceDependency(target: name)
    }
        
    /// 피처 레이어 의존성
    struct Feature: DependencyProvider {}
    
    /// 앱 레벨 의존성
    struct App: DependencyProvider {}
}

/*
 
 public extension TargetDependency {
     /// 외부 라이브러리 의존성
     struct Library: DependencyProvider {}

     /// 핵심 모듈 의존성 (Core, DesignKit 등)
     struct Core: DependencyProvider {}
     
     /// 비즈니스 로직 모듈 의존성
     struct Data: DependencyProvider {}
     
     /// 도메인 레이어 의존성
     struct Domain: DependencyProvider {
         static let domain = Domain.self
         
         private static let name = "Domain"
         public static let implement = domainDependency(target: name)
         public static let interface = domainInterfaceDependency(target: name)
     }
         
     /// 피처 레이어 의존성
     struct Presentation: DependencyProvider {}
 
    
     
     /// 앱 레벨 의존성
     struct App: DependencyProvider {}

 }
 
 
 
 
 
 */

/*
 public enum ModuleType {
     /// 앱 실행을 위한 최종 결과물
     case app

     /// Presentation Layer: 사용자 경험의 한 단위를 나타내는 기능 모듈
     case feature(name: String)

     /// Domain Layer: 핵심 비즈니스 로직, 데이터 모델, Usecase (Interface)
     case domain(name: "String")

     /// Data Layer: Domain의 Interface를 구현, 데이터 소스와의 통신 담당
     case data(name: String)

     /// Presentation Layer: 여러 기능에서 공통으로 사용되는 UI 컴포넌트, 디자인 시스템
 // core : Helper + designSystem
     case core(name: String)

     /// 모든 레이어에서 사용 가능한 범용 유틸리티, Extension 등
 // String+Exention
 // Date+Extension
     case sharedUtil(name: String)
 }
*/
