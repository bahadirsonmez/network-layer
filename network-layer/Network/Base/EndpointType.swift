//
//  EndpointType.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 28.06.2022.
//

import Foundation

enum EndpointType {
    case privateType
    case publicType
    
    var endpointPath: String {
        switch self {
        case .privateType:
            return "private/"
        case .publicType:
            return "public/"
        }
    }
    
    var isPrivate: Bool {
        self == .privateType
    }
}
