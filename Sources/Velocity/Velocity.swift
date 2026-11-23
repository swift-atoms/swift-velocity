/// Velocity: how fast, along one direction, stored in metres per second.
public enum Velocity {}

extension Velocity: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: 1, time: -1) }
}

extension Velocity {
    /// An amount of velocity, its scalar in metres per second.
    public typealias Value<Scalar> = Tagged<Velocity, Scalar>

    /// An amount of velocity given in metres per second.
    @inlinable
    public static func metresPerSecond<Scalar>(_ scalar: Scalar) -> Value<Scalar> {
        amount(scalar)
    }
}
