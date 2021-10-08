//
//  ___HEADERFILE___
//

import Foundation
import UIKit.UINavigationController
import Combine

protocol ___VARIABLE_productName:identifier___CoordinatorType {
   
}

final class ___VARIABLE_productName:identifier___Coordinator: CoordinatorType, ___VARIABLE_productName:identifier___CoordinatorType {
    private let window: UIWindow
    private var navigationController: UINavigationController!
    private var configurator: ___VARIABLE_productName:identifier___Configurator!
    
    init(window: UIWindow) {
        self.window = window
    }
    deinit {
        print("Deinit Coordinator")
    }
    
    func start() {
        var bag = Set<AnyCancellable>()
        let controller = ___VARIABLE_productName:identifier___ViewController()
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        let presenter = ___VARIABLE_productName:identifier___Presenter(coordinator: self)
        configurator = ___VARIABLE_productName:identifier___Configurator(
            interactor: interactor,
            presenter: presenter,
            controller: controller
        )
        configurator?.bindModuleLayers(controller: controller, bag: &bag)

        navigationController = UINavigationController(rootViewController: controller)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    func end() {
        /// nil the configurator to avoid memory leak
        configurator = nil
        window.rootViewController = nil
    }
}
