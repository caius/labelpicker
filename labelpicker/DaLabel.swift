//
//  DaLabel.swift
//  labelpicker
//
//  Created by Caius Durling on 28/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import UIKit

class DaLabel: UILabel {

    override var isUserInteractionEnabled: Bool {
        get {
          return true
        }
        set {
          /* noop */
        }
    }

    override var canBecomeFirstResponder: Bool {
      get {
        return true
      }
      set {
        /* noop */
      }
    }

    private var _inputView: UIView?
    override var inputView: UIView? {
        get {
            NSLog("Fetching input view %@", _inputView!)
            return _inputView
        }
        set {
            _inputView = newValue
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)

        NSLog("DaLabel#touchesEnded")
        if isFirstResponder {
            self.resignFirstResponder()
        } else {
            self.becomeFirstResponder()
        }
    }

}
