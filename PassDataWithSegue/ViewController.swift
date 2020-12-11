//
//  ViewController.swift
//  PassDataWithSegue
//
//  Created by David Svensson on 2020-12-11.
//

import UIKit

class ViewController: UIViewController {

    let segueToView2 = "segueToView2"
    
    @IBOutlet weak var textBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueToView2, sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueToView2 {
            let destinationVC = segue.destination as! DiplayResultViewController
            destinationVC.receivingName = textBox.text
        }
    }
    
    @IBAction func unwindToStartView(segue: UIStoryboardSegue)
    {}
    

}

