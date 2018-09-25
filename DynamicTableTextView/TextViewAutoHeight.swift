//
//  TextViewAutoHeight.swift
//  DynamicTableTextView
//
//  Created by Abraham VG on 25/09/18.
//  Copyright © 2018 TechTonic. All rights reserved.
//

import UIKit
import Foundation

class TextViewAutoHeight: UITextView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isScrollEnabled = false
        NotificationCenter.default.addObserver(forName: UITextView.textDidChangeNotification, object: nil, queue: nil) { (notification) in
            
            self.updateHeight()
            
        }
        

    }
    
     func updateHeight() {
        // trigger your animation here
       
         var newFrame = frame
         
         let fixedWidth = frame.size.width
         let newSize = sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
         
         newFrame.size = CGSize(width: max(newSize.width, fixedWidth), height: newSize.height)
         self.frame = newFrame
         
        
        // suggest searching stackoverflow for "uiview animatewithduration" for frame-based animation
        // or "animate change in intrinisic size" to learn about a more elgant solution :)
    }
}
