//
//  ViewController.swift
//  2doGrado
//
//  Created by user196529 on 9/2/21.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var EnterA: UITextField!
    @IBOutlet weak var EnterB: UITextField!
    @IBOutlet weak var EnterC: UITextField!
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var solX1: UITextField!
    @IBOutlet weak var solX2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func SolveItAction(sender: AnyObject) {

        
        solX1.text = ""
                solX2.text = ""
                if let a = EnterA.text{
                    if !a.isEmpty {
                        if let b = EnterB.text {
                            if !b.isEmpty {
                                if let c = EnterC.text {
                                    if !c.isEmpty{
                                        let solution = EquationMath.calculate(eq: Equation(a:Float16(a)!, b:Float16(b)!, c:Float16(c)!, X1:Float16(0), X2:Float16(0)),
                                        solX1.text = String(solution.X1),
                                        solX2.text = String(solution.X2),
                                    }
                                }
                            }
                        }
                    }
                }


     }


}

