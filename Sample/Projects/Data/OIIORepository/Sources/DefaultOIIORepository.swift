import Combine

// TODO: Repository Interface 구현
public final class DefaultOIIORepository: OIIORepository {
    public init() {}
    
    public func fetchItems() -> AnyPublisher<Void, Error> {
        // TODO: Implement actual data fetching
        return Empty().eraseToAnyPublisher()
    }
}
