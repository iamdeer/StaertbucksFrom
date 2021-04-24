//
//  ViewController.swift
//  星巴克表單
//
//  Created by DeerLin on 2021/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ccLable: UILabel!
    
    @IBOutlet weak var ccStepper: UIStepper!
    
    
    @IBOutlet weak var ggLabel: UILabel!
    
    @IBOutlet weak var ggStapper: UIStepper!
    


    @IBOutlet weak var totalScoreLable: UILabel!
    
    
    @IBOutlet weak var clearButton: UIButton!
    
    var cc:Int = 0
    var gg:Int = 0
    var totalScore:Int = 0

    func add() {
    totalScore = cc * 160 + gg * 170
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   }
 
   
    @IBAction func stepperNumberChanged(_ sender: UIStepper) {
    cc = Int(ccStepper.value)
        
    gg = Int(ggStapper.value)
        
        add()
        
        ccLable.text = "\(cc)"
        ggLabel.text = "\(gg)"
        totalScoreLable.text = "\(totalScore)"
    }
    
    @IBAction func ggStapper(_ sender: UIStepper) {
        cc = Int(ccStepper.value)
            
        gg = Int(ggStapper.value)
            
            add()
            
            ccLable.text = "\(cc)"
            ggLabel.text = "\(gg)"
            totalScoreLable.text = "\(totalScore)"
        
    }
    
    
    
    

    @IBAction func clearButtonPressed(_ sender: UIButton) {
    
        ccStepper.value = 0
        ggStapper.value = 0
                
        ccLable.text = "0"
        ggLabel.text = "0"
           
        totalScoreLable.text = "0"
    
    }
    

}

