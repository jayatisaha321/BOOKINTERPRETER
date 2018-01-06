//
//  LoginViewController.swift
//  BOOKINTERPRETER
//
//  Created by J Saha  on 23/11/17.
//  Copyright © 2017 J Saha . All rights reserved.
//

import UIKit

class LoginViewController: GlobalViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var userEmailView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("stageView.frame = \(userEmailView.frame)")
        userEmailView.cornerRadius = userEmailView.frame.size.width / 12
        passwordView.cornerRadius = userEmailView.cornerRadius
        loginBtn.cornerRadius = userEmailView.cornerRadius
        userEmailView.borderWidth = 2.0
        userEmailView.borderColor = UIColor(hex: "BFC0C2").cgColor
        passwordView.borderWidth = userEmailView.borderWidth
        passwordView.borderColor = userEmailView.borderColor
        print("stageView.frame = \(userEmailView.frame)\(userEmailView.cornerRadius)")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    @IBInspectable var borderColor: CGColor {
        get {
            return layer.borderColor!
        }
        set {
            layer.borderColor = newValue
        }
    }
}

extension UIColor {
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
}

