//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // TODO: Setup the IBOutlets
    
    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var firstSegControlColor: UISegmentedControl!
    @IBOutlet weak var secondSegControlColor: UISegmentedControl!
    
    override func viewDidLoad() {
        paintBucket.backgroundColor = UIColor.red
        super.viewDidLoad()
    }

    func mixColors(first: String, second: String) -> UIColor {
        
        switch (first, second) {
        case ("Red", "Red"):
            return UIColor.red
        case ("Red", "Yellow"), ("Yellow", "Red"):
            return UIColor.orange
        case ("Red", "Blue"), ("Blue", "Red"):
            return UIColor.purple
        case ("Yellow", "Yellow"):
            return UIColor.yellow
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            return UIColor.green
        case ("Blue", "Blue"):
            return UIColor.blue
        default:
            return UIColor.white
        }
        
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        let firstSelection = firstSegControlColor.selectedSegmentIndex
        let secondSelection = secondSegControlColor.selectedSegmentIndex
        
        paintBucket.backgroundColor =
            mixColors(first: sender.titleForSegment(at: firstSelection)!, second: sender.titleForSegment(at: secondSelection)!)
        
        //If using a switch statement
        /*
        switch (firstSelection, firstSelection) {
        case (0,0):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
            break
        case (0,1):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
            break
        case (0,2):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Blue")
            break
        case (1,0):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Red")
            break
        .
        .
        .
        .
        .
        default:
            break
        }
        */
    
    }
        // TODO: Implement this function according to the instructions.
        
}
    


