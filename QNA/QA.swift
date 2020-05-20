//
//  QA.swift
//  QNA
//
//  Created by 維衣 on 2020/5/20.
//  Copyright © 2020 Lydia-L. All rights reserved.
//

import Foundation

class Database {
    var question = ""
    var answer = ""
    
    init(question:String,answer:String) {
        self.question = question
        self.answer = answer
    }
}

    var qnaArray = [Database(question: "切手", answer: "郵票"),
    Database(question: "床",answer: "地板"),
    Database(question: "勉強",answer: "學習、讀書"),
    Database(question: "女優",answer: "女演員"),
    Database(question: "愛人",answer: "小三、小王、外遇對象"),
    Database(question: "邪魔",answer: "妨礙、打擾"),
    Database(question: "暗算",answer: "心算"),
    Database(question: "大家",answer: "房東"),
    Database(question: "面白",answer: "有趣"),
    Database(question: "我慢",answer: "忍耐")]
