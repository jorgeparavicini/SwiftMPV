//
//  SwiftMPV.swift
//  SwiftMPV
//
//  Created by Jorge Paravicini on 05.07.19.
//  Copyright © 2019 Jorge Paravicini. All rights reserved.
//

import Foundation
import libmpv

public class SwiftMPV {
    static let version: Int = {
        return Int(mpv_client_api_version())
    }()
}
