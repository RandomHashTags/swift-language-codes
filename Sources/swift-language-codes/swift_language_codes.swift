//
//  SwiftLanguageCodes.swift
//
//
//  Created by Evan Anderson on 5/25/24.
//

#if !(os(macOS) || os(iOS) || os(tvOS) || os(watchOS) || os(visionOS))
import Foundation

public extension Locale {
    struct LanguageCode : Hashable, Codable, Sendable, ExpressibleByStringLiteral {
    }
}


#endif
