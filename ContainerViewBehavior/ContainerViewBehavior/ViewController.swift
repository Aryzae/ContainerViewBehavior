//
//  ViewController.swift
//  ContainerViewBehavior
//
//  Created by Sho Ito on 2018/03/05.
//  Copyright © 2018年 aryzae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchUpInsideCodeContainerView(_ sender: UIButton) {
        let storyboard = UIStoryboard.init(name: "ViewControllerCode", bundle: .main)
        let vc = storyboard.instantiateInitialViewController() as! UINavigationController
        present(vc, animated: true)
    }

    @IBAction func touchUpInsideStoryboardContainerView(_ sender: UIButton) {
        let storyboard = UIStoryboard.init(name: "ViewControllerStoryboard", bundle: .main)
        let vc = storyboard.instantiateInitialViewController() as! UINavigationController
        present(vc, animated: true)
    }

}

