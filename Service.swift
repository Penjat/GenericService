import Combine

public protocol Service {
    associatedtype Configuration
    associatedtype Intent
    associatedtype Event
    associatedtype State

    var input: PassthroughSubject<Intent, Never> { get }
    var events: PassthroughSubject<Event, Never> { get }
    var state: CurrentValueSubject<State, Never> { get }
    var configuration: CurrentValueSubject<Configuration, Never> { get }
}
