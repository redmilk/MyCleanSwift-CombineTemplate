//
//  ___FILEHEADER___
//

import Combine
import Foundation

struct ___VARIABLE_productName:identifier___Presenter: PresenterType {

    let inputFromInteractor = PassthroughSubject<___VARIABLE_productName:identifier___Interactor.Response, Never>()
    let outputToViewController = PassthroughSubject<___VARIABLE_productName:identifier___ViewController.State, Never>()
    
    private let coordinator: CoordinatorType
    private var bag = Set<AnyCancellable>()
    
    init(coordinator: CoordinatorType) {
        self.coordinator = coordinator
        bindInputOutput()
    }
}

// MARK: Internal

private extension ___VARIABLE_productName:identifier___Presenter {
    
    mutating func bindInputOutput() {
        inputFromInteractor
            .map { interactorResponse in
                switch interactorResponse {
                case .dummy: return ___VARIABLE_productName:identifier___ViewController.State.dummy
                }
            }
            .subscribe(outputToViewController)
            .store(in: &bag)
    }
}
