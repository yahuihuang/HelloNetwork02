//
//  ViewController.swift
//  HelloNetwork02
//
//  Created by grace on 2019/12/7.
//  Copyright © 2019 grace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "https://image.freepik.com/free-vector/kids-wearing-colorful-costumes-different-superheroes-retro-set-isolated_1284-15219.jpg"
        if let url = URL(string: urlString) {
            do {
                let imageData = try Data(contentsOf: url)
                let image = UIImage(data: imageData)
                imageView.image = image
            } catch {
                print(error.localizedDescription)
            }
            
        }
    }

    
}

