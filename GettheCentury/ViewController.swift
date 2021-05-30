//
//  ViewController.swift
//  GettheCentury
//
//  Created by Daniel Washington Ignacio on 30/05/21.
//

/*
 Create a function that takes in a year and returns the correct century.

 Examples

 century(1756) ➞ "18th century"

 century(1555) ➞ "16th century"

 century(1000) ➞ "10th century"

 century(1001) ➞ "11th century"

 century(2005) ➞ "21st century"
 Notes

 All years will be between 1000 and 2010.
 The 11th century is between 1001 and 1100.
 The 18th century is between 1701-1800.
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.century(1756))
        print(self.century(1555))
        print(self.century(1000))
        print(self.century(1001))
        print(self.century(2005))
        
    }
    func century(_ year: Int) -> String {
        var newYear: Float = Float(year)
        newYear = newYear/100
        let (wholePart, fractionalPart) = modf(newYear)
        if fractionalPart != 0.0 {
            newYear = newYear + 1
        }
        return "\(Int(newYear))th century"
    }


}

