//
//  MembersTableViewController.swift
//  Asso Manager
//
//  Created by Ludovic Ollagnier on 06/12/2018.
//  Copyright © 2018 Human Coders. All rights reserved.
//

import UIKit

class MembersTableViewController: UITableViewController {

    let association = Association(name: "Pout", legalID: "1234567899", address: "On s'en fiche", cotisationCost: 10, cotisationDuration: 31_536_000)

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstMember = Member(fName: "Ludovic", lName: "Ollagnier", gender: .male, birthDate: Date(), avatarURL: nil, function: "iOS Trainer", groups: [], cotisation: [], phoneNumber: "1234567890", mail: nil)
        
        association.addMember(firstMember)

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return association.listMembers().count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let identifier: String

//        if indexPath.row % 2 == 0 {
//            identifier = "toto"
//        } else {
            identifier = "memberCell"
//        }

        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)

        // Configure the cell...

        let memberArray = association.listMembers()
        let member = memberArray[indexPath.row]

        cell.textLabel?.text = member.fullName
        cell.detailTextLabel?.text = member.function

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
