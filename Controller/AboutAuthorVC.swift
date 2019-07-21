//
//  AboutAuthorVC.swift
//  HitMe
//
//  Created by macosx on 7/20/19.
//  Copyright © 2019 macosx. All rights reserved.
//

import UIKit

class AboutAuthorVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction private func throwMeOnFirstPage() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xfirstpagex") as! ViewController
        navigationController?.pushViewController(vc, animated: true)
    }

}
