//
//  ViewController.swift
//  UI segues
//
//  Created by Ludovic Ollagnier on 06/12/2018.
//  Copyright © 2018 Human Coders. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "goGreen" {
            segue.destination.title = textField.text
        }
    }

}

