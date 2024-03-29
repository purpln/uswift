@frozen
public struct OpaquePointer {
    @usableFromInline
    internal var _rawValue: Builtin.RawPointer
    
    @usableFromInline @_transparent
    internal init(_ v: Builtin.RawPointer) {
        _rawValue = v
    }
    
    @_transparent
    public init?(bitPattern: Int) {
        if bitPattern == 0 { return nil }
        _rawValue = Builtin.inttoptr_Word(bitPattern._value)
    }
    
    @_transparent
    public init?(bitPattern: UInt) {
        if bitPattern == 0 { return nil }
        _rawValue = Builtin.inttoptr_Word(bitPattern._value)
    }
    
    @_transparent
    public init<T>(@_nonEphemeral _ from: UnsafePointer<T>) {
        _rawValue = from._rawValue
    }
    
    @_transparent
    public init?<T>(@_nonEphemeral _ from: UnsafePointer<T>?) {
        guard let unwrapped = from else { return nil }
        self.init(unwrapped)
    }
    
    @_transparent
    public init<T>(@_nonEphemeral _ from: UnsafeMutablePointer<T>) {
        _rawValue = from._rawValue
    }
    
    @_transparent
    public init?<T>(@_nonEphemeral _ from: UnsafeMutablePointer<T>?) {
        guard let unwrapped = from else { return nil }
        self.init(unwrapped)
    }
}
