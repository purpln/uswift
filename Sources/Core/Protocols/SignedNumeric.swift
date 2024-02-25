public protocol SignedNumeric: Numeric {
    static prefix func - (_ operand: Self) -> Self
    
    mutating func negate()
}
