//
//  ViewController.swift
//  HitMe
//
//  Created by macosx on 7/19/19.
//  Copyright © 2019 macosx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0
    

    
    @IBOutlet weak var sliderLbl: UISlider!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var roundLbl: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let roundedValue = sliderLbl.value.rounded()
        currentValue = Int(roundedValue)
        startOver()
        
        
    }
    @IBAction func showAlert() {
        
        let difference = abs(targetValue - currentValue)
        var points = 100 - difference
        
        score += points
        
        let title: String
        if difference == 0 {
            title = "Perfect"
            points += 100
        }
        else if difference < 5 {
            title = "Not Bad!"
            if difference == 1{
                points += 50}
        }
        else if difference < 11 {
            title = "Nice"}
        else {
            title = "Not Even Close Sir!"
        }
        
        let alertMessage = "Your Score \(points) Points"
        let alert = UIAlertController(title: title, message: alertMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice", style: .default, handler: {
            action in
            self.newRoundFunc()
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    
        
    }
    
    @IBAction func showSlider(slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        
        
    }
    
    @IBAction func startOver() {
        score = 0
        round = 0
        newRoundFunc()
        
        
    }
    
    @IBAction func infoPage() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xinfopagex") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func newRoundFunc() {
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        sliderLbl.value = Float(currentValue)
        resultValue()
    
    }
    
    func resultValue() {
        resultLbl.text = String(targetValue)
        scoreLbl.text = String(score)
        roundLbl.text = String(round)
        
    }
    
}

