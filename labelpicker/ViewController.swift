//
//  ViewController.swift
//  labelpicker
//
//  Created by Caius Durling on 28/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: DaLabel!
    var pickerView: UIPickerView!
    let pickerController = PickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let pickerView = UIPickerView()
        pickerView.delegate = pickerController
        pickerView.dataSource = pickerController
        label.inputView = pickerView
        NSLog("label has view %@", label.inputView!)
    }

}
