The graph is build incrementally by a series of signed updates. Each node & edge has a `uuid` that's assigned at creation whose time is also recorded. Updates *may* contain nodes that have an already used UUID. In that situation, the node in the update is linked to the existing node with an `EQUALS` edge.

When calculating the node linked to by an `EQUALS`, the first occurrence of each attribute as the `EQUALS` links are walked in a breadth-first order according to creation time.

It is also possible that an update will contain a `Spot` with a path leading to it that is identical to a previous incarnation, but with a different `uuid`. In this situation, 