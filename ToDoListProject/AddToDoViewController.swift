//
//  AddToDoViewController.swift
//  ToDoListProject
//
//  Created by 김나람 on 2021/12/31.
//

import UIKit

class AddToDoViewController: UIViewController {

    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        contentTextView.layer.borderColor = UIColor.gray.cgColor
        // 테투리 색상
        contentTextView.layer.borderWidth = 0.3
        // 테두리 두께
        contentTextView.layer.cornerRadius = 2.0
        // 모서리 둥글게
        contentTextView.clipsToBounds = true
    }
    
    @IBAction func addListItemAction(_ sender: Any) {
        
        let title = titleTextField.text!
        let content = contentTextView.text ?? ""
        
        // 'Done' 버튼이 클릭되었을 때 list에 데이터가 append
        let item: ToDoList = ToDoList(title: title, content: content)
        
        // ViewController에 생성한 전역변수에 append
        list.append(item)
        
        // 리스트 화면으로 돌아가기
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
