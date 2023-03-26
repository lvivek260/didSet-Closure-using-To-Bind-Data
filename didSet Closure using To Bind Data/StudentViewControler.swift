//
//  ViewController.swift
//  didSet Closure using To Bind Data
//
//  Created by Admin on 26/03/23.
//

import UIKit

class StudentViewControler: UIViewController {

    @IBOutlet weak var studentTableView: UITableView!
    let students : [Student] = [
        Student(name: "Vivek", age: 1, marks: 1),
        Student(name: "Pavan", age: 12, marks: 13),
        Student(name: "Rahul", age:31, marks: 51),
        Student(name: "Kumar", age: 51, marks: 71),
        Student(name: "Shubham", age: 31, marks: 71)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
}

extension StudentViewControler : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = studentTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        cell.object = students[indexPath.row]
        return cell
    }
}
extension StudentViewControler : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
