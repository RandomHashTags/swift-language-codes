//
//  SwiftLanguageCodes.swift
//
//
//  Created by Evan Anderson on 5/25/24.
//

#if !(os(macOS) || os(iOS) || os(tvOS) || os(watchOS) || os(visionOS))
import Foundation

public extension Locale {
    struct LanguageCode : Hashable, Codable, Sendable, ExpressibleByStringLiteral, CustomDebugStringConvertible {
        public typealias ExtendedGraphemeClusterLiteralType = String
        public typealias StringLiteralType = String
        public typealias UnicodeScalarLiteralType = String

        public let identifier:String

        public init(stringLiteral value: String) {
            identifier = value
        }
        public init(_ identifier: String) {
            self.identifier = identifier
        }

        public enum IdentifierType : Sendable {
            /// Two-letter alpha-2 code, e.g. "en" for English
            case alpha2
            /// Three-letter alpha-3 code, e.g. "eng" for English
            case alpha3
        }

        public var debugDescription : String {
            return identifier
        }

        public func identifier(type: Locale.LanguageCode.IdentifierType) -> String? {
            switch type {
                case .alpha2: return alpha2()
                case .alpha3: return alpha3()
            }
        }

        public var isISOLanguage : Bool {
            return false // TODO: fix
        }
    }
}

// MARK: Alpha 2
extension Locale.LanguageCode {
    func alpha2() -> String? {
        switch self {
            case .ainu: return "ain"
            default: return nil
        }
    }
}

// MARK: Alpha 3
extension Locale.LanguageCode {
    func alpha3() -> String? {
        switch self {
            case .ainu: return "ain"
            default: return nil
        }
    }
}

// MARK: Language codes
public extension Locale.LanguageCode {
    /// The `und` code: used in cases where the language has not been identified
    static let unidentified:Locale.LanguageCode = Locale.LanguageCode("und")
    /// The `mis` code: represents languages that have no been included in the ISO standard yet
    static let uncoded:Locale.LanguageCode = Locale.LanguageCode("mis")
    /// The `mul` code: represents the language of some content when there are more than one languages
    static let multiple:Locale.LanguageCode = Locale.LanguageCode("mul")
    /// The `zxx` code: used in cases when the content is not in any particular languages, such as images, symbols, etc.
    static let unavailable:Locale.LanguageCode = Locale.LanguageCode("zxx")
}

extension Locale.LanguageCode {
    static func get(_ identifier: String) -> Locale.LanguageCode {
        return Locale.LanguageCode(identifier)
    }
}

public extension Locale.LanguageCode {
    static let isoLanguageCodes : [Locale.LanguageCode] = {
        return [] // TODO: fix
    }()
}

public extension Locale.LanguageCode {
    static let ainu:Locale.LanguageCode =          get("ain")
    static let albanian:Locale.LanguageCode =      get("???")
    static let amharic:Locale.LanguageCode =       get("???")
    static let apacheWestern:Locale.LanguageCode = get("???")
    static let arabic:Locale.LanguageCode =        get("???")
    static let armenian:Locale.LanguageCode =      get("???")
    static let assamese:Locale.LanguageCode =      get("???")
    static let assyrian:Locale.LanguageCode =      get("???")
    static let azerbaijani:Locale.LanguageCode =   get("???")

    static let bangla:Locale.LanguageCode =        get("???")
    static let belarusian:Locale.LanguageCode =    get("???")
    static let bodo:Locale.LanguageCode =          get("???")
    static let bulgarian:Locale.LanguageCode =     get("???")
    static let burmese:Locale.LanguageCode =       get("???")

    static let cantonese:Locale.LanguageCode =     get("???")
    static let catalan:Locale.LanguageCode =       get("???")
    static let cherokee:Locale.LanguageCode =      get("???")
    static let chinese:Locale.LanguageCode =       get("???")
    static let croatian:Locale.LanguageCode =      get("???")
    static let czech:Locale.LanguageCode =         get("???")

    static let danish:Locale.LanguageCode =        get("???")
    static let dhivehi:Locale.LanguageCode =       get("???")
    static let dogri:Locale.LanguageCode =         get("???")
    static let dutch:Locale.LanguageCode =         get("???")
    static let dzongkha:Locale.LanguageCode =      get("???")

    static let english:Locale.LanguageCode =       get("???")
}

#endif
