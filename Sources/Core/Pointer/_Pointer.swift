public protocol _Pointer {
    typealias Distance = Int
    
    associatedtype Pointee
    
    var _rawValue: Builtin.RawPointer { get }
    
    init(_ _rawValue: Builtin.RawPointer)
}

extension _Pointer {
    @_transparent
    public init(_ from: OpaquePointer) {
        self.init(from._rawValue)
    }
    
    @_transparent
    public init?(_ from: OpaquePointer?) {
        guard let unwrapped = from else { return nil }
        self.init(unwrapped)
    }
    
    @_transparent
    public init?(bitPattern: Int) {
        if bitPattern == 0 { return nil }
        self.init(Builtin.inttoptr_Word(bitPattern._value))
    }
    
    @_transparent
    public init?(bitPattern: UInt) {
        if bitPattern == 0 { return nil }
        self.init(Builtin.inttoptr_Word(bitPattern._value))
    }
    
    @_transparent
    public init(@_nonEphemeral _ other: Self) {
        self.init(other._rawValue)
    }
    
    @_transparent
    public init?(@_nonEphemeral _ other: Self?) {
        guard let unwrapped = other else { return nil }
        self.init(unwrapped._rawValue)
    }
}

extension _Pointer {
    @_transparent
    public static func == (_ lhs: Self, _ rhs: Self) -> Bool {
        return Bool(Builtin.cmp_eq_RawPointer(lhs._rawValue, rhs._rawValue))
    }
}
