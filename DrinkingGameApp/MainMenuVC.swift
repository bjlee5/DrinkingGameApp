//
//  MainMenuVC.swift
//  DrinkingGameApp
//
//  Created by MacBook Air on 11/14/16.
//  Copyright © 2016 Lee's. All rights reserved.
//

import UIKit

class MainMenuVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var categories = [Openers]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let p1 = Openers(categoryMain: "New", subCategory: ["Presidential Debate", "Monday Night Football", "The Walking Dead", "Survivor"])
        let p2 = Openers(categoryMain: "Sports", subCategory: ["NFL", "MLB", "NBA", "NHL", "Soccer", "Olympics"])
        let p3 = Openers(categoryMain: "Movies", subCategory: ["Harry Potter", "Hunger Games", "Star Wars",])
        let p4 = Openers(categoryMain: "TV", subCategory: ["The Bachelor", "Survivor", "The Voice", "American Idol"])
        
        categories.append(p1)
        categories.append(p2)
        categories.append(p3)
        categories.append(p4)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categories.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MainMenuCell {
            
            let opener = categories[indexPath.row]
            cell.updateUI(openers: opener)
            
            return cell
            
        } else {
            
            return UITableViewCell()
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let opener = categories[indexPath.row]
        
        performSegue(withIdentifier: "NewMenuVC", sender: opener)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? NewMenuVC {
            if let ops = sender as? Openers {
                destination.opener = ops
            }
        }
    }
    
    @IBAction func signOutPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
