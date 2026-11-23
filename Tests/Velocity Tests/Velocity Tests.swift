import Testing
import Velocity

enum `Velocity Tests` {}

extension `Velocity Tests` {
    @Suite struct `Velocity is a kind of quantity in metres per second` {
        @Test func `Its dimension is length: 1, time: -1`() {
            #expect(Velocity.dimension == Quantity.Dimension(length: 1, time: -1))
        }

        @Test func `An amount given in metres per second keeps its scalar`() {
            #expect(Velocity.amount(2.5).underlying == 2.5)
        }
    }

    @Suite struct `A velocity is a length over a time` {
        @Test func `Its dimension balances`() {
            #expect(Velocity.dimension == Measure<1, Space.Physical>.dimension / Time.Duration.dimension)
        }

        @Test func `A length over a time, and back`() {
            let speed = Space.Physical.metres(6.0) / Time.Duration.seconds(2.0)
            #expect(speed == Velocity.amount(3.0))
            #expect(speed * Time.Duration.seconds(2.0) == Space.Physical.metres(6.0))
        }
    }
}
