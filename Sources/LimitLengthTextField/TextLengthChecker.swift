//
//  TextLengthChecker.swift
//  LimitLengthTextField
//
//  Created by SwiftMan on 2023/01/12.
//

import Foundation
import SwiftUI

class TextLengthChecker: ObservableObject {
  @Published
  var text = "" {
    didSet {
      if characterLimit == 0 {
        text = oldValue
        return
      }
      
      if text.count > characterLimit && oldValue.count <= characterLimit {
        text = oldValue
      }
    }
  }
  let characterLimit: Int
  
  init(limit: Int) {
    characterLimit = limit
  }
}
