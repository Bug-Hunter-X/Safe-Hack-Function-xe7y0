This repository demonstrates a subtle integer overflow bug in Hack. The `foo` and `bar` functions, seemingly simple, can produce unexpected results due to integer overflow when handling large input values. The solution demonstrates how to address this by utilizing type-checking and potentially using larger integer types to prevent overflow.