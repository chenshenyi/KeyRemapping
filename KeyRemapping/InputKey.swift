//
//  InputKey.swift
//  KeyRemapping
//
//  Created by chen shen yi on 2024/5/1.
//

import Foundation

enum InputKey: Int, CaseIterable {
    // MARK: - Modifiers
    case capsLock = 0x39
    case leftControl = 0xE0
    case leftShift = 0xE1
    case leftOption = 0xE2
    case leftCommand = 0xE3
    case rightControl = 0xE4
    case rightShift = 0xE5
    case rightOption = 0xE6
    case rightCommand = 0xE7
    case fn = 0xFF00000003

    // MARK: - Control and Symbols
    case returnOrEnter = 0x28
    case escape = 0x29
    case deleteOrBackspace = 0x2A
    case deleteForward = 0x4C
    case tab = 0x2B
    case spacebar = 0x2C
    case hyphen = 0x2D
    case equalSign = 0x2E
    case openBracket = 0x2F
    case closeBracket = 0x30
    case backslash = 0x31
    case nonUsPound = 0x32
    case semicolon = 0x33
    case quote = 0x34
    case graveAccentAndTilde = 0x35
    case comma = 0x36
    case period = 0x37
    case slash = 0x38
    case nonUsBackslash = 0x64

    // MARK: - Arrow Keys
    case upArrow = 0x52
    case downArrow = 0x51
    case leftArrow = 0x50
    case rightArrow = 0x4F
    case pageUp = 0x4B
    case pageDown = 0x4E
    case home = 0x4A
    case end = 0x4D

    // MARK: - Letter Keys
    case a = 0x04
    case b = 0x05
    case c = 0x06
    case d = 0x07
    case e = 0x08
    case f = 0x09
    case g = 0x0A
    case h = 0x0B
    case i = 0x0C
    case j = 0x0D
    case k = 0x0E
    case l = 0x0F
    case m = 0x10
    case n = 0x11
    case o = 0x12
    case p = 0x13
    case q = 0x14
    case r = 0x15
    case s = 0x16
    case t = 0x17
    case u = 0x18
    case v = 0x19
    case w = 0x1A
    case x = 0x1B
    case y = 0x1C
    case z = 0x1D

    // MARK: - Number Keys
    case _1 = 0x1E
    case _2 = 0x1F
    case _3 = 0x20
    case _4 = 0x21
    case _5 = 0x22
    case _6 = 0x23
    case _7 = 0x24
    case _8 = 0x25
    case _9 = 0x26
    case _0 = 0x27

    // MARK: - Function Keys
    case f1 = 0x3A
    case f2 = 0x3B
    case f3 = 0x3C
    case f4 = 0x3D
    case f5 = 0x3E
    case f6 = 0x3F
    case f7 = 0x40
    case f8 = 0x41
    case f9 = 0x42
    case f10 = 0x43
    case f11 = 0x44
    case f12 = 0x45
    case f13 = 0x68
    case f14 = 0x69
    case f15 = 0x6A
    case f16 = 0x6B
    case f17 = 0x6C
    case f18 = 0x6D
    case f19 = 0x6E

    // MARK: - Media Control Keys
    case displayBrightnessDecrement = 0xC00000070
    case displayBrightnessIncrement = 0xC0000006F
    case missionControl = 0xff0100000007
    case launchpad = 0xff0100000006
    case illuminationDecrement = 0xff0100000008
    case illuminationIncrement = 0xff0100000009
    case rewind = 0xC000000B4
    case playOrPause = 0xC000000CD
    case fastForward = 0xC000000B3
    case mute = 0xC000000E2
    case volumeDecrement = 0xC000000EA
    case volumeIncrement = 0xC000000E9

    // MARK: - PC Keyboard Keys
    case printScreen = 0x46
    case scrollLock = 0x47
    case pause = 0x48
    case insert = 0x49
    case application = 0x65
    case help = 0x75
    case power = 0x66
    case execute = 0x74
    case menu = 0x76
    case select = 0x77
    case stop = 0x78
    case again = 0x79
    case undo = 0x7A
    case cut = 0x7B
    case copy = 0x7C
    case paste = 0x7D
    case find = 0x7E
    case lockingCapsLock = 0x82
    case lockingNumLock = 0x83
    case lockingScrollLock = 0x84

    // MARK: - Keypad Keys
    case keypadNumLock = 0x53
    case keypadSlash = 0x54
    case keypadAsterisk = 0x55
    case keypadHyphen = 0x56
    case keypadPlus = 0x57
    case keypadEnter = 0x58
    case keypad1 = 0x59
    case keypad2 = 0x5A
    case keypad3 = 0x5B
    case keypad4 = 0x5C
    case keypad5 = 0x5D
    case keypad6 = 0x5E
    case keypad7 = 0x5F
    case keypad8 = 0x60
    case keypad9 = 0x61
    case keypad0 = 0x62
    case keypadPeriod = 0x63
    case keypadEqualSign = 0x67
    case keypadComma = 0x85

    var mappingValue: Int {
        if rawValue < 0x700000000 {
            rawValue + 0x700000000
        } else {
            rawValue
        }
    }

    var name: String {
        String(describing: self)
    }
}
