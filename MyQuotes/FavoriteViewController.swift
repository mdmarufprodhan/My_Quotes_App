//
//  FavoriteViewController.swift
//  MyQuotes
//
//  Created by Md Maruf Prodhan on 12/4/2563 BE.
//  Copyright © 2563 Md Maruf Prodhan. All rights reserved.
//

import UIKit

//let defaults = UserDefaults.standard

class FavoriteViewController: UIViewController {
    
    @IBOutlet weak var favoriteImgView: UIImageView!
    
    let defaults = UserDefaults.standard
   
    override func viewWillAppear(_ animated: Bool) {
        
        
        
        let themeValue = defaults.integer(forKey: "theme")
        
        if themeValue == 0
        {
            view.backgroundColor = UIColor.black
            
        }
        else{
            
            view.backgroundColor = UIColor.white
            
        }
        
        super.viewWillAppear(animated)
        
        view.backgroundColor = theme
        

        let indexsaved = defaults.integer(forKey: "Favorite")
        let imageName = "quote\(indexsaved)"
        let image = UIImage(named: imageName)

        favoriteImgView.image = image
        
        
        if imageBorder
        {
            
            favoriteImgView.layer.borderColor = UIColor.red.cgColor
            favoriteImgView.layer.borderWidth = 5.0
        }
        else{
            
            favoriteImgView.layer.borderWidth = 0
        }
        
        favoriteImgView.clipsToBounds = true
        favoriteImgView.layer.cornerRadius = 155.0
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}



