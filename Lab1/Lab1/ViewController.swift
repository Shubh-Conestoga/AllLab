//
//  ViewController.swift
//  Lab1
//
//  Created by user193659 on 9/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var stepButton: UIButton!
    var count:Int = 0
    var step:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func decreaseCount(_ sender: Any) {
        count-=step
        setLabel(val:count)
    }
    
    @IBAction func increaseCount(_ sender: Any) {
        count+=step
        setLabel(val:count)
    }
    @IBAction func changeStep(_ sender: Any) {
        if step == 1
        {
            step = 2
            stepButton.setTitle("Step = 1",for:.normal)
        }
        else
        {
            step = 1
            stepButton.setTitle("Step = 2", for: .normal)
        }
    }
    @IBAction func resetCounter(_ sender: Any) {
        count = 0
        setLabel(val: 0)
        step=1
        stepButton.setTitle("Step = 2", for:.normal)
    }
    
    func setLabel(val:Int)
    {
        counterLabel.text = String(val)
    }
}

