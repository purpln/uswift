@frozen
public struct UnsafeMutablePointer<Pointee>: _Pointer {
    public let _rawValue: Builtin.RawPointer
    
    @_transparent
    public init(_ _rawValue: Builtin.RawPointer) {
        self._rawValue = _rawValue
    }
}

@inlinable
public func withUnsafeMutablePointer<T, Result>(to value: inout T, _ body: (UnsafeMutablePointer<T>) throws -> Result) rethrows -> Result {
    return try body(UnsafeMutablePointer<T>(Builtin.addressof(&value)))
}
