//
//  noteCell.swift
//  MyNotes
//
//  Created by marwa on 12/31/17.
//  Copyright © 2017 marwa. All rights reserved.
//

import UIKit

class noteCell: UITableViewCell {

    @IBOutlet weak var titlecell: UILabel!
    @IBOutlet weak var detailcell: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func loadcell(note:Notes) {
      titlecell.text = note.title
      detailcell.text = note.note
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
