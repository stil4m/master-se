# Lamsweerde - Requirements Engineering

## Intro

Requirements Engineering is about:

* **What** problem should be solved;
* **Why*** such a problem needs to be solved;
* and **who** should be involved in the responsibility of solving that problem.

The solution is a machine that shares a phenomena with the world. This machine monitors some of the shared phenomena while controlling others in order to implement the requirements.

Requirements engineering is concerned with the machine's effect on the surrounding world and the assumptions we make about the world. As a consequence, it is solely concerned with world phenomena, including shared ones. Requirements and assumptions have their meaning in the world. In contrast, software design is concerned with machine phenomena.

Two concepts that (should) drive requirements engineering are:

* The **system-as-is**, the system as is exists before the machine is build into it.
* The **system-to-be**, the system as it should be *when the machine will be built* and operated in it.

There is always a system-as-is.

Other components that exist in the machine's surrounding world are called its **environment**. These components could be:

* People or business units
* Physical devices
* Legacy, off-the-shelf or foreign software components

## Why, What and Who

The **system-as-is** has problems, deficiencies and limitations, the **system-to-be** is intended to address those problems based on technology opportunities and in the end what matters is the **satisfactory** working of the software-environment pair.

### Why

The reasons for a new version of a system must be made explicit in terms of objectives to be satisfied by it. This contains:

* Acquiring domain knowledge
* Evaluating alternative options in the problem world
* Evaluating technology opportunities
* Handling conflicts.

### What

The *what* in requirements engineering is concerned with the **functional services** that the **system-to-be** should provide to satisfy the objectives identified along the why in RE.

### Who

The *who* is addressing the assignment of responsibilities for achieving the objectives, services and constraints among the components of the **system-to-be** - humans, devices or software.

When we select responsibility assignments from multiple alternatives, we make decisions on what is going to be automated in the **system-to-be** and what is not. The boundary between the **software-to-be** and its environment thus emerges from such decisions. This boundary is rarely fixed a priori when the RE process starts.


## Types of Statements in Requirements Engineering

**Descriptive** statements state properties about the system that hold regardless of how the system behaves. Such properties hold typically because of some natural law or physical constraint. For example: 'The same book copy cannot be borrowed by two different people at the same time'.

**Prescriptive** statements state desirable properties about the system that may hold or not depending on how the system behaves. For example: 'A patron may not borrow more than three books at the same time'.

We may need to negotiate, weaken, change or find alternatives to **prescriptive** statements. We cannot negotiate, weaken, change or find alternatives to **descriptive** statements. 'Grades should be entered in Blackboard' is **prescriptive**.

A phenomenon is owned by the **software-to-be** (the machine), by its environment, or shared among them.

A **system requirement** is a **prescriptive** statement to be enforced by the **software-to-be**, possibly in cooperation with other system components, and formulated in terms of environmental phenomena.

A **software requirement** is a prescriptive statement to be enforced solely by the **software-to-be** and formulated only in terms of phenomena shared between the software and the environment. Software requirements are to be used by developers; they are formulated in the vocabulary of developers, in terms of software input/output variables.

A **domain property** is a descriptive statement about the problem world. For example: 'A book may not be borrowed and available at the same time'.

An **assumption** is a statement to be satisfied by the environment and formulated in terms of environmental phenomena. For example: 'A train's measured speed is non-null if and only if its physical speed is non-null'.

**Definitions** allow domain concepts and auxiliary terms to be given a precise, complete and agreed meaning - the same meaning for everyone. For example :A patron is any person who has registered at the corresponding library for the corresponding period of time. Definitions need to be checked for accuracy, completeness and adequacy.

In the view of their difference in mood and scope, the statements emerging from the RE process should be 'typed' when we document them. Anyone using the documentation can then directly figure out whether a statement is a requirement, a domain property, an assumption or a definition.

There are different types of variables that are used in the statements. These different types of variables yield a more explicit framework for control systems, known as the **four-variable model**. These variables are:

* **Monitored variables**: environmental quantities that the software monitors through input devices such as sensors.
* **Controlled variables**: environmental quantities that the software controls through output devices such as actuators.
* **Input variables**: data items that the software needs as input.
* **Output variables**: quantities that the software produces as output.

A system requirement **SysReq** is a relation between a set $M$ of monitored variables and a corresponding set $C$ of controlled variables:

$SysReq \subseteq M \times C$

A software requirement **SofReq** is a relation between a set $I$ of input variables and a corresponding set $O$ of output variables:

$SysReq \subseteq I \times O$

A software requirement **SofReq** translates the corresponding system requirement **SysReq** in the vocabulary of the software's input/output variables.

Such translation of a system requirement into a software requirement is not a mere reformulation obtained by mapping the environment's vocabulary into the software's one. Domain properties and assumptions are often required to ensure the 'correctness' of the translation; that is, the **satisfaction** of the system requirement when the corresponding software requirement holds.
