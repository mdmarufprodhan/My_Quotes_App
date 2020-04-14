//
//  HomeViewController.swift
//  MyQuotes
//
//  Created by Md Maruf Prodhan on 9/4/2563 BE.
//  Copyright © 2563 Md Maruf Prodhan. All rights reserved.
//

import UIKit
var theme : UIColor = UIColor.black
let defaults = UserDefaults.standard

var imageBorder = false

class HomeViewController: UIViewController
{

    @IBOutlet weak var quoteImageView: UIImageView!
    
    
    var quoteArry = ["quote0","quote1","quote2","quote3","quote4","quote5","quote6","quote7","quote8","quote9"]
    var arryIndex  = 0
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        view.backgroundColor = theme
        
        
        let themeValue = defaults.integer(forKey: "theme")
        
        if themeValue == 0
        {
            view.backgroundColor = UIColor.black
            
        }
        else{
            
            view.backgroundColor = UIColor.white
            
        }
        
        
        if imageBorder
        {
        
            quoteImageView.layer.borderColor = UIColor.red.cgColor
            quoteImageView.layer.borderWidth = 5.0
        }
        else{
            
            quoteImageView.layer.borderWidth = 0
        }
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<10 {
          quoteArry.append(String(i))
            
        }
    }
    
    @IBAction func backClicked(_ sender: Any) {
      
        if arryIndex>0 {
            arryIndex -= 1
            
            let imageName = quoteArry[arryIndex]
            let quoteImage = UIImage(named: imageName)
            quoteImageView.image = quoteImage
        }
        
    }
    
 
    @IBAction func nextClicked(_ sender: Any) {
        
        if arryIndex<quoteArry.count-1{
            arryIndex += 1
            
            let  imageName = quoteArry[arryIndex]
            let quoteImage = UIImage(named: imageName)
            quoteImageView.image = quoteImage
            
            
        }
        
    }
    
    
    @IBAction func favoriteClicked(_ sender: Any) {
        
        let savingDefault = UserDefaults.standard
        savingDefault.set(arryIndex, forKey: "Favorite")
    }
    
    
}
