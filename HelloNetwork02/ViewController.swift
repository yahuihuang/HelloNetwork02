//
//  ViewController.swift
//  HelloNetwork02
//
//  Created by grace on 2019/12/7.
//  Copyright © 2019 grace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        containerView.clipsToBounds = false
        containerView.backgroundColor = UIColor.clear
        containerView.layer.shadowRadius = 10         //陰影
        containerView.layer.shadowOpacity = 0.6;
        containerView.layer.shadowColor = UIColor.gray.cgColor
        containerView.layer.shadowOffset = CGSize(width: 10, height: 10)
        
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.frame.width / 2         //圓角
        imageView.layer.borderColor = UIColor.red.cgColor //邊線色
        imageView.layer.borderWidth = 5          //邊線
        
        //imageView.contentMode = UIViewContentModeScaleToFill
        
        let urlString = "https://image.freepik.com/free-vector/kids-wearing-colorful-costumes-different-superheroes-retro-set-isolated_1284-15219.jpg"
        let start = Date().timeIntervalSince1970
        if let url = URL(string: urlString) {
            DispatchQueue.global().async {

                do {
                    let imageData = try Data(contentsOf: url)
                    DispatchQueue.main.async {
                        let image = UIImage(data: imageData)
                        self.imageView.image = image
                        print(Date().timeIntervalSince1970 - start)
                    }
                    
                } catch {
                    print(error.localizedDescription)
                }
            }
            
        }
    }

    
}

