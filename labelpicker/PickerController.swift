//
//  PickerController.swift
//  labelpicker
//
//  Created by Caius Durling on 28/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import UIKit

class PickerController: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(row)
    }

}
