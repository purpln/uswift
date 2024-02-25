@frozen
public struct Float {
    @usableFromInline
    internal var _value: Builtin.FPIEEE32
    
    @_transparent
    public init(_ _value: Builtin.FPIEEE32) {
        self._value = _value
    }
}


extension Float: BinaryFloatingPoint {
    @_transparent
    public static prefix func - (operand: Self) -> Self {
        return Self(Builtin.fneg_FPIEEE32(operand._value))
    }
    
    @_transparent
    public mutating func negate() {
        _value = Builtin.fneg_FPIEEE32(_value)
    }
    
    @_transparent
    public static func + (lhs: Self, rhs: Self) -> Self {
        return Self(Builtin.fadd_FPIEEE32(lhs._value, rhs._value))
    }
    
    @_transparent
    public static func - (lhs: Self, rhs: Self) -> Self {
        return Self(Builtin.fsub_FPIEEE32(lhs._value, rhs._value))
    }
    
    @_transparent
    public static func * (lhs: Self, rhs: Self) -> Self {
        return Self(Builtin.fmul_FPIEEE32(lhs._value, rhs._value))
    }
    
    @_transparent
    public static func / (lhs: Self, rhs: Self) -> Self {
        return Self(Builtin.fdiv_FPIEEE32(lhs._value, rhs._value))
    }
    
    @_transparent
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return Bool(Builtin.fcmp_oeq_FPIEEE32(lhs._value, rhs._value))
    }
}

extension Float: _ExpressibleByBuiltinFloatLiteral {
    public init(_builtinFloatLiteral value: _MaxBuiltinFloatType) {
        _value = Builtin.fptrunc_FPIEEE64_FPIEEE32(value)
    }
}

extension Float: ExpressibleByFloatLiteral {}

extension Float: _ExpressibleByBuiltinIntegerLiteral {
    public init(_builtinIntegerLiteral value: Builtin.IntLiteral) {
        _value = Builtin.itofp_with_overflow_IntLiteral_FPIEEE32(value)
    }
}

extension Float: ExpressibleByIntegerLiteral {}
