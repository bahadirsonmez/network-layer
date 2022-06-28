//
//  PrivateURLRequest.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 27.06.2022.
//

import Foundation

class PrivateURLRequest: BaseURLRequest {
    override init() {
        super.init()
        self.endpointType = .privateType
    }
}
