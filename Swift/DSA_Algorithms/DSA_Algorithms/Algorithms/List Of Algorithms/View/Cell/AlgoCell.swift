//
//  AlgoCell.swift
//  DSA_Algorithms
//
//  Created by iApple Basement on 19/11/2023.
//

import UIKit

class AlgoCell: UITableViewCell {

    // UI COMPONENT'S
    @IBOutlet weak var algoName: UILabel!
    
    // DATA MEMBER'S
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func config(algoData:ListOfAlgoModel) {
        
        self.algoName.text = algoData.algoName
        
    }
    
}
