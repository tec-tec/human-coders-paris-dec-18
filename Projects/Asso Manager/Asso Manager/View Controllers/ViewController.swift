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

    var datePicker = UIDatePicker()
    let dateFormatter = DateFormatter()

    var association: Association?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        datePicker.datePickerMode = .date
        datePicker.maximumDate = Date()
        birthDateTextField.inputView = datePicker

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none

        // Add action in code
        datePicker.addTarget(self, action: #selector(datePickerDidChange), for: .valueChanged)
    }

    @objc func datePickerDidChange() {

        let date = datePicker.date
        birthDateTextField.text = dateFormatter.string(from: date)
    }

    @IBAction func addAvatar(_ sender: Any) {
    }

    @IBAction func save(_ sender: Any) {

        let indexGender = genderSegmentedControl.selectedSegmentIndex

        guard let gender = Gender(rawValue: indexGender) else { return }
        guard let firstName = firstNameTextField.text else { return }
        guard let lastName = lastNameTextField.text else { return }
        guard let function = functionTextField.text else { return }
        guard let phone = phoneTextField.text else { return }

        let newMember = Member(fName: firstName, lName: lastName, gender: gender, birthDate: Date(), avatarURL: nil, function: function, groups: [], cotisation: [], phoneNumber: phone, mail: mailTextField.text)
        association?.addMember(newMember)

        tchao()
    }

    @IBAction func cancel(_ sender: Any) {
    }
    
    @IBAction func addCotisation(_ sender: Any) {
    }

    func tchao() {
        dismiss(animated: true, completion: nil)

    }
}

