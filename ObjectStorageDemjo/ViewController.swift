//
//  ViewController.swift
//  ObjectStorageDemjo
//
//  Created by Tatiana Pasechnik on 16/03/23.
//

import UIKit
var students = [Student]()
func showMessage(msg:String, controller: UIViewController)

{
    let alert = UIAlertController(title: "", message: msg, preferredStyle: .actionSheet);
    let action = UIAlertAction(title: "OK", style: .default)
    {
        action
        in
        controller.dismiss(animated: true, completion: nil)
    }
    alert.addAction(action)
    controller.present(alert, animated: true, completion :nil)
    
}

class ViewController: UIViewController {

    @IBOutlet weak var marksTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addButton(_ sender: UIButton) {
        
        var textFieldsArray = [UITextField]()
        var emptyFieldsArray = [UITextField]()
        
        for view in self.view.subviews{
            if view is UITextField {
                textFieldsArray.append(view as! UITextField)
            }
        }
        
        for field in textFieldsArray
        {
            if field.text!.isEmpty
            {
                field.backgroundColor = UIColor.red
                showMessage(msg: "Missing data", controller: self)
                emptyFieldsArray.append(field)
            }
        }
        
        if emptyFieldsArray.isEmpty
        {
            let sid = Int (idTextField.text!)
            let sname = nameTextField.text!
            let semail = emailTextField.text!
            let smarks = Double(marksTextField.text!)
            
            let st = Student(id: sid!, name: sname, email: semail, marks: smarks!)
            students.append(st)
            showMessage(msg: "Student added successfully", controller: self)
            idTextField.text = ""
            nameTextField.text = ""
            emailTextField.text = ""
            marksTextField.text = ""
        }
 
       
    }
}

