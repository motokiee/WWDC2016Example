//
//  ViewController.swift
//  WWDC2016Examples
//
//  Created by Motoki on 2016/06/15.
//  Copyright © 2016年 MotokiNarita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default().addObserver(self, selector: #selector(ViewController.updateLabelToStart), name: StartWorkout, object: nil)
        NotificationCenter.default().addObserver(self, selector: #selector(ViewController.updateLabelToEnd), name: EndWorkout, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    deinit {
        NotificationCenter.default().removeObserver(self)
    }

    @objc private func updateLabelToStart() {
        label.text = "ワークアウト中"
    }

    @objc private func updateLabelToEnd() {
        label.text = "..."
    }

}

