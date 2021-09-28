//
//  ViewController.swift
//  friendsBirthDay
//
//  Created by talha kaya on 31.03.2021.
//

import UIKit

class ViewController: UIViewController {
    //selam
    var name:String = ""
    
    var birthDay:String = ""
      
 
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var birthDayInput: UITextField!
    @IBOutlet weak var nameOutput: UILabel!
    @IBOutlet weak var birthDayOutput: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let savedName = UserDefaults.standard.object(forKey: "names")
        let savedBirthday = UserDefaults.standard.object(forKey: "birthdays")
        if let newName = savedName as? String{
            nameOutput.text = "name: \(newName)"
            }
        if let newBirthday = savedBirthday as? String{
            birthDayOutput.text = "birthday: \(newBirthday)"
            }
        }
    @IBAction func save(_ sender: Any) {
        
        UserDefaults.standard.set(nameInput.text!, forKey: "names")
        UserDefaults.standard.set(birthDayInput.text!, forKey: "birthdays")
        name = nameInput.text!
        birthDay = birthDayInput.text!
        birthDayOutput.text = "birthday:\(birthDay)"
        nameOutput.text = "name:\(name) "
    }
    
    @IBAction func savedDelete(_ sender: Any) {
        
        let savedName = UserDefaults.standard.object(forKey: "names")
        let savedBirthday = UserDefaults.standard.object(forKey: "birthdays")
        
         if (savedName as? String) != nil {
            
            UserDefaults.standard.removeObject(forKey: "names")
            nameOutput.text = "name: "
            }
         if (savedBirthday as? String) != nil {
            
            UserDefaults.standard.removeObject(forKey: "birthdays")
            birthDayOutput.text = "birthday: "
            
        }
 
        
    }
    
    }

