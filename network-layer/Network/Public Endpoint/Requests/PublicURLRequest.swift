//
//  PublicURLRequest.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 27.06.2022.
//

import Foundation

class PublicURLRequest: BaseURLRequest {
    override init() {
        super.init()
        self.endpointType = .publicType
    }
}
