# swift-velocity

Use this package when a value is velocity: how fast, along one direction. Start from `Velocity`, a kind of quantity of swift-quantity, and make an amount with `Velocity.amount(_:)`; it is a `Velocity.Value<Scalar>`, a `Tagged<Velocity, Scalar>`.

## Laws

- An amount of velocity is stored in metres per second, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is length: 1, time: -1 (exponents of the base dimensions).
- Amounts of velocity add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- A length over a time is a velocity, and a velocity for a time is a length.
