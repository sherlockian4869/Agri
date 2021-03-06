import UIKit

class MatterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    static let identifier = "MatterCollectionViewCell"
    static let aspectRatio: CGFloat = 4 / 3

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 25
    }

    static func nib() -> UINib {
        return UINib(nibName: "MatterCollectionViewCell", bundle: nil)
    }
}
