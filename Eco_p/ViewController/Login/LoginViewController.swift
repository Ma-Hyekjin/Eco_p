//
//  ViewController.swift
//  Eco_p
//
//  Created by 마혁진 on 2022/10/09.
//

import UIKit

class LoginViewController: UIViewController {

    var email = String()
    var password = String()
    var userInfo: UserInfo?
    
    var adminId = "admin01@ecoreco.com"
    var adminPassword = "Ecoreco!!"
    
    func warningMessage() {
        //1. 경고창 내용 만들기
        let alert = UIAlertController(title:"이메일 혹은 비밀번호가 옳지 않습니다.",
            message: "",
            preferredStyle: UIAlertController.Style.alert)
        //2. 확인 버튼 만들기
        let cancle = UIAlertAction(title: "확인", style: .default, handler: nil)
        //3. 확인 버튼을 경고창에 추가하기
        alert.addAction(cancle)
        //4. 경고창 보이기
        present(alert,animated: true,completion: nil)
    }
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func emailTextFieldEdiringChanged(_ sender: UITextField) {
        
        let text = sender.text ?? ""
        self.email = text

    }

    @IBAction func passwordTextFieldEditingChanged(_ sender: UITextField) {
        
        let text = sender.text ?? ""
        self.password = text

    }
    
    @IBAction func loginButtonDidTap(_ sender: UIButton) {
        //회원 가입 정보 저장 후, 데이터 베이스 속 자료와 아이디 비밀번호가 같은지 확인하는 기능 추가 필요.
        //2022.10.06 - 관리자 계정이 맞다면 로그인 되도록 설정하였으나 데이터베이스 속에 담아내는 것으로 변경 필요. 혹은 새롭게 페이지를 연결하여 관리자는 사용자와 다른 기능들을 추가하여도 괜찮다고 생각함.
        if email == adminId && password == adminPassword {
            let tabViewController = storyboard?.instantiateViewController(identifier: "TabVC") as! UITabBarController
                
            self.navigationController?.pushViewController(tabViewController, animated: true)
        } else {
            warningMessage()
        }

    }
    
    @IBAction func skipButtonDidTap(_ sender: UIButton) {
        let tabViewController = storyboard?.instantiateViewController(identifier: "TabVC") as! UITabBarController
        
        self.navigationController?.pushViewController(tabViewController, animated: true)
    }
    
    @IBAction func registerButtonDidTap(_ sender: UIButton) {
        //화면 전환
        // 1. 스토리보드 생성
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // 2. 뷰 컨트롤러 생성
        let registerViewController = storyboard.instantiateViewController(withIdentifier: "RegisterVC") as! RegisterViewController
        // 3. 화면전환 메소드를 이용해서 화면을 전환
     
        self.navigationController?.pushViewController(registerViewController, animated: true)
    
        registerViewController.userInfo = { (userInfo) in print(userInfo)}
    
    }
    
}

