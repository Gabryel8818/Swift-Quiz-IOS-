//
//  ResultViewController.swift
//  Swift-Quiz
//
//  Created by user156551 on 23/01/20.
//  Copyright © 2020 GABRIEL MELO. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswered.text = "perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas corretas : \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        
        
        let score = totalCorrectAnswers*100/totalCorrectAnswers
        lbScore.text = "\(score)%"
    }
    

    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
