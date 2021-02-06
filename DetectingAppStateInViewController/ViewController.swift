//
//  ViewController.swift
//  DetectingAppStateInViewController
//
//  Created by APPLE on 2021/02/06.
//

import UIKit

class ViewController: UIViewController {
    
    private var observer: NSObjectProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        print("ViewController - viewDidLoad")
        
        observer = NotificationCenter.default.addObserver(forName: UIApplication.willEnterForegroundNotification,
                                                          object: nil,
                                                          queue: .main) {
                                                          [unowned self] notification in
            print("ViewController - willEnterForegroundNotification")
            view.backgroundColor = .systemGreen
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(observer)
    }
}

