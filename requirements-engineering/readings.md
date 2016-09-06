# Readings

## Lauesen, Task Descriptions as Functional Requirements

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


## Contextual Design

Contextual Design is a design approach that will support the understanding of the customers workflow.
The paper also states that Contextual Design will help cross-functional teams to come to an agreement on what their customers need.

The process of Contextual Design contains the following steps:

* **Contextual Inquery**: Talk to individuals in their workplace while they are using the system. Helps understanding the tasks and gets more information while people are not always able to translate their tasks into words.
* **Work Modeling** Draw models representing the work of the customers you talk to. Shows structure in work that can be shared and validated. This can also be shared across the functional teams.
* **Consolidation**: Create a single statement of the work practice of your market or organisation. This requires the collection of data from individuals and to see common patterns.
* **Work Redesign**: Invent and develop better ways to work. This uses the consolidated data and presents it in for example storyboards.
* **User Environment Design**: Represent the entire system for product planning, marketing, UI design and spacification. Creates a 'floor plan' for the new system. This supports the teams insight into the requirements on each system.
* **Mockup and Test with Customers**: Test and iterate the design with customers using rough paper mockups. This will allow the team to use the ideas from the User Environment Design and test them on users. Enables refinement and detects problems.
