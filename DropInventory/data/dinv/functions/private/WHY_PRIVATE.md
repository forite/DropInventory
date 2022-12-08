# Why "Private"?
Functions in private have undefined behavior unless they are called with the correct preconditions.
These preconditions are reached by the function that calls them, but are too "complex" for me to
recommend arbitrary calls from external sources.