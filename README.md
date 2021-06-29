# ApplicationKey

[![Unit Tests](https://github.com/colinc86/ApplicationKey/actions/workflows/swift.yml/badge.svg)](https://github.com/colinc86/ApplicationKey/actions/workflows/swift.yml)

A Swift type suitable for creating keys that belongs to a specific bundle.

Application keys have the form `bundleIdentifier.key`.

If a bundle's identifier is `nil`, then an application key is created from the given key with the form `key`. If the given key is an empty string, then the application key is created from the bundle identifier with the form `bundleIdentifier`.

## Examples

```swift
DispatchQueue(label: ApplicationKey(from: "processingQueue")).async {
  
}

UserDefaults.standard.set(true, forKey: ApplicationKey(from: "showWarning"))

let key = ApplicationKey(from: "aKey", in: Bundle(identifier: "aBundleIdentifier"))
```


