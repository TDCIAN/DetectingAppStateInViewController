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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController - viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController - viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController - viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController - viewDidDisappear")
    }
}

