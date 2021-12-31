//
//  ToDoList.swift
//  ToDoListProject
//
//  Created by 김나람 on 2021/12/31.
//

import Foundation

struct ToDoList {
    var title: String = ""
    var content: String?
    var isComplete: Bool = false
    
    init(title: String, content: String?, isComplete: Bool = false) {
        self.title = title
        self.content = content
        self.isComplete = isComplete
    }
}
