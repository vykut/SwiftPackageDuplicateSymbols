//
//  MyLibraryMocks.swift
//  
//
//  Created by Victor Socaciu on 21/04/2023.
//

import Foundation
import UIKit
import MyLibrary

public struct Mock: Component {
    public typealias M = MockModel

    public init() { }
}

public struct MockModel: Model {
    public typealias C = Mock

    public init() { }
}
