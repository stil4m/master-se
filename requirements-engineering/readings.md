# Readings

## Lauesen - Task Descriptions as Functional Requirements

Lauesen introduces a technique for requirements engineering called *Tasks & Support*.
Where traditional UML use case diagrams mainly focus on the system (as a blackbox),
Task & support treats the user and system as one (not defining who or what gives a hotel room key to a guest).
Instead of use cases you will write task descriptions that are actor agnostic.
A task description will be bound to a work area. For example a hotel reception.
A task has a name, a purpose, trigger or precondition, a frequency, a critical path, subtasks and variants.  

The support side of Task & Support comes from a technique that presents solutions for problems that arise in subtasks.
Together with stakeholders these problems can be embedded in new (sub)tasks.

Benefits:

* Clearly clarifies customers needs and prospective solutions
* Simplifies tracing between requirements and business goals.
* Suppliers can easily relate features to user tasks and show they exceed or not.
* The supplier has an easy indication of the critical issues due to the task descriptions.
* Solution window is kept in tact, thus possibly more software suppliers.

Disadvantages:

* No data is specified, which the creators found out themselves.
* No quality requirements are covered.
* The 'support column' is unusual for suppliers.
* More work for the customer.


## Beyer & Holtzblatt - Contextual Design

Contextual Design is a design approach that will support the understanding of the customers workflow.
The paper also states that Contextual Design will help cross-functional teams to come to an agreement on what their customers need.

The process of Contextual Design contains the following steps:

* **Contextual Inquiry**: Talk to individuals in their workplace while they are using the system. Helps understanding the tasks and gets more information while people are not always able to translate their tasks into words.
* **Work Modelling** Draw models representing the work of the customers you talk to. Shows structure in work that can be shared and validated. This can also be shared across the functional teams.
* **Consolidation**: Create a single statement of the work practice of your market or organisation. This requires the collection of data from individuals and to see common patterns.
* **Work Redesign**: Invent and develop better ways to work. This uses the consolidated data and presents it in for example storyboards.
* **User Environment Design**: Represent the entire system for product planning, marketing, UI design and specification. Creates a 'floor plan' for the new system. This supports the teams insight into the requirements on each system.
* **Mockup and Test with Customers**: Test and iterate the design with customers using rough paper mockups. This will allow the team to use the ideas from the User Environment Design and test them on users. Enables refinement and detects problems.

## Jackson - Software Requirements & Specifications

There is a division and overlap between the world and the machine. The machine is the system that will be released into the world. The parts of the world that will affect the machine and will be affected by it are its **Application Domain**.
**What and How**: *What* the system does is to be sought in the application domain, while the *how* is sought in the machine itself.
People have the tendency to focus on the solution, which allows to see patterns in the solution, but do not allow us to see patterns in the problems we are solving. The result is that the application domain is too often left unexplored and unmapped.

It is not sufficient to interview a few people and make some rough notes. What 'everyone' knows is often wrong, and very far from complete.

The processing of the data flows, or transactions, or operations, or use-cases is what the machine does. It is part of the solution, not of the problem. Leave it for later.

It is important to describe all the relevant things (and those are a lot) in the application domain, the machine and the overlap. All those descriptions have meaning. If you make all of those descriptions and separate them carefully, you'll be all right.

>  Note: Van Lamsweerde uses the same descriptions and separation, but gives them names such as: *Domain Properties*, *Assumptions*, *Definitions*, *System Requirements* and *Software Requirements*.

The categories of description and it's techniques are described by Jackson as following:

* Definition: Distinguish between defining new terms and using existing terms to make statements. This allows distinction between the world and the terminology.
* Description Scope and Span: The classes in the phenomena should be restricted with its scope and span (rainfall vs. heat and Italy vs. France).
* Refutable descriptions: All descriptions should be refutable (not invalidatable).
* Partial description: Separating concerns allows to oversee complexity.
* Define *Moods*: *Optative* vs. *Indicative*. 'Better seats should be allocated before worse seats' vs. 'Each seat is located in one and only one theatre'.

> Note: Van Lamsweerde identifies *Moods* as *Prescriptive* and *Descriptive*.
