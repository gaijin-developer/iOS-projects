//
//  ViewController.swift
//  calculator
//
//  Created by Frank Entsie on 2024/02/10.
//

import UIKit

class ViewController: UIViewController {
    let mainStack = UIStackView()
    
 
    @IBOutlet weak var plusButton: UIButton!

    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var deciButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
//    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var fivebutton: UIButton!
//    @IBOutlet weak var fourbutton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var percentageButton: UIButton!
    @IBOutlet weak var posNegButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    
   lazy var allButtons:[UIButton] = [zeroButton,deciButton,equalButton,fourButton,plusButton,threeButton,twoButton,oneButton,minusButton,sixButton,fivebutton,multiplyButton,nineButton,eightButton,sevenButton,percentageButton,posNegButton,clearButton,divideButton]
    let resultLabel = UILabel()
    let resultLabel2 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainStack.axis = .vertical
        self.view.addSubview(mainStack)
        self.mainStack.addSubview(resultLabel)
        self.mainStack.addSubview(resultLabel2)
        
   initButtons(allButtons)
    }

    func initButtons(_ buttons: [UIButton]){
        
        buttons.forEach { butt in
            butt.layer.cornerRadius = butt.frame.height/2
            print(butt.frame.height)
        }
//        clearButton.layer.cornerRadius = clearButton.frame.height/2
//        print(clearButton.frame.height)
    }

}

