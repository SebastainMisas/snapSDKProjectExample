//
//  HomeViewController.swift
//  niply
//
//  Created by Sebastian Misas on 10/11/18.
//  Copyright © 2018 Apps global. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    // no swiping, scrolling, pointless messaging
    
    @IBOutlet weak var backgroundBtnView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var likeBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        likeBtn.isHidden = true
        likeBtn.layer.cornerRadius = likeBtn.frame.height / 2
        likeBtn.clipsToBounds = true
        likeBtn.imageView?.contentMode = UIViewContentMode.scaleAspectFill
        backgroundBtnView.layer.cornerRadius = backgroundBtnView.frame.height / 2
        backgroundBtnView.clipsToBounds = true
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { (timer) in
            self.likeBtn.popIn()
        }
        // Do any additional setup after loading the view.
    }
    @IBAction func like(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell",
                                                 for: indexPath) as! UserTableViewCell
        
        return cell
    }

}
