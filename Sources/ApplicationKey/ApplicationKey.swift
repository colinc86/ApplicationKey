//
//  ApplicationKey.swift
//  ApplicationKey
//
//  Created by Colin Campbell on 6/22/21.
//

import Foundation

/// A type suitable for creating keys that belongs to a specific bundle.
public typealias ApplicationKey = String

extension ApplicationKey {
  
  /// Creates an application key with the form `bundleIdentifier.key`.
  ///
  /// If a bundle's identifier is `nil`, then an application key is created from
  /// the given key with the form `key`. If the given key is an empty string,
  /// then the application key is created from the bundle identifier with the
  /// form `bundleIdentifier`.
  ///
  /// - Parameters:
  ///   - key: The key to append to `bundleIdentifier.`
  ///   - bundle: The bundle whose bundle identifier should be used to form the
  ///     application key.
  public init(from key: String, in bundle: Bundle) {
    guard let bundleIdentifier = bundle.bundleIdentifier else {
      self = key
      return
    }
    
    if key.count > 0 {
      self = "\(bundleIdentifier).\(key)"
    }
    else {
      self = bundleIdentifier
    }
  }
  
  /// Creates an application key from the given key in the main bundle.
  ///
  /// See `init(from:in:)` for more information.
  ///
  /// - Parameter key: The key to append to `bundleIdentifier.`
  public init(from key: String) {
    self.init(from: key, in: Bundle.main)
  }
  
}
