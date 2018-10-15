//
//  LoginViewController.swift
//  snapMatch
//
//  Created by Sebastian Misas on 10/11/18.
//  Copyright © 2018 Apps global. All rights reserved.
//

import UIKit
import SimpleAnimation

class LoginViewController: UIViewController {

    var timer: Timer?
    @IBOutlet weak var loginSnapBtn: UIButton!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var snapIcon: UIImageView!
    @IBOutlet weak var view1: UIImageView!
    @IBOutlet weak var view3: UIImageView!
    @IBOutlet weak var view2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginSnapBtn.layer.cornerRadius = 35
        loginSnapBtn.clipsToBounds = true
        background.layer.cornerRadius = 35
        background.clipsToBounds = true
        loginSnapBtn.isHidden = true
        background.isHidden = true
        snapIcon.isHidden = true
        logo.isHidden = true
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { (timer) in
            self.loginSnapBtn.popIn()
            self.background.popIn()
            self.snapIcon.popIn()
            self.logo.bounceIn(from: .top)
        }
        
        view1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        view2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        view3.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
       
        UIView.animate(withDuration: 2.0,
                       delay: 0,
                       usingSpringWithDamping: 0.2,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        
                        self?.view1.transform = .identity
                        self?.view2.transform = .identity
                        self?.view3.transform = .identity
                        
            },
                       completion: nil)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func loginWithSnap(_ sender: Any) {
//        SCSDKLoginClient.login(from: self, completion: { success, error in
//
//            if let error = error {
//                print(error.localizedDescription)
//                return
//            }
//
//            if success {
//                self.fetchSnapUserInfo()
//            }
//        })
    }
    
//    private func fetchSnapUserInfo(){
//        let graphQLQuery = "{me{displayName, bitmoji{avatar}}}"
//        
//        SCSDKLoginClient
//            .fetchUserData(
//                withQuery: graphQLQuery,
//                variables: nil,
//                success: { userInfo in
//                    
//                    if let userInfo = userInfo,
//                        let data = try? JSONSerialization.data(withJSONObject: userInfo, options: .prettyPrinted),
//                        let userEntity = try? JSONDecoder().decode(UserEntity.self, from: data) {
//                        
//                        DispatchQueue.main.async {
//                            self.goToLoginConfirm(userEntity)
//                        }
//                    }
//            }) { (error, isUserLoggedOut) in
//                print(error?.localizedDescription ?? "")
//        }
//    }

}
