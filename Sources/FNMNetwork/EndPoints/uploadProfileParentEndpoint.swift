//
//  uploadProfileParent.swift
//  
//
//  Created by Fatemeh Najafi on 9/21/20.
//

import Foundation
import Alamofire
import MobileCoreServices

extension WebServiceManager {
    public func uploadProfileParent(filePath: URL,success: @escaping (MessageModel)-> (),
                                                         failure: @escaping (ErrorModel) -> ()) -> UploadRequest? {
        let fileName = filePath.lastPathComponent
        let name = filePath.deletingPathExtension().lastPathComponent
        let mime = filePath.mimeType
        
        print(fileName)
        print(name)
        print(mime)
        
        
        return resumeUploadTask(with: Router.uploadAvatarParent, filePath: filePath, name: "file", fileName: fileName, mime: mime, success: success, failure: failure)
    }
    
}

extension URL {
    var mimeType: String {
        let fileExtension = self.pathExtension as CFString
        let uti = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, fileExtension, nil)?.takeRetainedValue()
        if let mimeType = UTTypeCopyPreferredTagWithClass(uti!, kUTTagClassMIMEType)?.takeRetainedValue() as String? {
            return mimeType
        } else {
            return "application/octet-stream"
        }
    }
}

extension Data {
    var mimeType: String {

        var b: UInt8 = 0
        copyBytes(to: &b, count: 1)

        print(b)
        switch b {
        case 0xFF:
            return "image/jpeg"
        case 0x89:
            return "image/png"
        case 0x47:
            return "image/gif"
        case 0x4D, 0x49:
            return "image/tiff"
        case 0x25:
            return "application/pdf"
        case 0xD0:
            return "application/vnd"
        case 0x46:
            return "text/plain"
        default:
            return "application/octet-stream"
        }
    }
}
