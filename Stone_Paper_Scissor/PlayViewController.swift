//
//  PlayViewController.swift
//  Stone_Paper_Scissor
//
//  Created by Sivan.Payyadakath on 2019/04/24.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    var cnumber: Int!
    var unumber: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(unumber)
        print(cnumber)
        // Do any additional setup after loading the view.
        switch (unumber, cnumber) {
        case let (unumber, cnumber) where unumber == cnumber:
            print("It's a Tie")
        case (1,3), (2, 1), (3,2):
            print("WIN")
        default:
            print("LOSE")
        }
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
