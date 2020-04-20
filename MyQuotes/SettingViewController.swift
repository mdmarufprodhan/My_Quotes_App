//
//  SettingViewController.swift
//  MyQuotes
//
//  Created by Md Maruf Prodhan on 12/4/2563 BE.
//  Copyright © 2563 Md Maruf Prodhan. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var settingLabels: [UILabel]!
    
    @IBOutlet weak var segmentedTheme: UISegmentedControl!
    
    
    @IBOutlet weak var switchBorder: UISwitch!
    
    
    @IBOutlet weak var stepperFavorite: UIStepper!
    
    let defaults = UserDefaults.standard
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        view.backgroundColor = theme
        
        let themeValue = defaults.integer(forKey: "theme")
        
        if themeValue == 0
        {
            view.backgroundColor = UIColor.black
            
            changedTheme(color: UIColor.white)
        }
        else{
            
            view.backgroundColor = UIColor.white
            
            changedTheme(color: .black)
        
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func segmentedChanged(_ sender: Any) {
        
        let index = segmentedTheme.selectedSegmentIndex
        
        defaults.set(index, forKey: "theme")
        
        if index == 0{
            theme = UIColor.black
            
            changedTheme(color: UIColor.white )
        }
        else{
            theme = UIColor.white
            
            changedTheme(color: UIColor.black)
        }
        
        view.backgroundColor = theme
    }
    

    @IBAction func switchChanged(_ sender: Any) {
        
        if switchBorder . isOn
        {
            imageBorder = true
        }
        else{
            
            imageBorder = false
        }
        
    }
    func changedTheme(color: UIColor) {
        
        for label in settingLabels {
            
            label.textColor = UIColor.black
        }
        
        segmentedTheme.tintColor = color
        switchBorder.onTintColor = color
        stepperFavorite.tintColor = color
    }
    
}
