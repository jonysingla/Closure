//
//  ViewController.swift
//  ClosureDemo
//
//  Created by PanshulK on 16/06/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let names = ["Jony","Ankur","Vikrant","Vipin","Deepak"]
        
        // 1 The Sorted Method
        var  sortedArray = names.sorted(by:sortArray)
        print("Sorted array = \(sortedArray)")
        
        // 2 Closure Expression Syntax
        var reverseName = names.sorted(by: {(s1: String, s2: String) -> Bool in
            return s1 > s2
        })
        print("Reverse array = \(reverseName)")
        
        // Inferring Type From Context
        var reverseOrder = names.sorted(by: {s1, s2 in return s1>s2})
        print("Reverse order array = \(reverseOrder)")
        
        // Implicit Returns from Single-Expression Closures
        var reverseOrder1 = names.sorted(by: {s1, s2 in s1>s2})
        print("Reverse one order array = \(reverseOrder1)")
        
        // Shorthand Argument Names
        var reverseOrder2 = names.sorted(by: {$0 > $1})
        print("Reverse Two order array = \(reverseOrder2)")
        
        // Operator methods
        var reverseOrder3 = names.sorted(by: >)
        print("Reverse Three order array = \(reverseOrder3)")
        
        // autoclosure value
//        print("Value of autoclosure is = \(autoClosure(pred: {2>1}))")
        print("Value of autoclosure is = \(autoClosure(pred: 2>1))")
        
    }
    
    

    // 1 The Sorted Method
    func sortArray(_ s1: String, _ s2: String) -> Bool {
        return s2 > s1
    }
    
    // autoclosure
    func autoClosure(pred: @autoclosure ()-> Bool) {
        if pred() {
            print("It is true")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

