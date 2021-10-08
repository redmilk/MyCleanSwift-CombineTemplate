//
//  ___HEADERFILE___
//

import Foundation
import Combine

struct ___VARIABLE_productName:identifier___Interactor: InteractorType {
    
    enum Response {
        case dummy
    }
    
    let inputFromController = PassthroughSubject<___VARIABLE_productName:identifier___ViewController.Action, Never>()
    let outputToPresenter = PassthroughSubject<Response, Never>()
    
    private var bag = Set<AnyCancellable>()
    
    init() {
        bindInputOutput()
    }
}

// MARK: Internal

private extension ___VARIABLE_productName:identifier___Interactor {
    mutating func bindInputOutput() {
        inputFromController.map { [self] action in
            switch action {
            case .dummy: return Response.dummy
            }
        }
        .subscribe(outputToPresenter)
        .store(in: &bag)
    }
}
