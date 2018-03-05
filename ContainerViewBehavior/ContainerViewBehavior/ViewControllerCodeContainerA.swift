//
//  ViewControllerCodeContainerA.swift
//  ContainerViewBehavior
//
//  Created by Sho Ito on 2018/03/05.
//  Copyright © 2018年 aryzae. All rights reserved.
//

import UIKit

class ViewControllerCodeContainerA: UIViewController {

    static func initiate() -> ViewControllerCodeContainerA {
        let storyboard = UIStoryboard.init(name: "ViewControllerCode", bundle: .main)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewControllerCodeContainerA") as! ViewControllerCodeContainerA
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("\(type(of: self)) : \(#function)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(type(of: self)) : \(#function)")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(type(of: self)) : \(#function)")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(type(of: self)) : \(#function)")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(type(of: self)) : \(#function)")
    }

    public func removeContent() {
        willMove(toParentViewController: nil)
        view.removeFromSuperview()
        removeFromParentViewController()
    }

}
