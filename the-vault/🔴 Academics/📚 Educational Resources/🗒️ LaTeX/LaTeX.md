---
title: LaTeX
created: 2023-08-04 01:58
updated: 2023-10-20T08:59
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/🗒️-latex
  - 🔴-academics/📚-educational-resources/format/miscellaneous
  - 🔴-academics/📚-educational-resources/discipline/computer-science/technology/latex
  - 🔴-academics/📚-educational-resources/name/🗒️-latex/🔖-bookmark/🗒️-latex
cards-deck: 🔴 Academics::📚 Educational Resources::🗒️ LaTeX
---

# LaTeX

---

> [!abstract]+ Abstract 
> These [Structy | Learn Algorithms, Efficiently.](https://www.structy.net/) course notes are a comprehensive resource that delve into the intricacies of data structures and algorithms, with a focus on the nuances of different programming languages. These provide not just solutions, but also discuss edge cases, enhancing understanding of how problems can be solved in various scenarios. 
> 
> These notes are structured in a Q&A format, making it easy to follow and learn. Additionally, corresponding Anki flashcards are available, enabling efficient revision and reinforcement of the concepts.

---

> [!info]+ 🕸️ All Mention(s): 
> 

---

> [!info]+ 🔙 Previous Note(s):
> 

---

﹇<br>
How can I type **Big O** in LaTeX/MathJax? 

#card

```latex
$O(n\log{n})$ % regular O
$\mathcal{0}(n\log{n})$ % Open at top left
```

You can refer to the following table for more information…

[![|360](https://i0.wp.com/texblog.org/Wordpress/wp-content/uploads/2014/06/big-o-bachmann-landau-notations-latex1.png?w=839&ssl=1)](https://i0.wp.com/texblog.org/Wordpress/wp-content/uploads/2014/06/big-o-bachmann-landau-notations-latex1.png?w=839&ssl=1)

⌂
<br>﹈<br>^1694416424339



﹇<br>
How can I create a _combinatorial_ in **MathJax**/**LaTeX**?

#card 

To create a combinatorial in MathJax/LaTeX, you can use the `\binom` or `\dbinom` command. The `\binom` command is the standard LaTeX command for creating binomial coefficients, and the `\dbinom` command is an alternative that is sometimes used for better spacing.
The syntax for the `\binom` command is:
```latex
\binom{n}{k}
```
where `n` is the number of elements in the set and `k` is the size of the subset. For example, the following code will create the binomial coefficient $\binom{10}{5}$:
```latex
\binom{10}{5}
```
The `\dbinom` command has the same syntax, but it produces slightly better spacing.
In MathJax, you can use the same syntax for creating combinatorial. For example, the following code will create the binomial coefficient $\binom{10}{5}$ in MathJax:
```latex
$$\binom{10}{5}$$
```
You can also use the `\binom` or `\dbinom` command to create other combinatorial objects, such as permutations and combinations. For more information, you can refer to the LaTeX documentation on combinatorics symbols.
Here are some other examples of how to create combinatorials in MathJax/LaTeX:
- The number of permutations of $n$ elements is $n!$.
- The number of combinations of $k$ elements from a set of n elements is $\binom{n}{k}$.
- The number of arrangements of $k$ elements in a row is $k!$.
- The number of arrangements of $k$ elements in a circle is $(k−1)!$.
🤖 Google Bard: https://g.co/bard/share/6951fe74b78f

⌂
<br>﹈<br>^1694416424345



﹇<br>
How can I add a tab or extra padding space in MathJax/LaTeX?

#card 

To add a tab or extra padding space in MathJax/LaTeX, you can use the following commands:
- `\;` for a thick space.
- `\:` for a medium space.
- `\,` for a thin space.
- `\!` for a negative thin space.
For example, the following code will add a thick space between the two words "hello" and "world":
```
$$hello\;world$$
```
The different spacing commands can be used together to create different effects. For example, the following code will add a medium space followed by a thin space between the two words "hello" and "world":
```
$$hello\:\,world$$
```
You can also use the `\quad` and `\qquad` commands to add larger spaces. The `\quad` command adds a quad space, which is about the same width as four normal spaces. The `\qquad` command adds a qquad space, which is about the same width as eight normal spaces.
For example, the following code will add a quad space between the two words "hello" and "world":
```
$$hello\quad world$$
```
🤖 Google Bard: https://g.co/bard/share/38845e3b4a91

⌂
<br>﹈<br>^1694416424350



﹇<br>
In MathJax/LateX, how can I change text be normal in the equation?

#card 

To change text to normal in a MathJax/LaTeX equation, you can use the… 

```latex
\text{}
``` 

command. This command allows you to include normal text within an equation. For example, if you want to include the word “normal” in an equation, you can write…. 

```latex
x = \text{normal}
```

[This will display “normal” in normal font within the equation](https://tex.stackexchange.com/questions/39515/is-there-a-way-to-set-math-mode-font-non-italic) [1](https://tex.stackexchange.com/questions/39515/is-there-a-way-to-set-math-mode-font-non-italic).

⌂
<br>﹈<br>^1694416424361


﹇<br>
In MathJax/LaTeX, how can I type a vector? (e.g. $\vec{\boldsymbol{F}}$)

#card 

Use the `vec` command like so…

```latex
\vec{\boldsymbol{F}}
```

⌂
<br>﹈<br>


---

> [!info]+ 🔜 Next Note(s):
> 

---
