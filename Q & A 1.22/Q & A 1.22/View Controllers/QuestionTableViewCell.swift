import UIKit

class QuestionTableViewCell: UITableViewCell {

    static let reuseIdentifer = "QuestionCell"

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
}
