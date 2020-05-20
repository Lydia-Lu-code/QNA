//
//  ViewController.swift
//  QA問答2
//
//  Created by 維衣 on 2020/5/17.
//  Copyright © 2020 Lydia-L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var count = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        qnaArray.shuffle()
        nextQuestion()
        resetButton.isHidden = true
    }
    
    func reset() {
        count = 0
        resetButton.isHidden = false
        answerLabel.isHidden = true
    }
    
    func nextQuestion(){
        //打亂陣列
        questionLabel.text = qnaArray[count].question
        answerLabel.text = qnaArray[count].answer
        
        countLabel.text = "第\(count+1)題"
        answerLabel.isHidden = true
    }
    
    
    @IBAction func nextButton(_ sender: UIButton) {
        //跑完10次後,出現重新開始Button
        count += 1
        
        if count < 10{
            questionLabel.isHidden = false
            nextQuestion()
        }else if count == 10{
            //關閉Label與Button
            questionLabel.isHidden = true
            answerButton.isHidden = true
            nextButton.isHidden = true
            //出現 ResetButton
            reset()
            //跳到下一題
            nextQuestion()
        }
    }
        
    @IBAction func answerButton(_ sender: UIButton) {
        //點擊後出現答案Label
        answerLabel.isHidden = false
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        count = 0
        self.viewDidLoad()
        questionLabel.isHidden = false
        answerButton.isHidden = false
        nextButton.isHidden = false
    }
}

