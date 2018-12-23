//
//  ViewController.swift
//  TableviewCellAction
//
//  Created by MAC on 22/12/18.
//  Copyright © 2018 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        titleLabel.text = seasons[myIndex]
        descLabel.text = seasonDesc[myIndex]
        myImageView.image = UIImage(named: seasons[myIndex] + ".jpg")
        setBackgroundColor(season: seasons[myIndex])
    }

    func setBackgroundColor(season:String) {
        
        switch season {
        case "Spring":
            self.view.backgroundColor = UIColor.green
        case "Summer":
            self.view.backgroundColor = UIColor.yellow
        case "Autumn":
            self.view.backgroundColor = UIColor.brown
        case "Winter":
            self.view.backgroundColor = UIColor.white
        default:
            self.view.backgroundColor = UIColor.white
        }
        
    }

}

