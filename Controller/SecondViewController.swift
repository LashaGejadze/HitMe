//
//  SecondViewController.swift
//  HitMe
//
//  Created by macosx on 7/20/19.
//  Copyright © 2019 macosx. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closeAction() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xfirstpagex") as! ViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func authorPage() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xauthorpagex") as! AboutAuthorVC
        navigationController?.pushViewController(vc, animated: true)
    }
}
