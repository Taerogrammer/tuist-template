import Combine

// TODO: UseCase에 맞게 파라미터 및 반환 타입 수정
public protocol OIIORepository {
    func fetchItems() -> AnyPublisher<Void, Error>
}
