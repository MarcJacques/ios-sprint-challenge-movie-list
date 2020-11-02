//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Marc Jacques on 11/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieTitleLabel: UILabel!
        
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    
    private func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.title
        if movie.seen == false {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    
    
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        movie?.seen.toggle()
        updateViews()
    }
    
}
