//
//  NewNoteVC.swift
//  Polydev
//
//  Created by Khamitov Darkhan on 8/3/21.
//

import UIKit

class NewNoteVC: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(kbDidShow), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(kbDidHide), name: UIResponder.keyboardDidHideNotification, object: nil)
        
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    @objc func kbDidShow(notification: Notification){
        guard let userInfo = notification.userInfo else {return}
        let kbFrameSize = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        
        let buttonBackground = UIView()
      
    
        let button = UIButton()
        view.addSubview(buttonBackground)
        buttonBackground.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Add note", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.heightAnchor.constraint(equalToConstant:  50).isActive = true
        button.widthAnchor.constraint(equalToConstant:  250).isActive = true
        button.layer.cornerRadius = 20
        button.centerXAnchor.constraint(equalTo: buttonBackground.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: buttonBackground.centerYAnchor).isActive = true
        button.clipsToBounds = true

        

        buttonBackground.backgroundColor = .white
        buttonBackground.translatesAutoresizingMaskIntoConstraints = false
        buttonBackground.heightAnchor.constraint(equalToConstant:  100).isActive = true
        buttonBackground.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor).isActive = true
        buttonBackground.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonBackground.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -kbFrameSize.height + 50).isActive = true
        buttonBackground.layer.cornerRadius = 20
        buttonBackground.tag = 100
        
    }
    
    @objc func kbDidHide(notification: Notification){
        if let viewWithTag = self.view.viewWithTag(100) {
                viewWithTag.removeFromSuperview()
            }else{
                print("No!")
            }
       
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
