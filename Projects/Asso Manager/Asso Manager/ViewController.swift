//
//  ViewController.swift
//  Asso Manager
//
//  Created by Ludovic Ollagnier on 05/12/2018.
//  Copyright © 2018 Human Coders. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var birthDateTextField: UITextField!
    @IBOutlet weak var functionTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var avatarImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addAvatar(_ sender: Any) {
    }

    @IBAction func save(_ sender: Any) {
    }

    @IBAction func cancel(_ sender: Any) {
    }
    
    @IBAction func addCotisation(_ sender: Any) {
    }
}

