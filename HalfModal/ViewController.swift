//
//  ViewController.swift
//  HalfModal
//
//  Created by Shota HAMADA on 2018/12/01.
//  Copyright © 2018 Shota HAMADA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "present",
            let navigationController = segue.destination as? UINavigationController,
            let _ = navigationController.children.first as? ChildViewController
            else { return }
        var size = self.view.bounds.size
        size.height /= 2
        navigationController.preferredContentSize = size
    }


}

