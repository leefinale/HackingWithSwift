//
//  ViewController.swift
//  Project6b
//
//  Created by Elex Lee on 9/3/15.
//  Copyright (c) 2015 Elex Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let label1 = UILabel()
        label1.setTranslatesAutoresizingMaskIntoConstraints(false)
        label1.backgroundColor = UIColor.redColor()
        label1.text = "THESE"
        label1.textAlignment = .Center
        
        let label2 = UILabel()
        label2.setTranslatesAutoresizingMaskIntoConstraints(false)
        label2.backgroundColor = UIColor.cyanColor()
        label2.text = "ARE"
        label2.textAlignment = .Center
        
        let label3 = UILabel()
        label3.setTranslatesAutoresizingMaskIntoConstraints(false)
        label3.backgroundColor = UIColor.yellowColor()
        label3.text = "SOME"
        label3.textAlignment = .Center
        
        let label4 = UILabel()
        label4.setTranslatesAutoresizingMaskIntoConstraints(false)
        label4.backgroundColor = UIColor.greenColor()
        label4.text = "AWESOME"
        label4.textAlignment = .Center
        
        let label5 = UILabel()
        label5.setTranslatesAutoresizingMaskIntoConstraints(false)
        label5.backgroundColor = UIColor.orangeColor()
        label5.text = "LABELS"
        label5.textAlignment = .Center
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
        
        for label in viewsDictionary.keys {
            view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[\(label)]|", options: .allZeros, metrics: nil, views: viewsDictionary))
        }
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]->=10-|", options: .allZeros, metrics: ["labelHeight": 88], views: viewsDictionary))
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

