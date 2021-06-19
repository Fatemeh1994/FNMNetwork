//
//  File.swift
//  
//
//  Created by Reza Khonsari on 6/18/21.
//

import UIKit
import SwiftMessages

public final class Messages {
    private init() { }
    public static let shared = Messages()
    
    public func show(title: String, message: String, theme: Theme) {
        DispatchQueue.main.async {
            let view = MessageView.viewFromNib(layout: .cardView)
            view.configureTheme(theme)
            view.configureContent(title: title, body: message)
            view.layoutMarginAdditions = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
            view.button?.isHidden = true
            var config = SwiftMessages.Config()
            config.presentationContext = .window(windowLevel: .statusBar)
            SwiftMessages.show(config: config, view: view)            
        }
    }
    
}
