//
//  SearchViewController.swift
//  ObjectStorageDemjo
//
//  Created by Tatiana Pasechnik on 16/03/23.
//

import UIKit

func searchStudent (id:Int) ->Student?
{
    var student : Student! = nil
    for st in students
    {
        if st.id == id{
            student = st
            return student
        }
    }
    return nil
}
class SearchViewController: UIViewController {

    @IBOutlet weak var marksField: UILabel!
    @IBOutlet weak var emailField: UILabel!
    @IBOutlet weak var nameField: UILabel!
    @IBOutlet weak var idTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.isHidden = true
        nameField.isHidden = true
        marksField.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func searchBtn(_ sender: UIButton) {
        let sid = Int(idTextField.text!)
        let st = searchStudent(id: sid!)
        if st == nil
        {
            showMessage(msg: "Please enter ID", controller: self)
        }
        else{
            emailField.isHidden = false
            nameField.isHidden = false
            marksField.isHidden = false
            nameField.text = st?.name
            emailField.text = st?.email
            marksField.text = String(st!.marks)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
