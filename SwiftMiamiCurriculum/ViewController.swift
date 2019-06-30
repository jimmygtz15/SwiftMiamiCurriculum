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
        var songValue: SongInfo
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let nib1 = UINib(nibName: CustomTableViewCell.nibName, bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: CustomTableViewCell.reuseIdentifier)
        
        allSongs.append(Songs(album: Album.init(albumName: .metallica),
                              artist: Artist.init(artistName: "Metallica"),
                              genre: Genre.init(genreValue: .rock),
                              song: Song.init(songValue: .allSongsTogether),
                              imageValue: .metallica,
                              backgroundImageValue: .metallica))
        
        allSongs.append(Songs(album: Album.init(albumName: .metallica),
                              artist: Artist.init(artistName: "Metallica"),
                              genre: Genre.init(genreValue: .rock),
                              song: Song.init(songValue: .allSongsTogether),
                              imageValue: .metallica,
                              backgroundImageValue: .metallica))
        
        allSongs.append(Songs(album: Album.init(albumName: .metallica),
                              artist: Artist.init(artistName: "Metallica"),
                              genre: Genre.init(genreValue: .rock),
                              song: Song.init(songValue: .allSongsTogether),
                              imageValue: .metallica,
                              backgroundImageValue: .metallica))

        allSongs.append(Songs(album: Album.init(albumName: .metallica),
                              artist: Artist.init(artistName: "Metallica"),
                              genre: Genre.init(genreValue: .rock),
                              song: Song.init(songValue: .allSongsTogether),
                              imageValue: .metallica,
                              backgroundImageValue: .metallica))

        allSongs.append(Songs(album: Album.init(albumName: .metallica),
                              artist: Artist.init(artistName: "Metallica"),
                              genre: Genre.init(genreValue: .rock),
                              song: Song.init(songValue: .allSongsTogether),
                              imageValue: .metallica,
                              backgroundImageValue: .metallica))


        allSongs.append(Songs(album: Album.init(albumName: .fiftycent),
                              artist: Artist.init(artistName: "50 Cent"),
                              genre: Genre.init(genreValue: .rap),
                              song: Song.init(songValue: .allSongsTogether),
                              imageValue: .fiftycent,
                              backgroundImageValue: .fiftycent))

        allSongs.append(Songs(album: Album.init(albumName: .fiftycent),
                              artist: Artist.init(artistName: "50 Cent"),
                              genre: Genre.init(genreValue: .rap),
                              song: Song.init(songValue: .allSongsTogether),
                              imageValue: .fiftycent,
                              backgroundImageValue: .fiftycent))

        allSongs.append(Songs(album: Album.init(albumName: .fiftycent),
                              artist: Artist.init(artistName: "50 Cent"),
                              genre: Genre.init(genreValue: .rap),
                              song: Song.init(songValue: .allSongsTogether),
                              imageValue: .fiftycent,
                              backgroundImageValue: .fiftycent))

        allSongs.append(Songs(album: Album.init(albumName: .fiftycent),
                              artist: Artist.init(artistName: "50 Cent"),
                              genre: Genre.init(genreValue: .rap),
                              song: Song.init(songValue: .allSongsTogether),
                              imageValue: .fiftycent,
                              backgroundImageValue: .fiftycent))

        allSongs.append(Songs(album: Album.init(albumName: .fiftycent),
                              artist: Artist.init(artistName: "50 Cent"),
                              genre: Genre.init(genreValue: .rap),
                              song: Song.init(songValue: .allSongsTogether),
                              imageValue: .fiftycent,
                              backgroundImageValue: .fiftycent))
//

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allSongs.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseIdentifier, for: indexPath) as! CustomTableViewCell
        
        let song = allSongs[indexPath.row]
        
        cell.songLabel?.text = song.song.songValue.theSongs[indexPath.row]
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
