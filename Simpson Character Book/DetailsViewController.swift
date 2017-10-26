//
//  DetailsViewController.swift
//  Simpson Character Book
//
//  Created by Smeet Bhatt on 26/10/17.
//  Copyright © 2017 Smeet Bhatt. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var selectedSimpson = Simpson()

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedSimpson.name
        ageLabel.text = String(selectedSimpson.age)
        imageView.image = selectedSimpson.image
        
    }
}
