//
//  TableViewCell.swift
//  CicekSepeti
//
//  Created by İlayda Metin on 23.08.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cicekImage: UIImageView!
    
    @IBOutlet weak var urunAdi: UILabel!
    
    @IBOutlet weak var urunTeslimat: UILabel!
    
    @IBOutlet weak var urunFiyat: UILabel!
    
    @IBOutlet weak var taksitFiyat: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
