//
//  swift_language_codesTests.swift
//
//
//  Created by Evan Anderson on 5/25/24.
//


import XCTest
@testable import SwiftLanguageCodes

final class swift_language_codesTests: XCTestCase {
    func testExample() throws {
        /*var array:[String] = []
        for code in Locale.LanguageCode.isoLanguageCodes {
            var splitName:[Substring] = (Locale(languageCode: Locale.LanguageCode.english).localizedString(forIdentifier: code.identifier) ?? "nil").replacingOccurrences(of: "-", with: " ").lowercased().split(separator: " ")
            var name:String = ""
            for (index, value) in splitName.enumerated() {
                name += (index == 0 ? value : value[value.startIndex].uppercased() + value[value.index(after: value.startIndex)...])
            }
            array.append("Locale.LanguageCode." + name)
        }
        for value in array {
            print(value + ",")
        }*/
        //print(Locale.init(identifier: Locale.LanguageCode.english.identifier).localizedString(forLanguageCode: Locale.LanguageCode.russian.identifier)!)
        /*var names:[String] = []
        var alpha2s:[String] = []
        var alpha3s:[String] = []
        for code in Locale.LanguageCode.isoLanguageCodes {
            var splitName:[Substring] = (Locale(languageCode: Locale.LanguageCode.english).localizedString(forIdentifier: code.identifier) ?? "nil").replacingOccurrences(of: "-", with: " ").lowercased().split(separator: " ")
            var name:String = ""
            for (index, value) in splitName.enumerated() {
                name += index == 0 ? value : value[value.startIndex].uppercased() + value[value.index(after: value.startIndex)...]
            }
            
            names.append("static let " + name + ":Locale.LanguageCode = get(\"" + code.identifier + "\")")
            
            let alpha2:String? = code.identifier(.alpha2)
            let alpha3:String? = code.identifier(.alpha3)
            alpha2s.append("case ." + name + ": return \"" + alpha2! + "\"")
            alpha3s.append("case ." + name + ": return " + (alpha3 == nil ? "nil" : "\"" + alpha3! + "\""))
        }
        
        print("")
        print("NAMES")
        for name in names {
            print(name)
        }
        
        print("")
        print("ALPHA 2")
        for alpha2 in alpha2s {
            print(alpha2)
        }
        
        print("")
        print("ALPHA 3")
        for alpha3 in alpha3s {
            print(alpha3)
        }*/
    }
}
