/*:

## Problem?
If you need to create a Navigation Controller?

Or a Table View Controller?

 */

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Analytics.viewLoaded()
    }

}

class BaseTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Analytics.viewLoaded()
    }

}

class MyNavigationViewController: BaseNavigationController {
    // Some Code
}

let navigationController = MyNavigationViewController()
navigationController.viewDidLoad()


class MyTableViewController: BaseTableViewController {
    // Some Code
}

let tableViewController = MyTableViewController()
tableViewController.viewDidLoad()

/*:

 > Eventually, you can have N Bases Controllers that can make your code difficult to scale and maintain

[Back](@previous)

[Back to start](Start)

*/
