---
title: 📒interview-questions
created: 2023-12-03T15:09
updated: 2023-12-03T21:19
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/discord/de-grind-crew/🔖/de-grind-crew-∋-table-of-contents
  - 🔴-academic/📚-educational-resource/format/website
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::Discord::DE Grind Crew::💼 Vocational::📒interview-questions
---

# 📒interview-questions

---

> [!ABSTRACT]+ 
> Notes pertaining to the [📒interview-questions](https://discord.com/channels/1153061162846539866/1168706308158001272). [@WelcomePythonOrg2023]
> 
> These notes are primarily structured in a Q&A format, making it easy to follow and learn. Corresponding Anki flashcards are available, enabling efficient revision and reinforcement of the concepts.

---

> [!INFO]+ 
> **Previous Note(s):**
> 

---

## [Vanhack Work Schedule](https://discord.com/channels/1153061162846539866/1168706308158001272/1180261592328319006)

﹇<br>
So it is pretty obvious that the following code is creating a lambda function:

```cpp
function<void(int, string)> dfs = [&](int work_left, string schedule){
	int day = schedule.find('?');
	if(day == string::npos){
		if(work_left == 0)
			schedules.push_back(schedule);
		return;
	}
	for(int i = 0; i <= min(day_hours, work_left); i++){
		schedule[day] = '0' + i;
		dfs(work_left - i, schedule);
	}
};
```

However, my question is what exactly does this `[&]` mean in the code?

#card #🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/cpp 

Yes, you're correct that this code is declaring a lambda function. In C++, a lambda function is a special type of function that you can define inline in your source code. They are particularly useful for small functions that are only going to be used once or twice, such as in this DFS recursion.

Now, the `[&]` is a **lambda-introducer**, or **capture clause**, which specifies the scope for the lambda's access to local variables. Specifically, the `&` means that all local variables are captured by reference.

Let's break it down:

`[&]`: Capture all local variables by reference. This means the function has access to the original variable and any changes made to this variable will be seen outside the lambda function. This is particularly important for our `schedules` variable, because we want the lambda function to be able to modify it.

Here are a few other examples of capture clauses for completeness:
- `[]`: Capture nothing. The function cannot access anything not passed directly to it.
- `[x]`: Capture `x` by value, so the function gets its own copy of `x` and changes won't affect the original `x`.
- `[=]`: Capture all local variables by value. The function cannot modify the originals.
- `[&x]`: Capture x by reference, the function can modify the original x.
- `[this]`: Capture the current object by reference so that class members can be accessed.

Generally, `[&]` is used when you want the lambda to act more like a local function that modifies and interact with the local environment, while `[=]` is commonly used when you intend to pass the lambda to other parts of code or want to avoid any side effects by the lambda's operation.

⌂
<br>﹈<br>^1701651716773

In the context of lambda functions in C++, the **capture clause** {1:`[]`} means that it will capture nothing. The function cannot access anything not passed directly to it.
#🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/cpp
^1701651716777


In the context of lambda functions in C++, the **capture clause** {1:`[x]`} means that it will capture `x` by value, so the function gets its own copy of `x` and changes won't affect the original `x`.
#🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/cpp
^1701651716782


In the context of lambda functions in C++, the **capture clause** {1:`[=]`} means that it will capture all local variables by value. The function cannot modify the originals.
#🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/cpp
^1701651716786


In the context of lambda functions in C++, the **capture clause** {1:`[&]`} means that it will capture all local variables by reference. This means the function has access to the original variable and any changes made to this variable will be seen outside the lambda function.
#🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/cpp
^1701651716790


In the context of lambda functions in C++, the **capture clause** {1:`[&x]`} means that it will capture x by reference, the function can modify the original x.
#🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/cpp
^1701651716793


In the context of lambda functions in C++, the **capture clause** {1:`[this]`} means that it will capture the current object by reference so that class members can be accessed.
#🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/cpp
^1701651716797


In C++, a {1:lambda function} is a special type of function that you can {2:define inline} in your source code. They are particularly useful for {3:small functions} that are only going to be {1:used once or twice}.
#🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/cpp
^1701651716800


---

## :EiZoteroItem: Bibliography

---

> [!INFO]+
> **Next Note(s):**

---
