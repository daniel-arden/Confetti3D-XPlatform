//
//  C3DConfetti.swift
//  Confetti3D
//
//  Created by Maxime Daymard on 26/10/2024.
//

#if os(iOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif

/// A single confetti element, consisting of an image and an optional color overlay.
public struct C3DConfetti: Sendable {

    /// The image used to render the confetti.
    #if os(iOS)
    let image: UIImage
    #elseif os(macOS)
    let image: NSImage
    #endif

    /// An optional tint color applied to the image.
    #if os(iOS)
    let color: UIColor?
    #elseif os(macOS)
    let color: NSColor?
    #endif

    /// Initializes a new confetti element.
    ///
    /// - Parameters:
    ///   - image: The image to be used for the confetti shape.
    ///   - color: An optional color overlay applied to the image.
    #if os(iOS)
    public init(image: UIImage, color: UIColor?) {
        self.image = image
        self.color = color
    }
    #elseif os(macOS)
    public init(image: NSImage, color: NSColor?) {
        self.image = image
        self.color = color
    }
    #endif
}
