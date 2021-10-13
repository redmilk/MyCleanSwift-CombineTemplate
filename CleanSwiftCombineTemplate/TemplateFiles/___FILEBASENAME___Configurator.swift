//
//  ___HEADERFILE___
//

import Foundation
import UIKit.UIViewController

final class ___VARIABLE_productName:identifier___Configurator: ModuleLayersBinderType {
    let interactor: ___VARIABLE_productName:identifier___Interactor
    let presenter: ___VARIABLE_productName:identifier___Presenter
    let controller: ___VARIABLE_productName:identifier___ViewController
    
    init(controller: ___VARIABLE_productName:identifier___ViewController, interactor: ___VARIABLE_productName:identifier___Interactor, presenter: ___VARIABLE_productName:identifier___Presenter) {
        self.controller = controller
        self.interactor = interactor
        self.presenter = presenter
    }
    deinit {
        Logger.log(String(describing: self), type: .deinited)
    }
}
