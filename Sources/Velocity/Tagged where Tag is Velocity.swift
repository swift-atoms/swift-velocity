public import Quantity

extension Tagged::Tagged where Tag == Velocity, Underlying: Numeric {
    /// The length covered at this velocity in `rhs`.
    @inlinable
    public static func * (lhs: Self, rhs: Time.Duration.Value<Underlying>) -> Length.Value<Underlying> {
        Length.amount(lhs.underlying * rhs.underlying)
    }
}
