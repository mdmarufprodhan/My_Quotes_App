//
//  HomeViewController.swift
//  MyQuotes
//
//  Created by Md Maruf Prodhan on 9/4/2563 BE.
//  Copyright © 2563 Md Maruf Prodhan. All rights reserved.
//

import UIKit
var theme : UIColor = UIColor.black

class HomeViewController: UIViewController
{

    @IBOutlet weak var quoteImageView: UIImageView!
    var quoteArry = ["quote0","quote1","quote2","quote3","quote4","quote5","quote6","quote7","quote8","quote9"]
    var arryIndex  = 0
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        view.backgroundColor = theme
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
