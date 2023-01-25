

import UIKit


class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        titleLabel.text = ""
        var characterIndex = 0.0
        let titleText = Constants.appName
        for char in titleText{
            Timer.scheduledTimer(withTimeInterval: characterIndex * 0.1, repeats: false) { timer in
                self.titleLabel.text?.append(char)
            }
            characterIndex += 1
        }
    }
    

}
