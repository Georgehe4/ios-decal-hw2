//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var returnButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var xButton: UIButton!
    @IBOutlet weak var yButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var upButton: UIButton!
    var keyboardView: UIView!
    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    func aTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("A")
    }
    func bTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("B")
    }
    func xTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("X")
    }
    func yTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Y")
    }
    func upTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("↑")
    }
    func downTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("↓")
    }
    func leftTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("←")
    }
    func rightTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("→")
    }
    func returnTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("\n")
    }
    func deleteTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    func buttonLayout(button: UIButton) {
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blackColor().CGColor
        button.layer.cornerRadius = button.frame.height/2
        button.layer.backgroundColor = UIColor.redColor().CGColor
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        aButton.addTarget(self, action: "aTap", forControlEvents: .TouchUpInside)
        bButton.addTarget(self, action: "bTap", forControlEvents: .TouchUpInside)
        xButton.addTarget(self, action: "xTap", forControlEvents: .TouchUpInside)
        yButton.addTarget(self, action: "yTap", forControlEvents: .TouchUpInside)
        upButton.addTarget(self, action: "upTap", forControlEvents: .TouchUpInside)
        downButton.addTarget(self, action: "downTap", forControlEvents: .TouchUpInside)
        leftButton.addTarget(self, action: "leftTap", forControlEvents: .TouchUpInside)
        rightButton.addTarget(self, action: "rightTap", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "deleteTap", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "returnTap", forControlEvents: .TouchUpInside)
        buttonLayout(aButton)
        buttonLayout(bButton)
        buttonLayout(xButton)
        buttonLayout(yButton)
        buttonLayout(upButton)
        buttonLayout(downButton)
        buttonLayout(leftButton)
        buttonLayout(rightButton)
}


}
