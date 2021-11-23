//
//  ViewController.swift
//  FirstProject
//
//  Created by Михаил Рубан on 23.11.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculator() {
        let storyboard = UIStoryboard(name: "Main", bundle: nibBundle)
        let calculator = storyboard.instantiateViewController(withIdentifier: "CalculatorViewController")
        self.present(calculator, animated: true, completion: nil)
    }
    
}

