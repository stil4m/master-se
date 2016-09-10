# Lauesen - Task Descriptions as Functional Requirements

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
