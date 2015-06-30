//  PersonCell.swift
//  FinalVer5
//
//  Created by Richard H Woolley on 6/22/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley.

import UIKit

public class PersonCell: UITableViewCell {  // deque of cell is cast to this type in ViewController.swift
  @IBOutlet weak var firstNameLabel: UILabel!
  @IBOutlet weak var lastNameLabel: UILabel!
  @IBOutlet var personImageView: UIImageView!

  @IBOutlet weak var charTitle: UILabel!



    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override public func setSelected(selected: Bool, animated: Bool) {  
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
