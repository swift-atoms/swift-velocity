public import Quantity

extension Tagged::Tagged where Tag == Velocity, Underlying: Numeric {
    /// The length covered at this velocity in `rhs`.
    @inlinable
    public static func * (lhs: Self, rhs: Time.Duration.Value<Underlying>) -> Measure<1, Space.Physical>.Value<Underlying> {
        Measure<1, Space.Physical>.amount(lhs.underlying * rhs.underlying)
    }
}
