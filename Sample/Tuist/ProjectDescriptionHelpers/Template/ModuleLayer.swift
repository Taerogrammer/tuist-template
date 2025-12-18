//
//  ModuleType.swift
//  Packages
//
//  Created by 김태형 on 9/26/25.
//

import Foundation

public enum ModuleLayer {
    case app
    case feature(name: String)
    case domain(name: String)
    case data(name: String)
    case general(name: String)
}
