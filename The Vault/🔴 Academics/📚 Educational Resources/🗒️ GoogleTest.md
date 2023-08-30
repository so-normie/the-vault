
---
author: 
publisher: 
published: 
tags: [🔴-academics/📚-educational-resources/discipline/computer-science/framework/googletest, 🔴-academics/📚-educational-resources/name/googletest, study-note] 
cards-deck: Default::Computer Science
---

# GoogleTest

In the context of the framework **GoogleTest**, what is the difference between `ASSERT` and `EXPECT`? #card 
- Use `ASSERT` when the condition **must** hold - if it doesn't the test stops right there. Use this when the remainder of the test doesn't have semantic meaning without this condition holding.
- Use `EXPECT` when the condition _should_ hold, but in cases where it doesn't we can still get value out of continuing the test. (The test will still ultimately fail at the end, though.)
- The rule of thumb is: use `EXPECT` by default, unless you _require_ something to hold for the remainder of the tests, in which case you should use `ASSERT` for that particular condition.
---
- This is echoed within the [primer](https://google.github.io/googletest/primer.html):
> 	Usually `EXPECT_*` are preferred, as they allow more than one failures to be reported in a test. However, you should use `ASSERT_*` if it doesn't make sense to continue when the assertion in question fails.
^1687751335087

How should I go about testing if two doubles or floats are equal? #card 
Use [`EXPECT_NEAR`](https://github.com/google/googletest/blob/master/docs/reference/assertions.md#expect_near-expect_near) or the [`DoubleEq`](https://github.com/google/googletest/blob/master/docs/reference/assertions.md#expect_double_eq-expect_double_eq) matcher instead. Floating point operations can lead to [rounding errors](https://stackoverflow.com/questions/249467/what-is-a-simple-example-of-floating-point-rounding-error) which makes the results ever so slightly different.
^1687751403130
