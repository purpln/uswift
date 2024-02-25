@frozen
public struct Double {
    @usableFromInline
    internal var _value: Builtin.FPIEEE64
    
    @_transparent
    public init(_ _value: Builtin.FPIEEE64) {
        self._value = _value
    }
}

extension Double: BinaryFloatingPoint {
    @_transparent
    public static prefix func - (operand: Self) -> Self {
        return Self(Builtin.fneg_FPIEEE64(operand._value))
    }
    
    @_transparent
    public mutating func negate() {
        _value = Builtin.fneg_FPIEEE64(_value)
    }
    
    @_transparent
    public static func + (lhs: Self, rhs: Self) -> Self {
        return Self(Builtin.fadd_FPIEEE64(lhs._value, rhs._value))
    }
    
    @_transparent
    public static func - (lhs: Self, rhs: Self) -> Self {
        return Self(Builtin.fsub_FPIEEE64(lhs._value, rhs._value))
    }
    
    @_transparent
    public static func * (lhs: Self, rhs: Self) -> Self {
        return Self(Builtin.fmul_FPIEEE64(lhs._value, rhs._value))
    }
    
    @_transparent
    public static func / (lhs: Self, rhs: Self) -> Self {
        return Self(Builtin.fdiv_FPIEEE64(lhs._value, rhs._value))
    }
    
    @_transparent
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return Bool(Builtin.fcmp_oeq_FPIEEE64(lhs._value, rhs._value))
    }
}

extension Double: _ExpressibleByBuiltinFloatLiteral {
    public init(_builtinFloatLiteral value: _MaxBuiltinFloatType) {
        _value = value
    }
}

extension Double: ExpressibleByFloatLiteral {}

extension Double: _ExpressibleByBuiltinIntegerLiteral {
    public init(_builtinIntegerLiteral value: Builtin.IntLiteral) {
        _value = Builtin.itofp_with_overflow_IntLiteral_FPIEEE64(value)
    }
}

extension Double: ExpressibleByIntegerLiteral {}
