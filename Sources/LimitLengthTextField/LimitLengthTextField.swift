//
//  LimitLengthTextField.swift
//  LimitLengthTextField
//
//  Created by SwiftMan on 2023/01/12.
//

import Foundation
import SwiftUI

public struct LimitLengthTextField: View {
  @ObservedObject
  private var textLengthChecker: TextLengthChecker
  
  private let placeholder: String
  
  public init(placeholder: String, limit: Int) {
    self.textLengthChecker = TextLengthChecker(limit: limit)
    self.placeholder = placeholder
  }
  
  public var body: some View {
    TextField(placeholder, text: $textLengthChecker.text)
  }
}
