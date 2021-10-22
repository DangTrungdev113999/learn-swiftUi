//
//  PetsTableViewController.swift
//  learn_Swift_UI
//
//  Created by Trung Dang on 19/10/2021.
//

import UIKit

class PetsTableViewController: UITableViewController {
    var pets:[Pet] = petsData
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pets.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PetCell", for: indexPath) as! PetTableViewCell
        let eachPet = pets[indexPath.row] as Pet
        // Configure the cell...
//        cell.textLabel?.text = eachPet.name
//        cell.detailTextLabel?.text = eachPet.title
//
//        if let labelName = cell.viewWithTag(100) as? UILabel {
//            labelName.text = eachPet.name
//        }
//        if let labelTitle = cell.viewWithTag(101) as? UILabel {
//            labelTitle.text = eachPet.title
//        }
        
//        cell.labelName.text = eachPet.name
//        cell.labelTitle.text = eachPet.title
        
        cell.pet = eachPet
        return cell
    }
    
    // Unwind segues to this ViewController
    @IBAction func backToPetsViewController(segue:UIStoryboardSegue) {
        print("Press cancel")
    }
    
    @IBAction func savePetDetail(segue: UIStoryboardSegue) {
        print("Press done")
        if let addPetTableViewController = segue.source as? AddPetTableViewController {
            // add the new pet to the pets array
            if let pet = addPetTableViewController.pet {
                self.pets.append(pet)
                // update the tableView
                let indexPatch = IndexPath(row: self.pets.count - 1, section: 0)
                tableView.insertRows(at: [indexPatch], with: .automatic)
            }
        }
    }
}
