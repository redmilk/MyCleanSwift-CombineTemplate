//
//  ___FILEHEADER___
//

import Combine
import Foundation

final class ___VARIABLE_productName:identifier___Presenter: PresenterType {

    let inputFromInteractor = PassthroughSubject<___VARIABLE_productName:identifier___Interactor.Response, Never>()
    let outputToViewController = PassthroughSubject<___VARIABLE_productName:identifier___ViewController.State, Never>()
    
    private let coordinator: CoordinatorType
    private var bag = Set<AnyCancellable>()
    
    init(coordinator: CoordinatorType) {
        self.coordinator = coordinator
        bindInputOutput()
    }
    deinit {
        Logger.log(String(describing: self), type: .deinited)
    }
}

// MARK: Internal

private extension ___VARIABLE_productName:identifier___Presenter {
    
    func bindInputOutput() {
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
