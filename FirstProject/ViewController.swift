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
//        navigationController?.pushViewController(calculator, animated: true)
                self.present(calculator, animated: true, completion: nil)
    }
    
    private func createNewVC() -> SecondViewController {
        let uiStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newVC = uiStoryboard.instantiateViewController(withIdentifier: "SecondViewController")
        return newVC as! SecondViewController
    }
    
    lazy var newVC: SecondViewController = createNewVC()

    @IBAction func goToSecondVc() {
        self.present(newVC, animated: true, completion: nil)
    }
    
}

