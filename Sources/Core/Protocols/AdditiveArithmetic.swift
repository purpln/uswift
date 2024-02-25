public protocol AdditiveArithmetic: Equatable {
    static func + (_ lhs: Self, _ rhs: Self) -> Self
    static func += (_ lhs: inout Self, _ rhs: Self)
    static func - (_ lhs: Self, _ rhs: Self) -> Self
    static func -= (_ lhs: inout Self, _ rhs: Self)
}

public extension AdditiveArithmetic {
    @_alwaysEmitIntoClient
    static func += (_ lhs: inout Self, _ rhs: Self) {
        lhs = lhs + rhs
    }
    
    @_alwaysEmitIntoClient
    static func -= (_ lhs: inout Self, _ rhs: Self) {
        lhs = lhs - rhs
    }
}
