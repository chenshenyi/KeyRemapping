//
//  main.swift
//  KeyRemapping
//
//  Created by chen shen yi on 2024/5/1.
//

import Foundation

let homeDir = FileManager.default.homeDirectoryForCurrentUser
let dir = "Library/LaunchAgents"
let fileName = "com.local.KeyRemapping.plist"

// Create a file in the LaunchAgents directory, which will be executed when the system starts
let url = homeDir
    .appending(path: dir)
    .appending(path: fileName)

// The key mapping relationship is defined here, you can modify it according to your needs
let keyMap: KeyMap = [
    .capsLock: .deleteOrBackspace,
    .deleteOrBackspace: .deleteForward,
    .rightCommand: .rightShift,
    .rightOption: .capsLock,
    .rightShift: .rightCommand
]

keyMap.writeToFile(url: url)
