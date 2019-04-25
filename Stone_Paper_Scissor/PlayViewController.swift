//
//  PlayViewController.swift
//  Stone_Paper_Scissor
//
//  Created by Sivan.Payyadakath on 2019/04/24.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    var cnumber: Int?
    var unumber: Int?
    
    @IBOutlet var resultView: UIImageView!
    @IBOutlet var resultText: UITextView!
    @IBOutlet var uImage: UIImageView!
    @IBOutlet var cImage: UIImageView!
    @IBOutlet var playAgain: UIButton!
    
    enum Rcase: Int { case rock = 1, paper, scissors}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        switch (unumber, cnumber) {
        case let (unumber, cnumber) where unumber == cnumber:
            print("It's a Tie")
            resultView.image = UIImage(named: "It's A Tie")
            resultText.font = .systemFont(ofSize: 50)
            uImage.image = UIImage(named: "\(Rcase(rawValue: unumber!)!)")
            cImage.image = UIImage(named: "\(Rcase(rawValue: cnumber!)!)")
        case (1,3), (2, 1), (3,2):
            print("WIN")
            resultView.image = UIImage(named: "win")
            cImage.image = UIImage(named: "\(Rcase(rawValue: cnumber!)!)")
            uImage.image = UIImage(named: "\(Rcase(rawValue: unumber!)!)")
            resultText.text = "You WIN"
            resultText.font = .systemFont(ofSize: 50)
        default:
            print("LOSE")
            resultView.image = UIImage(named: "lose")
            resultText.text = "You LOSE"
            resultText.font = .systemFont(ofSize: 50)
            cImage.image = UIImage(named: "\(Rcase(rawValue: cnumber!)!)")
            uImage.image = UIImage(named: "\(Rcase(rawValue: unumber!)!)")
        }
    }
    
    @IBAction func goBack(){
        self.dismiss(animated: true, completion: nil)
    }

}
