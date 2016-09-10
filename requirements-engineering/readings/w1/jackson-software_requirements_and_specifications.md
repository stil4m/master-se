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
