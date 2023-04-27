//
//  ViewController.swift
//  OpaqueGeneric
//
//  Created by Victor Socaciu on 20/04/2023.
//

import UIKit
import MyLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

public final class Adapter {
    func adapt() -> some Model {
        B()
    }
}
