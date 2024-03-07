//
//  ViewController.swift
//  AL
//
//  Created by Frank Entsie on 2024/03/07.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var firstTextField: SATextField!
    
    let backgroundImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTextField.delegate = self
        // Do any additional setup after loading the view.
    setBackground()
//        firstTextField.becomeFirstResponder()
        initialSetup()
//     keyboardAppeard()
    }

    private func initialSetup(){
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
       
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification: )), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
                                       
    @objc private func hideKeyboard(){
            view.endEditing(true)
        }
    @objc private func keyboardWillShow(notification:NSNotification){
        if let keyBoardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            
            let keyboardHeight = keyBoardFrame.cgRectValue.height
            
            let bottomSpace = self.view.frame.height - (firstTextField.frame.origin.y + firstTextField.frame.height)
            
            self.view.frame.origin.y -= keyboardHeight - bottomSpace + 10
        }
   }
    @objc private func keyboardWillHide(){
        self.view.frame.origin.y = 0
   }
    deinit{
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    func setBackground(){
        
        view.addSubview(backgroundImageView)
        
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "background-wave")
        view.sendSubviewToBack(backgroundImageView)
    }
//    func keyboardAppeard(){
//        view.keyboardLayoutGuide.topAnchor.constraint(equalToSystemSpacingBelow: firstTextField.bottomAnchor, multiplier: 1.0).isActive=true
////        guard let userInfo = notification.userInfo else {return}
//    }
}

