//
//  ResultTypes.swift
//  MySQL
//
//  Created by Yusuke Ito on 12/28/15.
//  Copyright © 2015 Yusuke Ito. All rights reserved.
//

import Foundation

extension Int: SQLStringDecodable {
    public static func from(string: String) -> Int? {
        return Int(string)
    }
}

extension UInt: SQLStringDecodable {
    public static func from(string: String) -> UInt? {
        return UInt(string)
    }
}

extension Int64: SQLStringDecodable {
    public static func from(string: String) -> Int64? {
        return Int64(string)
    }
}

extension Int32: SQLStringDecodable {
    public static func from(string: String) -> Int32? {
        return Int32(string)
    }
}

extension UInt64: SQLStringDecodable {
    public static func from(string: String) -> UInt64? {
        return UInt64(string)
    }
}

extension UInt32: SQLStringDecodable {
    public static func from(string: String) -> UInt32? {
        return UInt32(string)
    }
}

extension Float: SQLStringDecodable {
    public static func from(string: String) -> Float? {
        return Float(string)
    }
}

extension Double: SQLStringDecodable {
    public static func from(string: String) -> Double? {
        return Double(string)
    }
}

extension String: SQLStringDecodable {
    public static func from(string: String) -> String? {
        return string
    }
}

extension Bool: SQLStringDecodable {
    public static func from(string: String) -> Bool? {
        guard let val = Int(string) else {
            return nil
        }
        return Bool(val == 0 ? false : true )
    }
}


extension SQLDate: SQLStringDecodable {
    public static func from(string: String) -> SQLDate? {
        return nil // Invalid Constructor (use init instead)
    }
}

extension Date: SQLStringDecodable {
    public static func from(string: String) -> Date? {
        return nil // Invalid Constructor (use init instead)
    }
}
