//
//  SongModel.swift
//  SwiftMiamiCurriculum
//
//  Created by Jimmy Gutierrez on 6/24/19.
//  Copyright © 2019 JimmyG. All rights reserved.
//

import Foundation
import UIKit

enum GenreType: String {
    case rock
    case rap
}

enum ImageType {
    case metallica
    case fiftycent
    case eminem
    
    var albumImage: UIImage {
        switch self {
        case .metallica: return UIImage(named: "andjusticeforall")!
        case .fiftycent: return UIImage(named: "grodt")!
        case .eminem: return UIImage(named: "mmlp")!
        }
    }
    
    var cellBackgroundImage: UIImage {
        switch self {
        case .metallica: return UIImage(named: "metallicabackground")!
        case .fiftycent: return UIImage(named: "grodtbackground")!
        case .eminem: return UIImage(named: "mmlpbackground")!
            
        }
    }
    
}

enum MusicInfo {
    case metallica
    case fiftycent
    case eminem
    
    var albums: String {
        switch self {
        case .metallica: return ("And Justice For All")
        case .fiftycent: return ("Get Rich Or Die Tryin'")
        case .eminem: return ("The Marshall Mathers LP")
            
        }
    }
    
    var theAlbumsongs: [String] {

        switch self {
        case .metallica: return (["one",
                                  "And Justice For All",
                                  "To Live is to Die",
                                  "Blackened",
                                  "Eye of the Beholder"])
        case .fiftycent: return (["What up Gangsta",
                                  "Patiently Waiting",
                                  "Many Men",
                                  "In Da Club",
                                  "Back Down"])
        case .eminem: return (["one of eminems songs",
                               "two giving it a longer name",
                               "three giving it a very long name",
                               "four",
                               "five"])

        }


    }
    
}
