

import UIKit
 
class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var subSectionLabel: UILabel!
    @IBOutlet var subSectionImage: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        subSectionImage.layer.cornerRadius = 8
    }
    
    public func configure(with model: Model) {
        self.subSectionLabel.text = model.text
        self.subSectionImage.image = UIImage(named: model.imageName)
        self.subSectionImage.contentMode = .scaleToFill
    }

}
