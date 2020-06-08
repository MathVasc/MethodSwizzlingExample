/*:

# View Did Load

With Swizzling

*/

import UIKit

extension UIViewController {

    @objc func swizzleViewDidLoad() {
        swizzleViewDidLoad()
        Analytics.viewLoaded()
    }

    static func swizzle() {
        let selector1: Selector = #selector(viewDidLoad)
//        let selector2: Selector = Selector(("swizzleViewDidLoad"))
        let selector2: Selector = #selector(swizzleViewDidLoad)

        let originalMethod: Method? = class_getInstanceMethod(self, selector1)
        let swizzledMethod: Method? = class_getInstanceMethod(self, selector2)

        if let originalMethod = originalMethod, let swizzledMethod = swizzledMethod {
            method_exchangeImplementations(originalMethod, swizzledMethod)
        }
    }

}

UIViewController.swizzle()

let viewController = UIViewController()
viewController.viewDidLoad()

// Comment the line below to see what a not undone swizzle can do in a project
UIViewController.swizzle()

/*:

 This way any view controller will call the analytics in the `viewDidLoad`.

 However, it is important to note

 > 1. The swizzle should be called at some point
 > 2. To a function be able to be swizzled it should be opened to the **Obj-c** using the notation `@objc`
 > 3. It is good practice to undo the Swizzle (unexpected behaviors can happen if you don't)
 > 4. To avoid other unexpected behaviors, it's recommended to always call the original implementation. To do so, you should call the method inside itself. It can be strange, but this will not cause an infinite loop, since after the swizzle when you call the function, it will execute the other swizzled function implementation.

 [Back](Start)

*/
