//
//  ViewController.swift
//  RandomFacts
//
//  Created by Sebastian Crossa on 1/7/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    @IBOutlet var randomFacts: UILabel!
    @IBOutlet var factsRead: UILabel!
    
    @IBOutlet weak var refresh: UIButton!
    
    // In scope variables
    var factsReadCounter = 0
    
    let factProvider = FactProvider()
    let colorManager = ColorManager()
    
    // Main stuff
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomFacts.text = factProvider.facts[0]
        factsRead.text = String(factsReadCounter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // Actions
    @IBAction func newFacts(_ sender: Any){
        let hexColor = factProvider.randomColor()
        let refreshedColor = colorManager.UIColorFromHex(rgbValue: UInt32(String(hexColor.characters.dropFirst(2)), radix: 16)!)
        
        view.backgroundColor = refreshedColor
        refresh.setTitleColor(refreshedColor, for: .normal)
        
        randomFacts.text = factProvider.randomFact()
        
        factsReadCounter += 1
        factsRead.text = String(factsReadCounter)
    }

    // Extras
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
}

