//
//  ViewController.swift
//  DarkTheme
//
//  Created by frensisa daudze on 03/04/2023.
//

import UIKit

class ThemeViewController: UIViewController {

    @IBOutlet weak var darkButton: UIButton!
    var mainText: String = "Dark Theme Off"
    
    var darkIsOn: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad from ViewController")
        darkButton.layer.cornerRadius = 8
        darkButton.setTitle(mainText, for: .normal)
        navigationItem.title = mainText
    }


    @IBAction func darkThemeButtonTapped(_ sender: Any) {
        darkThemeIsOn(isOn: darkIsOn)
        darkIsOn = !darkIsOn
    }
    
    @IBAction func plusButtonTapped(_ sender: Any) {
        basicAlert(title: "Add New?", message: "Do You want to add new...?")
    }
    
    
    @IBAction func infoButTapped(_ sender: Any) {
        basicActionAlert(title: "Action Sheet is On!", message: "All Good Here")
    }
    
    
    func darkThemeIsOn(isOn: Bool){
        print("darkThemeButtonTapped")
//print(isOn)
        if(!isOn){
            mainText = "Dark Theme On"
            darkButton.setTitle("Dark Theme On", for: .normal)
            navigationItem.title = "Dark Theme On"
            darkButton.setTitleColor(UIColor.white, for: .normal)
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            view.backgroundColor = UIColor.black
        }else{
            mainText = "Dark Theme Off"
            darkButton.setTitle("Dark Theme Off", for: .normal)
            navigationItem.title = "Dark Theme Off"
            darkButton.setTitleColor(UIColor.black, for: .normal)
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
            view.backgroundColor = UIColor.white
        }
        
        
        
    }
}

