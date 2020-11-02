//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Marc Jacques on 11/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var delegate: AddMovieDelegate?

    @IBOutlet weak var movieTitleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let movieTitle = movieTitleTextField.text else { return}
        
        let movie = Movie(title: movieTitle, seen: false)
        
        delegate?.movieWasAdded(movie: movie)
        dismiss(animated: true, completion: nil)
    }
    
}

