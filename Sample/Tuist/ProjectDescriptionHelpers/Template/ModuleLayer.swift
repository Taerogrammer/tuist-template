//
//  ModuleType.swift
//  Packages
//
//  Created by 김태형 on 9/26/25.
//

import Foundation

public enum ModuleLayer {
    case app
    case feature(name: String)    // micro features에서 micro라고 지은거 같은데, 이제 module임,,
    case domain(name: String)
    case general(name: String)   // app과 현재 micro가 아닌 모든 것을 모듈로 선언 + 모듈이 너무 모호함
}
