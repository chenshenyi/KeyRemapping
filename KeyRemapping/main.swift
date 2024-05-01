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

let url = homeDir
    .appending(path: dir)
    .appending(path: fileName)

let keyMap: KeyMap = [
    .capsLock: .deleteOrBackspace,
    .deleteOrBackspace: .deleteForward,
    .rightCommand: .rightShift,
    .rightOption: .capsLock,
    .rightShift: .rightCommand
]

keyMap.writeToFile(url: url)
