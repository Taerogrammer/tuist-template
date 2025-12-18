//
//  data.swift
//  Config
//
//  Created by 김태형 on 9/26/25.
//

import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let template = Template(
    description: "Data(Repository) module template",
    attributes: [
        nameAttribute
    ],
    items: [
        // MARK: Project
        .file(
            path: "\(nameAttribute)Repository/Project.swift",
            templatePath: "../stencil/Repository/Project.swift.stencil"
        ),

        // MARK: Interface
        .file(
            path: "\(nameAttribute)Repository/Interface/Sources/\(nameAttribute)Repository.swift",
            templatePath: "../stencil/Repository/RepositoryInterface.swift.stencil"
        ),

        // MARK: Sources (Implementation)
        .file(
            path: "\(nameAttribute)Repository/Sources/Default\(nameAttribute)Repository.swift",
            templatePath: "../stencil/Repository/RepositoryImplementation.swift.stencil"
        ),

        // MARK: Tests
        .file(
            path: "\(nameAttribute)Repository/Tests/Sources/\(nameAttribute)RepositoryTests.swift",
            templatePath: "../stencil/sample.stencil"
        ),
    ]
)
