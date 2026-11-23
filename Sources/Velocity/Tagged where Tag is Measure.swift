public import Quantity

extension Tagged::Tagged where Tag == Measure<1, Space.Physical>, Underlying: FloatingPoint {
    /// How fast this length is covered in `rhs`: a velocity.
    @inlinable
    public static func / (lhs: Self, rhs: Time.Duration.Value<Underlying>) -> Velocity.Value<Underlying> {
        Velocity.amount(lhs.underlying / rhs.underlying)
    }
}
