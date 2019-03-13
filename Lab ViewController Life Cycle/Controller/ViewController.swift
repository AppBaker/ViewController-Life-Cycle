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
    @IBOutlet weak var monitorLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    
    //MARK: - ...Properties
    private var messageText = "" {
        didSet{
            if monitorLabel != nil {
            monitorLabel.text = messageText
            }
        }
    }
    
    
    //MARK:- ...Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addNewMessage()
    }
    
    deinit {
        addNewMessage()
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
        let methodWorked = """
        
        \(title ?? ""): \(function)
        """
        messageText = messageText + methodWorked
        
        print(methodWorked)
    }
    
}

