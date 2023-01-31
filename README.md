# LimitLengthTextField

![Badge](https://img.shields.io/badge/swift-white.svg?style=flat-square&logo=Swift)
![Badge](https://img.shields.io/badge/SwiftUI-001b87.svg?style=flat-square&logo=Swift&logoColor=black)
![Badge - Version](https://img.shields.io/badge/Version-0.7.0-1177AA?style=flat-square)
![Badge - Swift Package Manager](https://img.shields.io/badge/SPM-compatible-orange?style=flat-square)
![Badge - Platform](https://img.shields.io/badge/platform-macOS_12.0|iOS_15.0-yellow?style=flat-square)
![Badge - License](https://img.shields.io/badge/license-MIT-black?style=flat-square)

## TextField
```swift
public var body: some View {
  LimitLengthTextField(text: $text, numberOfCharacterLimit: limit)
}
```

## SecureField
```swift
public var body: some View {
  LimitLengthSecureField(text: $text, numberOfCharacterLimit: limit)
}
```
