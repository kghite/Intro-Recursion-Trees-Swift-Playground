/*:
 ![Make School Banner](./swift_banner.png)
 # Drawing trees with recursion

 - callout(Recap): Recusion is the act of calling a function from inside itself.

 ## Let's take a look at those trees again...

 - callout(One level tree): ![](tree1.png)

 - callout(Two level tree): ![](tree2.png)

 - callout(Three level tree): ![](tree3.png)

 - callout(Four level tree): ![](tree4.png)

 ## Thinking recursively

 If recursion is "calling a function from inside the original function", then that means we need to start thinking of trees in terms of "cases". If we can define a _n_ level tree in terms of a _n - 1_ level tree, then we can write this code recursively! Throughout this page we will rewrite our tree functions. In each _n_ level tree function, we will make a call to the _n - 1_ level tree function.

 We'll start with a one level tree. We're going to refer to a one level tree as the _base case_. In terms of _n_, the _base case_ is when `n = 1`. The _base case_ is the final, most simple case. It ends the recursion and stops the function calls from going any deeper.

 To draw a one level tree we would code something like this...

 */
func drawOneLevelTree() {
    move(75)
    move(-75)
}
/*:

 ## Tree for n = 2

 This time, instead of limiting ourselves to _just_ `move` and `rotate`, you can also use `drawOneLevelTree` from inside of `drawTwoLevelTree`!

 - callout(Challenge): Complete the definition for `drawTwoLevelTree`. Make sure the _fox_ ends up back at the same spot it started!

 */

func drawTwoLevelTree() {
    move(75)
    rotate(30)
    drawOneLevelTree()
    rotate(-60)
    drawOneLevelTree()
    rotate(30)
    move(-75)
}

/*:

 ## Tree for n = 3

 You know the drill! You can also use `drawTwoLevelTree` from inside of `drawThreeLevelTree`!

 - callout(Challenge): Complete the definition for `drawThreeLevelTree`. Make sure the _fox_ ends up back at the same spot it started!

 */

func drawThreeLevelTree() {
    move(75)
    rotate(30)
    drawTwoLevelTree()
    rotate(-60)
    drawTwoLevelTree()
    rotate(30)
    move(-75)
}

/*:

 ## Tree for n = 4

 You know the drill! You can also use `drawThreeLevelTree` from inside of `drawFourLevelTree`!

 - callout(Challenge): Complete the definition for `drawFourLevelTree`. Make sure the _fox_ ends up back at the same spot it started!

 */

func drawFourLevelTree() {
    move(75)
    rotate(30)
    drawThreeLevelTree()
    rotate(-60)
    drawThreeLevelTree()
    rotate(30)
    move(-75)
}

//: Keep this function call here! It's been passing the calls up the stack for us since the start of the playground!
drawFourLevelTree()
/*:

 Now the question is... are you seeing the recursive method here? Do you think you can create a `drawTree(levels: Int)` function?

 */
//: [Previous](@previous) | [Next](@next)





//: This is setup code to make the live visualization work!
Pen.delay = 0.2
import XCPlayground
import Foundation
let results = DrawingScene.setup()
XCPlaygroundPage.currentPage.liveView = results
