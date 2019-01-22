import UIKit

class AskQuestionViewController: UIViewController {
    
    var questionController: QuestionController?
    
    @IBAction func submitQuestionButton(_ sender: Any) {
        guard let question = submitQuestionTextField.text,
            let asker = submitQuestionTextView.text else { return }
        questionController?.createQuestion(question: question, asker: asker)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    
    
    @IBOutlet weak var submitQuestionTextField: UITextField!
    @IBOutlet weak var submitQuestionTextView: UITextView!
    
}
