//
//  LimitLengthTextField.swift
//  LimitLengthTextField
//
//  Created by SwiftMan on 2023/01/12.
//

import SwiftUI

public struct LimitLengthTextField: View {
  @ObservedObject
  private var textLengthChecker: TextLengthChecker
  
  private let prompt: Text?
  private let onChanged: (String) -> Void
  
  public init(text: String,
              numberOfCharacterLimit limit: Int,
              prompt: Text? = nil,
              onChanged: @escaping (String) -> Void) {
    self.textLengthChecker = TextLengthChecker(text: text, limit: limit)
    self.prompt = prompt
    self.onChanged = onChanged
  }
  
  public var body: some View {
    TextField("",
              text: $textLengthChecker.text,
              prompt: prompt)
    .onChange(of: textLengthChecker.text) {
      self.onChanged($0)
    }
  }
}
