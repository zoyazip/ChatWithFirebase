

import UIKit
import FirebaseCore
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            Auth.auth().signIn(withEmail: email, password: password){ [weak self] authresult, error in
                if let e = error{
                    //print(e.localizedDescription)
                }
                else{
                    self!.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                }
            }
        }
    }
}