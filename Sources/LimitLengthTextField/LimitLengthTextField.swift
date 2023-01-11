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
  
  private let prompt: Text?
  private let titleKey: LocalizedStringKey
  private let onChanged: (String) -> Void
  
  public init(_ titleKey: LocalizedStringKey,
              text: String,
              limit: Int,
              prompt: Text? = nil,
              onChanged: @escaping (String) -> Void) {
    self.textLengthChecker = TextLengthChecker(text: text, limit: limit)
    self.prompt = prompt
    self.titleKey = titleKey
    self.onChanged = onChanged
  }
  
  public var body: some View {
    TextField(titleKey,
              text: $textLengthChecker.text,
              prompt: prompt)
    .onChange(of: textLengthChecker.text) {
      self.onChanged($0)
    }
  }
}
