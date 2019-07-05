//
//  SwiftMPV_Error.swift
//  SwiftMPV
//
//  Created by Jorge Paravicini on 05.07.19.
//  Copyright © 2019 Jorge Paravicini. All rights reserved.
//

import Foundation
import libmpv

public enum SwiftMPVError {
    case success
    case eventQueueFull
    case noMemory
    case uninitialized
    case invalidParameter
    case optionNotFound
    case optionFormat
    case optionError
    case propertyNotFound
    case propertyFormat
    case propertyUnavailable
    case propertyError
    case command
    case loadingFailed
    case audioOutputInitFailed
    case videoOutputInitFailed
    case nothingToPlay
    case unknownFormat
    case unsupported
    case notImplemented
    case generic
    
    public var errorMessage: String {
        return String(cString: mpv_error_string(rawValue.rawValue))
    }
}

extension SwiftMPVError: RawRepresentable {
    public typealias RawValue = mpv_error
    
    public init?(rawValue: RawValue) {
        switch rawValue.rawValue {
        case MPV_ERROR_SUCCESS.rawValue: self = .success
        case MPV_ERROR_EVENT_QUEUE_FULL.rawValue: self = .eventQueueFull
        case MPV_ERROR_NOMEM.rawValue: self = .noMemory
        case MPV_ERROR_UNINITIALIZED.rawValue: self = .uninitialized
        case MPV_ERROR_INVALID_PARAMETER.rawValue: self = .invalidParameter
        case MPV_ERROR_OPTION_NOT_FOUND.rawValue: self = .optionNotFound
        case MPV_ERROR_OPTION_FORMAT.rawValue: self = .optionFormat
        case MPV_ERROR_OPTION_ERROR.rawValue: self = .optionError
        case MPV_ERROR_PROPERTY_NOT_FOUND.rawValue: self = .propertyNotFound
        case MPV_ERROR_PROPERTY_FORMAT.rawValue: self = .propertyFormat
        case MPV_ERROR_PROPERTY_UNAVAILABLE.rawValue: self = .propertyUnavailable
        case MPV_ERROR_PROPERTY_ERROR.rawValue: self = .propertyError
        case MPV_ERROR_COMMAND.rawValue: self = .command
        case MPV_ERROR_LOADING_FAILED.rawValue: self = .loadingFailed
        case MPV_ERROR_AO_INIT_FAILED.rawValue: self = .audioOutputInitFailed
        case MPV_ERROR_VO_INIT_FAILED.rawValue: self = .videoOutputInitFailed
        case MPV_ERROR_NOTHING_TO_PLAY.rawValue: self = .nothingToPlay
        case MPV_ERROR_UNKNOWN_FORMAT.rawValue: self = .unknownFormat
        case MPV_ERROR_UNSUPPORTED.rawValue: self = .unsupported
        case MPV_ERROR_NOT_IMPLEMENTED.rawValue: self = .notImplemented
        case MPV_ERROR_GENERIC.rawValue: self = .generic
            
        default: self = .generic
        }
    }
    
    public var rawValue: RawValue {
        switch self {
        case .success: return MPV_ERROR_SUCCESS
        case .eventQueueFull: return MPV_ERROR_EVENT_QUEUE_FULL
        case .noMemory: return MPV_ERROR_NOMEM
        case .uninitialized: return MPV_ERROR_UNINITIALIZED
        case .invalidParameter: return MPV_ERROR_INVALID_PARAMETER
        case .optionNotFound: return MPV_ERROR_OPTION_NOT_FOUND
        case .optionFormat: return MPV_ERROR_OPTION_FORMAT
        case .optionError: return MPV_ERROR_OPTION_ERROR
        case .propertyNotFound: return MPV_ERROR_PROPERTY_NOT_FOUND
        case .propertyFormat: return MPV_ERROR_PROPERTY_FORMAT
        case .propertyUnavailable: return MPV_ERROR_PROPERTY_UNAVAILABLE
        case .propertyError: return MPV_ERROR_PROPERTY_ERROR
        case .command: return MPV_ERROR_COMMAND
        case . loadingFailed: return MPV_ERROR_LOADING_FAILED
        case .audioOutputInitFailed: return MPV_ERROR_AO_INIT_FAILED
        case .videoOutputInitFailed: return MPV_ERROR_VO_INIT_FAILED
        case .nothingToPlay: return MPV_ERROR_NOTHING_TO_PLAY
        case .unknownFormat: return MPV_ERROR_UNKNOWN_FORMAT
        case .unsupported: return MPV_ERROR_UNSUPPORTED
        case .notImplemented: return MPV_ERROR_NOT_IMPLEMENTED
        case .generic: return MPV_ERROR_GENERIC
        }
    }
    
}
