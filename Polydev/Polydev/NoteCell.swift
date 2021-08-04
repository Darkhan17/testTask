//
//  NoteCell.swift
//  Polydev
//
//  Created by Khamitov Darkhan on 8/3/21.
//

import UIKit

class NoteCell: UITableViewCell {

    @IBOutlet weak var noteImage: UIView!
    @IBOutlet weak var noteText: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var noteButton: UIButton!
    
  //  @IBOutlet weak var backView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        noteImage.layer.cornerRadius = noteImage.frame.width/4
        contentView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        backView.layer.cornerRadius = backView.frame.width/10
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
