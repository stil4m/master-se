# Good Old Times

* Limited amount of memory.
* Can't ignore the size of the data to be processed.
* Rotating data.
* Not much identifiers, instead arrays. Low readability.
* Comment to explain obscure code.
* Will contain consideration for primary/secondary memory. What does need to be accessed faster.
* Constraints may be imposed externally (hardware/memory/compatibility of assembly).
* Constraints may be self imposed (follow this style, readibility, past experience).


# Go Forth

* Stack based programming model. Post fix notation.
* Access to a heap with named variables.
* Decompostion in smaller sub problems. Refilling the step with new data structures.
* Only on stack machine interpreters.


# Monolithic

* No named abstractions.
* No, to little, use of libraries.
* Program serves 1 goal only.
* no subdividing the problem, all tasks serve the unit.
* Commonly used with goto.
* 'Spaghetti code'.
* Fails to give the reader appropiate higher level abstraction.
* Considered as bad practice at all scales, but commonly used.

# Cookbook

* No long jumps.
* Divided in small units using procedural abstraction.
* Shared state over procedures.
* Solved with applying procedures that modify shared state.
* Contains side effects.
* Probably contains a list of function calls that looks like a recipe.
* Procedures are not idempotent.
* Relates to structured programming (no GOTO)

