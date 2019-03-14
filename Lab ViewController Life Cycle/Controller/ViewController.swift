//
//  ViewController.swift
//  Lab ViewController Life Cycle
//
//  Created by Ivan Nikitin on 13/03/2019.
//  Copyright © 2019 Ivan Nikitin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - ...@IBOutlets
    @IBOutlet weak var textView: UITextView!
    
    //MARK: - ...Properties
    static var textMessage = ""
    override var prefersStatusBarHidden: Bool {
        return true
    }

    //MARK: - ...ViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        addNewMessage()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addNewMessage()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addNewMessage()
        ViewController.textMessage.append("""


                                            """)
        switch title {
        case "Gray" :
            tabBarController?.tabBar.tintColor = .gray
        case "Blue":
            tabBarController?.tabBar.tintColor = .blue
        case "Orange":
            tabBarController?.tabBar.tintColor = .orange
        default:
            tabBarController?.tabBar.tintColor = .clear
        }
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addNewMessage()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addNewMessage()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        addNewMessage()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        addNewMessage()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        addNewMessage()
    }
    
    //MARK: - ...Methods
    private func addNewMessage(function: String = #function) {
        let newLineOfMessage = """
        
        \(title ?? ""): \(function)
        """
        ViewController.textMessage.append(newLineOfMessage)
        textView?.text = ViewController.textMessage
        textView?.scrollRangeToVisible(NSMakeRange(textView.text.count, 1))
        
    }
}

