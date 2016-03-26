# CVNavigationBarTest
A demo project for the animation issue when change navigation bar transparency back and forth.

Issue Reproduct Step:
1. Click one of the code block in the `Colors` view controller 
2. Click back button
3. Click one of the code block again.
4. See the problem

The first time clicking one of the color blocks in `Colors` view controller, the animation of transition is good and as expected.
However, when clicking one of the color blocks again after coming back from the second view controller, you can notice the 
navigation bar area immediately becomes black and then the animation of showing the second view controller starts. 
You can toggle the slow animation in simulator to see the problem more clearly. 
