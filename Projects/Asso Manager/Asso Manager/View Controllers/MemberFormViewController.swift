//
//  MemberFormViewController.swift
//  Asso Manager
//
//  Created by Ludovic Ollagnier on 05/12/2018.
//  Copyright © 2018 Human Coders. All rights reserved.
//

import UIKit

class MemberFormViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

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

        downloadTemplateImage()
    }

    func downloadTemplateImage() {

        let urlString = "https://developer.apple.com/assets/elements/icons/core-ml/core-ml-256x256_2x.png"
        guard let url = URL(string: urlString) else { return }

        let defaultSession = URLSession.shared
        let dataTask = defaultSession.dataTask(with: url) { (data, response, error) in

            if let data = data, let image = UIImage(data: data) {
                //Show image
                print("YESS")

                DispatchQueue.main.async {
                    self.avatarImageView.image = image
                }
            }
        }
        dataTask.resume()
    }

    @objc func datePickerDidChange() {

        let date = datePicker.date
        birthDateTextField.text = dateFormatter.string(from: date)
    }

    @IBAction func addAvatar(_ sender: Any) {

        guard UIImagePickerController.isSourceTypeAvailable(.camera) else { return }
        guard UIImagePickerController.isCameraDeviceAvailable(.rear) else { return }

        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.cameraDevice = .rear
        imagePicker.delegate = self

        present(imagePicker, animated: true, completion: nil)
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
        tchao()
    }
    
    @IBAction func addCotisation(_ sender: Any) {
    }

    func tchao() {
        dismiss(animated: true, completion: nil)

    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        guard let original = info[.originalImage] as? UIImage else { return }
        avatarImageView.image = original
        dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}

