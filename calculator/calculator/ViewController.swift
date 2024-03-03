//
//  ViewController.swift
//  calculator
//
//  Created by Frank Entsie on 2024/02/10.
//

import UIKit

class ViewController: UIViewController {
    let mainStack = UIStackView()
    
    let resultLabel = UILabel()
    let resultLabel2 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainStack.axis = .vertical
        self.view.addSubview(mainStack)
        self.mainStack.addSubview(resultLabel)
        self.mainStack.addSubview(resultLabel2)
        resultLabel.text = "Hello World"
    }


}

