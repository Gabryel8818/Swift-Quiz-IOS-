//
//  QuizViewController.swift
//  Swift-Quiz
//
//  Created by user156551 on 23/01/20.
//  Copyright © 2020 GABRIEL MELO. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    
    @IBOutlet weak var ViTimer: UIView!
    @IBOutlet weak var LbQuestion: UILabel!
    @IBOutlet var btAnswer: [UIButton]!
    
    let quizManager = QuizManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        ViTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 20, delay: 0, options: .curveLinear, animations: {
            self.ViTimer.frame.size.width = 0
        }) { (sucess) in
            self.showResults()
        }
        
        
        getNewQuiz()
    }
    
    func getNewQuiz() {
        quizManager.refreshQuiz()
        LbQuestion.text = quizManager.question
        for i in 0..<quizManager.options.count {
            let option = quizManager.options[i]
            let button = btAnswer[i]
            button.setTitle(option, for: .normal)
        }
    } //function que traz um novo quiz a cada resposta
    
    func showResults() {
        performSegue(withIdentifier: "resultSegue", sender: nil)
        
    }// function que mostra os resultados a partir da segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.totalAnswers = quizManager.totalAnswers
        resultViewController.totalCorrectAnswers = quizManager.totalCorrectAnswers
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        let index = btAnswer.index(of: sender)!
        quizManager.validateAnswer(index: index)
        getNewQuiz()
    
    
    }
    
}
