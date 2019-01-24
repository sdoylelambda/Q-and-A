import UIKit

class AnswerViewController: UIViewController {
    
    var questionController: QuestionController?
    var question: Question?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answerTextView: UITextView!
    @IBOutlet weak var answererNameTextField: UITextField!

    
    @IBAction func submitAnswer(_ sender: Any) {
        guard let answererName = answererNameTextField.text,
                let answerText = answerTextView.text,
            let question = question else { return }
        questionController?.updateQuestion(question: question, answer: answerText, answerer: answererName)
        
        navigationController?.popViewController(animated: true)
    }
    
    func updateViews() {
        guard let question = question else { return }
        title = question.question
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
        guard let answerer = question.answerer,
            let answer = question.answer else { return }
        
        answererNameTextField.text = answerer
        answerTextView.text = answer
    }
    
}
