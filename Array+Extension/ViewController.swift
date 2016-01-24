//
//  ViewController.swift
//  Array+Extension
//
//  Created by Nikos Maounis on 24/1/16.
//  Copyright © 2016 Nikos Maounis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var arrayLabel: UILabel!
    @IBOutlet weak var shuffleBtn: UIBarButtonItem!
    @IBOutlet weak var removeFrBtn: UIBarButtonItem!
    @IBOutlet weak var sampleBtn: UIBarButtonItem!
    @IBOutlet weak var removeFRGRBtn: UIBarButtonItem!
    
    
    var demoArray = ["Greece", "France", "Germany", "Italy", "Portugal", "Spain", "United Kingdom", "Netherlands"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayLabel.text = demoArray.joinWithSeparator(", ")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shuffleTapped(sender: AnyObject) {
        demoArray.shuffle()
        arrayLabel.text = demoArray.joinWithSeparator(", ")
        resetArray()
    }

    @IBAction func sampleTapped(sender: AnyObject) {
        arrayLabel.text = demoArray.sample()
    }
    
    @IBAction func removeFRTapped(sender: AnyObject) {
        demoArray.removeObject("France")
        arrayLabel.text = demoArray.joinWithSeparator(", ")
        resetArray()
    }
    
    @IBAction func removeGRFRTapped(sender: AnyObject) {
        demoArray.removeObjects(["France", "Greece"])
        arrayLabel.text = demoArray.joinWithSeparator(", ")
        resetArray()
    }
    
    func resetArray() {
        demoArray = ["Greece", "France", "Germany", "Italy", "Portugal", "Spain", "United Kingdom", "Netherlands"];
    }
}

