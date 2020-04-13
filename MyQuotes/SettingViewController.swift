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
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        view.backgroundColor = theme
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func segmentedChanged(_ sender: Any) {
        
        let index = segmentedTheme.selectedSegmentIndex
        
        if index == 0{
            theme = UIColor.black
            
            for label in settingLabels {
                
                label.textColor = UIColor.white
            }
            
            segmentedTheme.tintColor = UIColor.white
            switchBorder.onTintColor = UIColor.white
            stepperFavorite.tintColor = UIColor.white
            
        }
        else{
            theme = UIColor.white
            
            for label in settingLabels {
                
                label.textColor = UIColor.black
            }
            
            segmentedTheme.tintColor = UIColor.black
            switchBorder.onTintColor = UIColor.black
            stepperFavorite.tintColor = UIColor.black
            
        }
        
        view.backgroundColor = theme
    }
    

    @IBAction func switchChanged(_ sender: Any) {
    }
    
}
