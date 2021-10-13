//
//  ___HEADERFILE___
//

import Foundation
import Combine

final class ___VARIABLE_productName:identifier___Interactor: InteractorType {
    
    enum Response {
        case dummy
    }
    
    let inputFromController = PassthroughSubject<___VARIABLE_productName:identifier___ViewController.Action, Never>()
    let outputToPresenter = PassthroughSubject<Response, Never>()
    
    private var bag = Set<AnyCancellable>()
    
    init() {
        handleInput()
    }
    deinit {
        Logger.log(String(describing: self), type: .deinited)
    }
}

// MARK: Internal

private extension ___VARIABLE_productName:identifier___Interactor {
    func handleInput() {
        inputFromController.sink { [self] action in
            switch action {
            case .dummy: break
            }
        }
        .store(in: &bag)
    }

    func outputToPresenter(_ response: Response) {
        
    }
}
