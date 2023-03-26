//
//  StudentTableViewCell.swift
//  didSet Closure using To Bind Data
//
//  Created by Admin on 26/03/23.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    //Make : IBOutlets
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblMarks: UILabel!
    
    var object : Student?{
        didSet{
            lblName.text = "Name : \(object?.name ?? "")"
            lblAge.text = "Age : \(object?.age ?? 0)"
            lblMarks.text = "Marks : \(object?.marks ?? 0)"
        }
    }
  
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
