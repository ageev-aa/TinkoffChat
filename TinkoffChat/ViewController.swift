//
//  ViewController.swift
//  TinkoffChat
//
//  Created by Александр on 21.02.18.
//  Copyright © 2018 TCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        print(#function)
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print (#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print (#function)
    }
    
    override func viewWillLayoutSubviews() {
        print (#function)
    }
    
    override func viewDidLayoutSubviews() {
        print (#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print (#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print (#function)
    }

}

