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

An **assumption** is a statement to be satisfied by the environment and formulated in terms of environmental phenomena. For example: 'A train's measured speed is non-null if and only if its physical speed is non-null'. Assumptions are **accuracy** statements

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

To ensure that the software requirement **SofReq** correctly translates the system requirement **SysReq**, we need to identify the domain property **Dom** and the assumptions **Asm**, and make sure that those statements are actually satisfied.

Our job as requirements engineers is to elicit, make precise and consolidate requirements, assumptions and domain properties. Then we need to provide satisfaction arguments taking the following form:

$\{SOFREQ, ASM, DOM\} \vdash SysReq $

## Categories of requirements

**Functional requirements** refer to services that the **software-to-be** should provide, whereas **non-functional requirements** constrain how such services should be provided. Therefor **non-functional requirements** define constraints on the way **software-to-be** should satisfy its functional requirements or on the way it should be developed.

These non-functional requirements include the following classes:

* Quality of service
  * Safety
  * Security 
    * Confidentiality
    * Integrity
  * Reliability
  * Performance
    * Time
    * Space
    * Cost
  * Interface
    * User interaction
      * Usability
      * Convenience
    * Device interaction
    * Software interoperability
  * Accuracy
* Compliance
* Architectural constraint
  * Installation
  * Distribution
* Development constraint
  * Cost
  * Deadline
  * Variability
  * Maintainability
  
The distinction between **functional** and **non-functional** requirements should not be taken in a strict, clear-cut sense. The boundary will not always be clear.

In spite of possible overlap in specific situations, what matters in the end are the roles and benefits of a requirements taxonomy in the RE process: 
*  More specific characterisation of requirements
*  More semantic characterisation of requirements
*  Differentiation between confined and cross-cutting concerns
*  Basis for RE heuristics (Is there any accuracy requirement on information X in my system?)

## Requirements lifecycle: Processes, actors and products

A **stakeholder** is a group or individual affected by the system-to-be, who *may* influence the way this system is shaped and has some responsibility in its acceptance. Note that the set of stakeholders may vary slightly from the system-as-is to the system-to-be.

Domain understanding consists of studying the **system-as-is** within its organisational and technical context. During this process it is important that a **glossary of terms** is established to provide definitions of key concepts on which everyone should agree. Domain understanding is typically performed by studying key documents, investigating similar systems and interviewing or observing the identified stakeholders.

Elicitation is a **cooperative learning** process in which the requirements engineer and the system stakeholders work in close collaboration to acquire the right requirements. The acquired information needs to be evaluated in the next stage.

Evaluation and agreement is about making more informed decisions about issues raised during the elicitation process, usually based on 'best' trade-offs on which the involved parties should agree. Negotiation may be required in order to reach consensus. 

* Conflicting concerns
* Risks associated with the system that is being shaped
* Alternative options identified during elicitation must be compared
* Requirement prioritisation.

Once the evaluation is complete, this results in a preliminary draft proposal. This proposal highlights the agreed requirements and assumptions for the selected **system-to-be**.

Specification and documentation consists of detailing, structuring and documenting the agreed characteristics of the **system-to-be** as they emerge from the evaluation activity. The resulting product is the **requirements document** (RD). In this document, the objectives, concept definitions, relevant domain properties, responsibilities, system requirements, software requirements and environmental assumptions are specified precisely and organised into a coherent structure.

Requirements consolidation is about quality assurance. The RD should be **validated** with the **stakeholders** in order to pinpoint **inadequacies with respect to actual needs** and **verified** in order to find **inconsistencies and omissions**.

These activities companies are phases in a somewhat spiral RE process. New iterations take place at different stages of the software lifecycle. 

## Target qualities and defects to avoid

Quality factors define the goals of the RE process. They provide the baseis for evaluating successive versions of the requirements document.

* Completeness: Ensure that all the objectives of the system to be are fully identified and satisfied.
* Consistency: The requirements, assumptions and domain properties must be satisfiable and compatible with each other.
* Adequacy: Requirements must address the actual needs for the system.
* Unambiguity: Precludes different interpretations.
* Measurability: Requirements must be formulated at a level of precision that enables analysts to evaluate alternative options against them, developers to test or verity, and users to determine whether they are met or not. Assumptions must be observable in the environment.
* Pertinence: All must contribute to the satisfaction of one or several objectives.
* Feasibility: Requirements must be realisable
* Comprehensibility: Requirements must be comprehensible by the people who need to use them.
* Good structuring
* Modifiability: The RD must be changeable for future iterations
* Traceability: The context in which an item of the requirements document was created, modified or used should be easy to retrieve.

There are **errors** whose occurrence may have fatal effects on the quality of the software-to-be:

* Omissions
* Contradicting assumptions, domain properties or requirements
* Inadequacy
* Ambiguity
* Unmeasurability
* Noise
* Over-specification
* Unfeasibility
* Unintelligibility
* Poor structuring
* Forward reference
* Remorse
* Poor modifiability
* Opacity

> TODO - Add descriptions before exam 

## Types of software projects

* Greenfield vs brownfield projects
* Customer-driven vs market-driven projects
* In-house vs outsourced projects
* Single-product project vs product-line projects

A project is generally multi-type along the above dimensions. All these combinations need some form of RD. For example, there is no way of developing a high-quality software product in a brownfield, market-driven, in-house, product-line project without any formulation of the requirements for the software and the assumptions on the environment.

## Requirements in software lifecycle

Requirements engineering is traditionally considered as the preliminary phase of a software project, but many software process models and development methodologies recognise the important role of requirements engineering throughout the software lifecycle.

Sometimes design and requirements engineering are identified as two completely separated processes coming one after the other in a waterfall-like fashion. This is rarely the case in practice. A complex problem is solved by identifying subproblems, specifying them and solving them, which recursively yields new subproblems. The recursive nature of problem solving makes the problem and solution spaces intertwined.

## Why engineer requirements?

The phrase 'requirements problem' refers to software project failures that have been attributed to poor or non-existent requirements. Different studies have shown that requirements engineering influence the success of a software project.

The important role and stakes of requirements engineering are:

* Technical stakes: For example deriving acceptance test data from the RD
* Communication stakes: The RD is the main reference for the various parties involved in the software project.
* Project management stakes: The RD provides the basis for determining the cost, required resources, development steps, milestones, review points and delivery schedules.
* Legal stakes: The RD forms the core of the contract linking the software provider, customers and subcontractors.
* Certification stakes
* Economic stakes
* Social stakes: When not sufficiently user centered, the RE process may overlook important needs and constraints.

## Obstacles to good requirements engineering

* Requirements engineering effort needs to be spent before the project contract is signed, without a guarantee that a contract will be signed.
* Too little research has been devoted to RE economics
* Requirements document is sometimes exceedingly big and complex.
* The RD may be felt to be too far away from the executable product for which the customer is paying.
* The RE process is sometimes felt to be too heavyweight and/or too vague..

To practice RE we need to be aware of such obstacles.

## Agile development processes and requirements engineering

Due to the nature of agile processes, early and continuous provision of functionality of value to the customer by reducing both the RE effort and the requirements-to-code distance some of the earlier mentioned obstacles may arise.
The functional increment elicited at a RE cycle is sometimes called **user story**. It is captured some unit of functionality of direct value that the user can write and deliver easily to the programming team.
Agile processes have strong assumptions about the application of RE. For example : All stakeholder roles, including the customer and user roles, can be reduced to one single role.








    
  


