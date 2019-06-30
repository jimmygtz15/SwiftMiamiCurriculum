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
        case .eminem: return UIImage(named: "andjusticeforall")!
        }
    }
    
    var cellBackgroundImage: UIImage {
        switch self {
        case .metallica: return UIImage(named: "metallicabackground")!
        case .fiftycent: return UIImage(named: "grodtbackground")!
        case .eminem: return UIImage(named: "metallicabackground")!
            
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
        case .eminem: return ("andjusticeforall")
            
        }
    }
    
    // this doesnt work, it only return the 5 songs in its case
    // the all songs array in my view controller is expecting more than 5
    //error is ot of range
    
//    var theAlbumsongs: [String] {
//
//        switch self {
//        case .metallica: return (["one",
//                                  "And Justice For All",
//                                  "To Live is to Die",
//                                  "Blackened",
//                                  "Eye of the Beholder"])
//        case .fiftycent: return (["What up Gangsta",
//                                  "Patiently Waiting",
//                                  "Many Men",
//                                  "In Da Club",
//                                  "Back Down"])
//        case .eminem: return (["one",
//                               "two",
//                               "three",
//                               "four",
//                               "five"])
//
//        }
//
//
//    }
    
}

//ran across the same issue in music info switch case
// put all of the songs in the same array so it can return all 15 songs together
enum SongInfo {
    case allSongsTogether
    
    var theSongs: [String] {
        switch self {
        case .allSongsTogether: return (["one",
                                  "And Justice For All",
                                  "To Live is to Die",
                                  "Blackened",
                                  "Eye of the Beholder",
                                    "What up Gangsta",
                                    "Patiently Waiting",
                                    "Many Men",
                                    "In Da Club",
                                    "Back Down",
                                    "one",
                                    "two",
                                    "three",
                                    "four",
                                    "five"])
            
        }
}

}
