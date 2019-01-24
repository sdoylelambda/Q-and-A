import UIKit

class QuestionTableViewController: UITableViewController {

 let questionController = QuestionController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: QuestionTableViewCell.reuseIdentifer, for: indexPath) as? QuestionTableViewCell else { return UITableViewCell() }

        let question = questionController.questions[indexPath.row]
        cell.question = question

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let question = questionController.questions[indexPath.row]
            questionController.deleteQuestion(question: question)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {}
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ShowAnswer") {
            guard let showAnswerVC = segue.destination as? AnswerViewController else { return }
            showAnswerVC.questionController = questionController
        
        } else if (segue.identifier == "AskQuestionSegue") {
            guard let askQuestionSegueVC = segue.destination as? AskQuestionViewController else { return }
            askQuestionSegueVC.questionController = questionController
        }
    }
    

}
