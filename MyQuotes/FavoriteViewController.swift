//
//  FavoriteViewController.swift
//  MyQuotes
//
//  Created by Md Maruf Prodhan on 12/4/2563 BE.
//  Copyright © 2563 Md Maruf Prodhan. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {
    
    @IBOutlet weak var favoriteImgView: UIImageView!
   
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        view.backgroundColor = theme
        
        let savingDefaults = UserDefaults.standard
        let indexsaved = savingDefaults.integer(forKey: "Favorite")
        let imageName = "quote\(indexsaved)"
        let image = UIImage(named: imageName)

        favoriteImgView.image = image
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}



