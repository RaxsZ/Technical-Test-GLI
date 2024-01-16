//
//  StudentableViewCell.swift
//  TechnicalTest
//
//  Created by Rakha Aiman Mumtaz on 16/01/24.
//

import UIKit

class StudentableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var studentImage: UIImageView!
    
    @IBOutlet weak var studentNama: UILabel!
    
    
    @IBOutlet weak var studentAlamat: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(nama: String, alamat: String, image: UIImage?) {
            studentNama.text = nama
            studentAlamat.text = alamat
            studentImage.image = image
        }

}
