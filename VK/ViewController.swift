//
//  ViewController.swift
//  VK
//
//  Created by Aurelica Apps iOS Dev - 1 on 08/03/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var myImage: UIImageView!

    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passwordText: UITextField!

    @IBOutlet weak var myErrorLabel: UILabel!
    @IBAction func logInButton(_ sender: Any) {
        let login = loginText.text!
        // Получаем текст-пароль
        let password = passwordText.text!
        // Проверяем, верны ли они
        if login == "judge0636" && password == "34567" {
            myErrorLabel.text = "Congratulations"
        }
        if login == "" || password == "" {
            myErrorLabel.text = "Input your login/password"
            myErrorLabel.textColor = UIColor.red
        }
//        else {
//            myErrorLabel.text = "invalid user"
//        }
    }

    @objc func keyboardWasShown(notification: Notification) {
        // Получаем размер клавиатуры
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey:
                                    UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom:
                                            kbSize.height, right: 0.0)
        // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
        scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    //Когда клавиатура исчезает
    @objc func keyboardWillBeHidden(notification: Notification) {
        // Устанавливаем отступ внизу UIScrollView, равный 0
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Подписываемся на два уведомления: одно приходит при появлении клавиатуры

        NotificationCenter.default.addObserver(self, selector:
                                                #selector(self.keyboardWasShown), name:
                                                UIResponder.keyboardWillShowNotification, object: nil)
        // Второе — когда она пропадает
        NotificationCenter.default.addObserver(self, selector:
                                                #selector(self.keyboardWillBeHidden(notification:)), name:
                                                UIResponder.keyboardWillHideNotification, object: nil)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name:
                                                    UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name:
                                                    UIResponder.keyboardWillHideNotification, object: nil)
    }




    @objc func hideKeyboard() {
        self.scrollView?.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //  жест нажатия
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action:
        #selector(hideKeyboard))
        // Присваиваем его UIScrollVIew
        scrollView?.addGestureRecognizer(hideKeyboardGesture)


        // Do any additional setup after loading the view.
    }


    

}

