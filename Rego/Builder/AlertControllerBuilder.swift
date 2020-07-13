//
//  AlertControllerBuilder.swift
//  Rego
//
//  Created by Rohit Saini on 13/07/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import Foundation
import UIKit

typealias DSLActionHandler = () -> Void

protocol DSLAlertController{
    var title:String{get}
    var style:UIAlertAction.Style{get}
    var action:DSLActionHandler{get}
}

struct DefaultAction:DSLAlertController {
    var title: String
    var style: UIAlertAction.Style
    var action: DSLActionHandler
    init(_ title:String,action: @escaping DSLActionHandler = {}){
        self.title = title
        self.style = .default
        self.action = action
    }
}
struct CancelAction:DSLAlertController{
    var title: String
    var style: UIAlertAction.Style
    var action: DSLActionHandler
    init(_ title:String,action: @escaping DSLActionHandler = {}){
        self.title = title
        self.style = .cancel
        self.action = action
    }
    
}
struct DestructiveAction:DSLAlertController{
    var title: String
    var style: UIAlertAction.Style
    var action: DSLActionHandler
    init(_ title:String,action: @escaping DSLActionHandler = {}){
        self.title = title
        self.style = .destructive
        self.action = action
    }
}

@_functionBuilder
public struct DSLAlertControllerBuilder{
    static func buildBlock(_ components: DSLAlertController...) -> [UIAlertAction]{
        components.map{ action in
            UIAlertAction(title: action.title, style: action.style) {_  in
                action.action()
            }
        }
    }
}

extension UIAlertController{
    convenience init(title:String,message:String,style:UIAlertController.Style = .alert,@DSLAlertControllerBuilder content: () -> [UIAlertAction]) {
        let actions = content()
        self.init(title:title,message:message,preferredStyle:style)
        actions.forEach {self.addAction($0)}
    }
}
