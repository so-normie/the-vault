---
title: Misc. Notes
created: 2023-10-31T16:39
updated: 2023-12-14T05:55
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/🗒️-googletest/🔖/misc-notes
  - 🔴-academic/📚-educational-resource/format/miscellaneous
  - 🔴-academic/📚-educational-resource/discipline/computer-science/framework/googletest
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::🗒️ GoogleTest::Misc. Notes
---

# Misc. Notes

---

> [!ABSTRACT]+ 
> Scratch notes pertaining to [GoogleTest](https://google.github.io/googletest/). [@googleGoogleTestUserGuide]
> 
> These notes are primarily structured in a Q&A format, making it easy to follow and learn. Corresponding Anki flashcards are available, enabling efficient revision and reinforcement of the concepts.

---

> [!INFO]+ 
> **Previous Note(s)**:
> 

---

﹇<br>
In the context of the framework **GoogleTest**, what is the difference between `ASSERT` and `EXPECT`?

#card 

The primary differences between `ASSERT` and `EXPECT` are:
- Use `ASSERT` when the condition **must** hold - if it doesn't the test stops right there. Use this when the remainder of the test doesn't have semantic meaning without this condition holding.
- Use `EXPECT` when the condition _should_ hold, but in cases where it doesn't we can still get value out of continuing the test. (The test will still ultimately fail at the end, though.)

The rule of thumb is: use `EXPECT` by default, unless you _require_ something to hold for the remainder of the tests, in which case you should use `ASSERT` for that particular condition.

This is echoed within the [GoogleTest Primer](https://google.github.io/googletest/primer.html):
> Usually `EXPECT_*` are preferred, as they allow more than one failures to be reported in a test. However, you should use `ASSERT_*` if it doesn't make sense to continue when the assertion in question fails.

⌂
<br>﹈<br>


﹇<br>
How should I go about testing if two doubles or floats are equal?

#card 

Use [`EXPECT_NEAR`](https://github.com/google/googletest/blob/master/docs/reference/assertions.md#expect_near-expect_near) or the [`DoubleEq`](https://github.com/google/googletest/blob/master/docs/reference/assertions.md#expect_double_eq-expect_double_eq) matcher instead. Floating point operations can lead to [rounding errors](https://stackoverflow.com/questions/249467/what-is-a-simple-example-of-floating-point-rounding-error) which makes the results ever so slightly different.

⌂
<br>﹈<br>

---

## :EiZoteroItem: Bibliography

\[1\]
Google, “GoogleTest User’s Guide,” _GoogleTest_. Available: [http://google.github.io/googletest/](http://google.github.io/googletest/). [Accessed: Dec. 14, 2023]

---

> [!INFO]+
> **Next Note(s)**:
> 

---
