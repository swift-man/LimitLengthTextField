//
//  TextLengthChecker.swift
//  LimitLengthTextField
//
//  Created by SwiftMan on 2023/01/12.
//

import SwiftUI

class TextLengthChecker: ObservableObject {
  @Published
  var text: String {
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
  
  init(text: String, limit: Int) {
    self.text = text
    self.characterLimit = limit
  }
}
