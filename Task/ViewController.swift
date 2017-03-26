//
//  ViewController.swift
//  Task
//
//  Created by Artem Abramov on 26/03/2017.
//  Copyright © 2017 Elias Pietilä. All rights reserved.
//

import UIKit
import Intercom

class ViewController: UIViewController {
    
    struct Literals {
        static let IntercomWindow: String = "ICMMessagesWindow"
        static let IntercomTextView: String = "PodIntercom_LinkedTextView"
    }
    
    @IBAction func openIntercom(_ sender: Any) {
        Intercom.presentMessageComposer()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.swapThisToThat()
        }
    }
    
    fileprivate func swapThisToThat() {
        for window in UIApplication.shared.windows {
            if String(describing: type(of: window)) == Literals.IntercomWindow {
                let view = self.findView(className: Literals.IntercomTextView, rootView: window)
                print("#nsartem: \(view)")
                let textView = view as! UITextView
                textView.text = textView.text.swapSubstrings(this: "This", that: "That")
            }
        }
    }
    
    /**
        Recursively parses a tree of `UIView`s, looking for an instance of class `className`.
     
        - returns: nil if no ocurrence of `className` found, or the first instance of `className`.
     */
    func findView(className: String, rootView: UIView) -> UIView? {
        for view in rootView.subviews {
            if String(describing: type(of: view)) == Literals.IntercomTextView { return view }
            if let view2 = findView(className: className, rootView: view) { return view2 }
        }
        return nil
    }
    
}

extension String {
    
    /**
        Swaps two substrings in a string.
        
        - returns: Returns the same string if substrings are not found, or conversely new string with swaped substrings.
     */
    public func swapSubstrings(this: String, that: String) -> String {
        if let rangeThis = self.range(of: this), let rangeThat = self.range(of: that) {
            var string = self
            string.replaceSubrange(rangeThis, with: that)
            string.replaceSubrange(rangeThat, with: this)
            return string
        }
        return self
    }
}
