//
//  AdapterTests.swift
//  MyAppTests
//
//  Created by Victor Socaciu on 20/04/2023.
//

import XCTest
@testable import MyLibrary
@testable import MyLibraryMocks
@testable import MyApp

final class AdapterTests: XCTestCase {
    func testExample() throws {
        let expectedModel = B()
        let adapter = Adapter()
        let model = adapter.adapt() as! B  // Thread 1: signal SIGABRT

        XCTAssertEqual(expectedModel, model)
    }

    func testExample2() throws {
        let expectedModel = B()
        let adapter = Adapter()
        let model = adapter.adapt()
        let modelType = type(of: model)
        print(modelType)
        XCTAssertEqual(
            ObjectIdentifier(B.self),
            ObjectIdentifier(modelType)
        )
    }
}
