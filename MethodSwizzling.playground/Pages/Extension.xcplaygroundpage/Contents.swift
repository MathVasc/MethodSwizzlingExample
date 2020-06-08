/*:

# View Did Load

With Extension

*/

import UIKit

extension UIViewController {

    func viewDidLoad() {
        Analytics.viewLoaded()
    }

}

class MyViewController: UIViewController {
    // Some Code

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

let viewController = MyViewController()
viewController.viewDidLoad()

/*:

 You can see that this is a problem with the log.

 ```swift
 error: ambiguous use of 'viewDidLoad()'
 ```
 This is because what has been done is an overload of the `viewDidLoad()` signature without any changes.

 This means that two methods with the same `Selector` are created and this confuses our compiler in **Runtime** since the **Dispatch Table** has two identical keys.

 [Back](Start)

 */
