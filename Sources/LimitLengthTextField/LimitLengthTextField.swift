//
//  LimitLengthTextField.swift
//  LimitLengthTextField
//
//  Created by SwiftMan on 2023/01/12.
//

import SwiftUI

public struct LimitLengthTextField: View {
  @Binding
  private var text: String
  
  private let prompt: Text?
  private let characterLimit: Int
  private let titleKey: LocalizedStringKey
  
  public init(titleKey: LocalizedStringKey = "",
              text: Binding<String>,
              numberOfCharacterLimit limit: Int,
              prompt: Text? = nil) {
    self._text = text
    self.characterLimit = limit
    self.prompt = prompt
    self.titleKey = titleKey
  }
  
  public var body: some View {
    TextField(titleKey,
              text: $text,
              prompt: prompt)
    .onChange(of: text, perform: { text in
      self.text = String(text.prefix(characterLimit))
    })
  }
}
