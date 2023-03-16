//
//  Student.swift
//  ObjectStorageDemjo
//
//  Created by Tatiana Pasechnik on 16/03/23.
//

import Foundation
class Student
{
    var id : Int
    var name : String
    var email : String
    let institue = "MIT"
    var marks : Double
    
    init(id: Int, name: String, email: String, marks: Double) {
        self.id = id
        self.name = name
        self.email = email
        self.marks = marks
    }
    
    /*func setMarks(mrks :Double)
    {
        if mrks >= 0 && mrks <= 100
        {
            self.marks = mrks
        }
    }
     */
    
}
