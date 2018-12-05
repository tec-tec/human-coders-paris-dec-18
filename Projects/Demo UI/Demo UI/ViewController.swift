//
//  ViewController.swift
//  Demo UI
//
//  Created by Ludovic Ollagnier on 05/12/2018.
//  Copyright © 2018 Human Coders. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabe: UILabel!
    @IBOutlet weak var sayHelloButton: UIButton!
    @IBOutlet weak var activationSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        activationSwitch.onTintColor = UIColor.red
    }

    @IBAction func sayHello(_ sender: UIButton) {

        let name = nameTextField.text
        nameLabe.text = "Hello \(name!)"
    }

    @IBAction func switchValueChanged(_ sender: UISwitch) {

        let isOn = sender.isOn
        sayHelloButton.isEnabled = isOn
    }

}

