/*:

 # View Did Load

 With Inheritance

 */

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Analytics.viewLoaded()
    }

}

class MyViewController: BaseViewController {
    // Some Code
}

let viewController = MyViewController()
viewController.viewDidLoad()

/*:

 ## Problem?
 If you need to create a Navigation Controller?

 Or a Table View Controller?

 [See the problem](InheritanceProblem)

 [Back](Start)

 */
