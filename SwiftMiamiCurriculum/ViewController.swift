//
//  ViewController.swift
//  SwiftMiamiCurriculum
//
//  Created by Jimmy Gutierrez on 6/18/19.
//  Copyright © 2019 JimmyG. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    struct Album {
        var albumName: MusicInfo
    }
    
    struct Artist {
        var artistName: String
    }
    
    struct Genre {
        var genreValue: GenreType
    }
    
    struct Song {
        var songValue: MusicInfo
    }
    
    struct Songs {
        var album: Album
        var artist: Artist
        var genre: Genre
        var song: Song
        var imageValue: ImageType
        var backgroundImageValue: ImageType
    }
    
    var allSongs: [Songs] = []
    var fiftyCentSongs: [Songs] = []
    var eminemSongs: [Songs] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib1 = UINib(nibName: CustomTableViewCell.nibName, bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: CustomTableViewCell.reuseIdentifier)
        
        allSongs.append(Songs(album: Album.init(albumName: .metallica),
                              artist: Artist.init(artistName: "Metallica"),
                              genre: Genre.init(genreValue: .rock),
                              song: Song.init(songValue: .metallica),
                              imageValue: .metallica,
                              backgroundImageValue: .metallica))
        
        allSongs.append(Songs(album: Album.init(albumName: .metallica),
                              artist: Artist.init(artistName: "Metallica"),
                              genre: Genre.init(genreValue: .rock),
                              song: Song.init(songValue: .metallica),
                              imageValue: .metallica,
                              backgroundImageValue: .metallica))
        
        allSongs.append(Songs(album: Album.init(albumName: .metallica),
                              artist: Artist.init(artistName: "Metallica"),
                              genre: Genre.init(genreValue: .rock),
                              song: Song.init(songValue: .metallica),
                              imageValue: .metallica,
                              backgroundImageValue: .metallica))

        allSongs.append(Songs(album: Album.init(albumName: .metallica),
                              artist: Artist.init(artistName: "Metallica"),
                              genre: Genre.init(genreValue: .rock),
                              song: Song.init(songValue: .metallica),
                              imageValue: .metallica,
                              backgroundImageValue: .metallica))

        allSongs.append(Songs(album: Album.init(albumName: .metallica),
                              artist: Artist.init(artistName: "Metallica"),
                              genre: Genre.init(genreValue: .rock),
                              song: Song.init(songValue: .metallica),
                              imageValue: .metallica,
                              backgroundImageValue: .metallica))
        
        fiftyCentSongs.append(Songs(album: Album.init(albumName: .fiftycent),
                              artist: Artist.init(artistName: "50 Cent"),
                              genre: Genre.init(genreValue: .rap),
                              song: Song.init(songValue: .fiftycent),
                              imageValue: .fiftycent,
                              backgroundImageValue: .fiftycent))
        
        fiftyCentSongs.append(Songs(album: Album.init(albumName: .fiftycent),
                              artist: Artist.init(artistName: "50 Cent"),
                              genre: Genre.init(genreValue: .rap),
                              song: Song.init(songValue: .fiftycent),
                              imageValue: .fiftycent,
                              backgroundImageValue: .fiftycent))
        
        fiftyCentSongs.append(Songs(album: Album.init(albumName: .fiftycent),
                              artist: Artist.init(artistName: "50 Cent"),
                              genre: Genre.init(genreValue: .rap),
                              song: Song.init(songValue: .fiftycent),
                              imageValue: .fiftycent,
                              backgroundImageValue: .fiftycent))
        
        fiftyCentSongs.append(Songs(album: Album.init(albumName: .fiftycent),
                              artist: Artist.init(artistName: "50 Cent"),
                              genre: Genre.init(genreValue: .rap),
                              song: Song.init(songValue: .fiftycent),
                              imageValue: .fiftycent,
                              backgroundImageValue: .fiftycent))
        
        fiftyCentSongs.append(Songs(album: Album.init(albumName: .fiftycent),
                              artist: Artist.init(artistName: "50 Cent"),
                              genre: Genre.init(genreValue: .rap),
                              song: Song.init(songValue: .fiftycent),
                              imageValue: .fiftycent,
                              backgroundImageValue: .fiftycent))
        
        eminemSongs.append(Songs(album: Album.init(albumName: .eminem),
                                    artist: Artist.init(artistName: "Eminem"),
                                    genre: Genre.init(genreValue: .rap),
                                    song: Song.init(songValue: .eminem),
                                    imageValue: .eminem,
                                    backgroundImageValue: .eminem))
        
        eminemSongs.append(Songs(album: Album.init(albumName: .eminem),
                                    artist: Artist.init(artistName: "Eminem"),
                                    genre: Genre.init(genreValue: .rap),
                                    song: Song.init(songValue: .eminem),
                                    imageValue: .eminem,
                                    backgroundImageValue: .eminem))
        
        eminemSongs.append(Songs(album: Album.init(albumName: .eminem),
                                    artist: Artist.init(artistName: "Eminem"),
                                    genre: Genre.init(genreValue: .rap),
                                    song: Song.init(songValue: .eminem),
                                    imageValue: .eminem,
                                    backgroundImageValue: .eminem))
        
        eminemSongs.append(Songs(album: Album.init(albumName: .eminem),
                                    artist: Artist.init(artistName: "Eminem"),
                                    genre: Genre.init(genreValue: .rap),
                                    song: Song.init(songValue: .eminem),
                                    imageValue: .eminem,
                                    backgroundImageValue: .eminem))
        
        eminemSongs.append(Songs(album: Album.init(albumName: .eminem),
                                    artist: Artist.init(artistName: "Eminem"),
                                    genre: Genre.init(genreValue: .rap),
                                    song: Song.init(songValue: .eminem),
                                    imageValue: .eminem,
                                    backgroundImageValue: .eminem))

    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = .red
        return label
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return allSongs.count
        } else if section == 1 {
        return fiftyCentSongs.count
        } else {
            return eminemSongs.count
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseIdentifier, for: indexPath) as! CustomTableViewCell
        var song = allSongs[indexPath.row]
        let songSection = indexPath.section
//        let song = indexPath.section == 0 ? allSongs[indexPath.row] : fiftycentsongs[indexPath.row]
        if songSection == 0 {
            song = allSongs[indexPath.row]
        } else if songSection == 1 {
            song = fiftyCentSongs[indexPath.row]
        } else {
            song = eminemSongs[indexPath.row]
        }
        
        cell.songLabel?.text = song.song.songValue.theAlbumsongs[indexPath.row]
        cell.albumLabel?.text = song.album.albumName.albums
        cell.artistLabel?.text = song.artist.artistName
        cell.genreLabel?.text = song.genre.genreValue.rawValue.capitalized
        cell.albumImageView.image = song.imageValue.albumImage
        cell.backgroundImageView.image = song.backgroundImageValue.cellBackgroundImage
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}
