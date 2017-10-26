//
//  ViewController.swift
//  Simpson Character Book
//
//  Created by Smeet Bhatt on 26/10/17.
//  Copyright © 2017 Smeet Bhatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var mySimpson = [Simpson]()
    var choosenSimpson = Simpson()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create our places.
        let colosseum = Simpson()
        colosseum.name = "Colosseum"
        colosseum.image = #imageLiteral(resourceName: "colosseum")
        colosseum.age = 1234
        
        let tajmahal = Simpson()
        tajmahal.name = "Taj Mahal"
        tajmahal.image = #imageLiteral(resourceName: "tajmahal")
        tajmahal.age = 1234
        
        let greatwallofchina = Simpson()
        greatwallofchina.name = "Great Wall of China"
        greatwallofchina.image = #imageLiteral(resourceName: "greatwallofchina")
        greatwallofchina.age = 1234
        
        
        mySimpson.append(colosseum)
        mySimpson.append(tajmahal)
        mySimpson.append(greatwallofchina)
        
        
        //tableview setup
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpson[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.choosenSimpson = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "selectedItem", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selectedItem" {
            let dest = segue.destination as! DetailsViewController
            dest.selectedSimpson = self.choosenSimpson
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

