//
//  RegisterViewController.swift
//  Eco_p
//
//  Created by 마혁진 on 2022/10/09.
//

import UIKit

class RegisterViewController: UIViewController {
    //MARK: - Properties
    var name: String = ""
    var birth: String = ""
    var gender: String = ""
    var email: String = ""
    var password: String = ""
    
    var userInfo: ((UserInfo) -> Void)?
    
    //유효성 검사를 위한 프로퍼티
    
    var isValidName = false {
        didSet {
            self.validateUserInfo()
        }
    }
    
    
    var isValidBirth = false {
        didSet {
            self.validateUserInfo()
        }
    }
    
    
    var isValidGender = true {
        didSet {
            self.validateUserInfo()
        }
    }
    
    
    var isValidEmail = false {
        didSet {
            self.validateUserInfo()
        }
    }
    
    
    var isValidPassword = false {
        didSet {
            self.validateUserInfo()
        }
    }
    
    @IBOutlet weak var signupButton: UIButton!
    
    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func backButton2(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    // TextFields
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var birthTextField: UITextField!
    
    
    @IBOutlet weak var genderTextField: UITextField!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var textFields: [UITextField] {
        [nameTextField, birthTextField, genderTextField, emailTextField, passwordTextField]
    }
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField()
        
        //bug fix
        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
        
    }
    
    
    
    
    
    
    //MARK: - Actions
    @objc
    func textFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
        
        switch sender {
        case nameTextField:
            self.isValidName = text.count >= 2
            self.name = text
            
        case birthTextField:
            self.isValidBirth = (text.count == 6)
            self.birth = text
            
        case genderTextField:
            self.gender = text
            
        case emailTextField:
            self.isValidEmail = text.isValidEmail()
            self.email = text
            
        case passwordTextField:
            self.isValidPassword = text.isValidPassword()
            self.password = text
            
        default:
            fatalError("Missing text box!")
        }
    }
    
    
    @IBAction func registerButtonDidTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
        let userInfo = UserInfo(name: self.name , birth: self.birth, gender: self.gender, email: self.email, password: self.password)
        
        self.userInfo?(userInfo)
    }
    
    
    
    //MARK: - Helpers
    private func setupTextField() {
        textFields.forEach() { tf in tf.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)}
    }
    
    private func validateUserInfo() {
        
        if isValidName && isValidBirth && isValidEmail && isValidGender && isValidPassword {
            
            self.signupButton.isEnabled = true
            UIView.animate(withDuration: 0.33){
                self.signupButton.backgroundColor = UIColor.ecorecoColor
            }
        } else {
            self.signupButton.isEnabled = false
            UIView.animate(withDuration: 0.33){
                self.signupButton.backgroundColor = UIColor.disabledButtonColor
            }

        }
    }
    
}

//정규표현식

extension String {
    
    //대문자, 소문자, 특수문자, 숫자, 8자 이상일 때 True
    func isValidPassword() -> Bool {
        let regularExpression = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[$@$!%*?&])[A-Za-z\\d$@$!%*?&]{8,}"
        
        let passwordValidation = NSPredicate.init(format: "SELF MATCHES %@", regularExpression)
        
        return passwordValidation.evaluate(with: self)
        
    }
    // @이 있고, 2자 이상일 때 True
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        
        return emailTest.evaluate(with: self)
    }
    
}
