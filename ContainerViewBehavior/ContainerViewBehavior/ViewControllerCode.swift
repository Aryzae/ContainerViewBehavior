//
//  ViewControllerCode.swift
//  ContainerViewBehavior
//
//  Created by Sho Ito on 2018/03/05.
//  Copyright © 2018年 aryzae. All rights reserved.
//

import UIKit

class ViewControllerCode: UIViewController {

    @IBOutlet weak var containerView: UIView!
    var containerA: ViewControllerCodeContainerA = ViewControllerCodeContainerA.initiate()
    var containerB: ViewControllerCodeContainerB = ViewControllerCodeContainerB.initiate()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func closeSelf(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }

    @IBAction func changeContent(_ sender: UIBarButtonItem) {
        didMove(toParentViewController: self)
    }

    override func didMove(toParentViewController parent: UIViewController?) {
        if childViewControllers.contains(containerA) {
            containerA.removeContent()
            addContainerB()
        } else {
            containerB.removeContent()
            addContainerA()
        }
    }

    func addContainerA() {
        addChildViewController(containerA)
        containerView.addSubview(containerA.view)
        containerA.didMove(toParentViewController: self)
    }

    func addContainerB() {
        addChildViewController(containerB)
        containerView.addSubview(containerB.view)
        containerB.didMove(toParentViewController: self)
    }

}
