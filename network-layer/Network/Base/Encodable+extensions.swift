//
//  Encodable+extensions.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 25.06.2022.
//

import Foundation

extension Encodable {
    func jsonData() throws -> Data {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        encoder.dateEncodingStrategy = .iso8601
        return try encoder.encode(self)
    }
}
