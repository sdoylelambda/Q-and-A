import Foundation

struct Question {
    let question: String
    let asker: String
    let answer: String?
    let answerer: String?
    
    init(question: String, asker: String, answer: String?, answerer: String?) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
}
