//
//  ViewController.swift
//  Signup
//
//  Created by 신한섭 on 2020/03/23.
//  Copyright © 2020 신한섭. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var IDTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet var labels: [UILabel]!
    
    private let idTextFieldDelegate = IDTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setDelegate()
    }
    
    private func setUI() {
        IDTextField.setBorder(color: UIColor(named: "Gray") ?? .gray, width: 1)
        passwordTextField.setBorder(color: UIColor(named: "Gray") ?? .gray, width: 1)
        passwordConfirmTextField.setBorder(color: UIColor(named: "Gray") ?? .gray, width: 1)
        nameTextField.setBorder(color: UIColor(named: "Gray") ?? .gray, width: 1)
        nextButton.setBorder(color: UIColor(named: "Gray") ?? .gray, width: 1)
        labels.forEach{
            $0.alpha = 0
        }
    }
    
    private func setDelegate() {
        IDTextField.delegate = idTextFieldDelegate
    }
}

