import UIKit

public protocol Component<M> where M.C == Self {
    associatedtype M: Model
}

public protocol Model<C>: Hashable where C.M == Self {
    associatedtype C: Component
}

public final class A: Component {
    public typealias M = B

    public init() { }
}

public struct B: Model {
    public typealias C = A

    public init() { }
}
