public protocol FloatingPoint: Hashable, SignedNumeric {
    
}
/*
extension FloatingPoint {
    @_transparent
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.isEqual(to: rhs)
    }
    
    @_transparent
    public static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.isLess(than: rhs)
    }
    
    @_transparent
    public static func <= (lhs: Self, rhs: Self) -> Bool {
        return lhs.isLessThanOrEqualTo(rhs)
    }
    
    @_transparent
    public static func > (lhs: Self, rhs: Self) -> Bool {
        return rhs.isLess(than: lhs)
    }
    
    @_transparent
    public static func >= (lhs: Self, rhs: Self) -> Bool {
        return rhs.isLessThanOrEqualTo(lhs)
    }
}
*/
