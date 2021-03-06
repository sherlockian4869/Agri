import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    var email = ""
    var password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let userEmail = UserDefaults.standard.object(forKey: "userEmail") {
            email = userEmail as! String
        }
        if let userPass = UserDefaults.standard.object(forKey: "userPassword") {
            password = userPass as! String
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
            } else {
                let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
    }
    
    func setUpElements() {
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(loginButton)
    }

}
