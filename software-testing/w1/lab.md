# Lab 1: Functional Programming and (Some) Logic

#### 1. Implement and test the Luhn Algorithm

Very easy exercise. Interesting warm up to get familiar with the Haskell syntax. Not a real challenge.

#### 2. Crime Scene Investigation

Hard exercise due to the vague definition of _telling the truth_ and _telling lies_. I ended up with a implementation that was very naive. For example:

<pre>says Jack x = not (says Matthew x) && not (says Peter x)
</pre>

This statement would reflect _Jack says that Matthew and Peter are both lying._. However the statement does not say if Matthew and Peter lie about all their accusations, but the code assumes this.

If a more advanced implementation should be implemented then I am not sure if this is possible with the form that was handed with the exercise, because it would be more alike to epistemic logic.

#### 3. Bonus (Project Euler problems 9, 10 and 49.)

These problems were more easy than the second exercise. In the pre-master course 'functional programming' I already played a little bit with Haskell and Project Euler. I only had to implement problem 49. I wonder if problem 49 can be written more compact and if problem 10 could be implemented faster.

#### Sources

[Lab1/playground/mats](https://github.com/jdijt/software-testing---PT_MA2_1/tree/master/Lab1/playground/mats)

[Lab1/final](https://github.com/jdijt/software-testing---PT_MA2_1/tree/master/Lab1/final)
