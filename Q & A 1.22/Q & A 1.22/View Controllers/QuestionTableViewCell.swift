import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        questionLabel.text = question?.question
        askerLabel.text = question?.asker
        answerLabel.text = question?.answer
        question?.answer == nil ? (answerLabel?.text = "Can you answer this?") : (answerLabel?.text = "Tap to view the answer.")
    }

    static let reuseIdentifer = "QuestionCell"

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
}

