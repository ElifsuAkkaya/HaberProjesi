import UIKit

class NewsCell: UITableViewCell {

    // Buraya bu satırı ekliyoruz, böylece ViewController'da hata almazsın
    static let reuseIdentifier = "NewsCell"

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var storyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
