//
//  KeyMap.swift
//  KeyRemapping
//
//  Created by chen shen yi on 2024/5/1.
//

import Foundation

class KeyMap: Codable, ExpressibleByDictionaryLiteral {
    private(set) var label = "com.local.KeyRemapping"
    private(set) var programArguments = ["/usr/bin/hidutil", "property", "--set"]
    private(set) var runAtLoad = true

    enum CodingKeys: String, CodingKey {
        case label = "Label"
        case programArguments = "ProgramArguments"
        case runAtLoad = "RunAtLoad"
    }

    required init(dictionaryLiteral elements: (InputKey, InputKey)...) {
        let userKeyMapping: [[String: Int]] = elements.reduce(into: []) { array, keyValue in
            let (key, value) = keyValue
            array.append([
                "HIDKeyboardModifierMappingSrc": key.mappingValue,
                "HIDKeyboardModifierMappingDst": value.mappingValue
            ])
        }
        let json = ["UserKeyMapping": userKeyMapping]

        guard let jsonData = try? JSONEncoder().encode(json) else { return }

        let jsonString = String(data: jsonData, encoding: .utf8) ?? "{\"UserKeyMapping\":[]}"
        programArguments.append(jsonString)
    }

    func writeToFile(url: URL) {
        do {
            let data = try PropertyListEncoder().encode(self)
            try data.write(to: url)
            print("Wrote to file: \(url.path)")
        } catch {
            print("Failed to write to file: \(error)")
        }
    }
}
