//
//  ___FILEHEADER___
//

import UIKit
import Combine

// MARK: - view controller State and Actions types

extension ___VARIABLE_productName:identifier___ViewController {
    enum State {
        case dummy
    }
    enum Action {
        case dummy
    }
}

// MARK: - ___VARIABLE_productName:identifier___ViewController

final class ___VARIABLE_productName:identifier___ViewController: UIViewController, ViewControllerType {
    
    // MARK: - View Input-Output implementation
    
    let inputFromPresenter = PassthroughSubject<State, Never>()
    let outputToInteractor = PassthroughSubject<Action, Never>()

    private var bag: Set<AnyCancellable>!
    
    init() {
        super.init(nibName: String(describing: ___VARIABLE_productName:identifier___ViewController.self), bundle: nil)
        /**
         CONNECT FILE'S OWNER TO SUPERVIEW IN XIB FILE
         CONNECT FILE'S OWNER TO SUPERVIEW IN XIB FILE
         CONNECT FILE'S OWNER TO SUPERVIEW IN XIB FILE
         */
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        subscribePresenterOutput()
        dispatchActionsForInteractor()
    }
    
    func storeSubscriptions(_ bag: inout Set<AnyCancellable>) {
        self.bag = bag
    }
}

// MARK: - Internal

private extension ___VARIABLE_productName:identifier___ViewController {
    
    /// VC OUTPUT
    func dispatchActionsForInteractor() {
        /// Sending actions to Interactor
    }
    
    /// VC INPUT
    func subscribePresenterOutput() {
        /// Recieve Presenter's output
    }
}
