//
//  ViewController.swift
//  Stone_Paper_Scissor
//
//  Created by Sivan.Payyadakath on 2019/04/24.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var stone: UIButton!
    @IBOutlet var paper: UIButton!
    @IBOutlet var scissor: UIButton!
    
    var unumber: Int!
    
    enum ButtonType: Int { case stone = 1, paper, scissor}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func ComputerRandomValue() -> Int{
        let cnumber = Int.random(in: 1...3)
        return cnumber
    }
    
    @IBAction func playnow(sender:UIButton){
        switch(ButtonType(rawValue: sender.tag)!){
        case .stone:
            performSegue(withIdentifier: "stoneChoice", sender: sender)
        case .paper:
            performSegue(withIdentifier: "paperChoice", sender: sender)
        case .scissor:
            performSegue(withIdentifier: "scissorChoice", sender: sender)
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! PlayViewController
        
        switch segue.identifier {
        case "stoneChoice":
            controller.cnumber = ComputerRandomValue()
            controller.unumber = 1
        case "paperChoice":
            controller.cnumber = ComputerRandomValue()
            controller.unumber = 2
        case "scissorChoice":
            controller.cnumber = ComputerRandomValue()
            controller.unumber = 3
        default:
            controller.cnumber = ComputerRandomValue()
            controller.unumber = 10
        }
            }
}

