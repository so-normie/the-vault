---
tags: [🔴-academics/📚-educational-resources/name/learncpp-com, 🔴-academics/📚-educational-resources/discipline/computer-science/programming-language/cpp, study-note] 
cards-deck: Default::Computer Science
---

# LearnCpp.com

## Chapter 7꞉ Control Flow and Error Handling

### 7.1: [Control flow introduction](https://www.learncpp.com/cpp-tutorial/control-flow-introduction/)

### 7.2: [If statements and blocks](https://www.learncpp.com/cpp-tutorial/if-statements-and-blocks/)

### 7.3: [Common if statement problems](https://www.learncpp.com/cpp-tutorial/common-if-statement-problems/)

### 7.4: [Switch statement basics](https://www.learncpp.com/cpp-tutorial/switch-statement-basics/)

### 7.5: [Switch fallthrough and scoping](https://www.learncpp.com/cpp-tutorial/switch-fallthrough-and-scoping/)

### 7.6: [Goto statements](https://www.learncpp.com/cpp-tutorial/goto-statements/)

### 7.7: [Introduction to loops and while statements](https://www.learncpp.com/cpp-tutorial/introduction-to-loops-and-while-statements/)

### 7.8: [Do while statements](https://www.learncpp.com/cpp-tutorial/do-while-statements/)

### 7.9: [For statements](https://www.learncpp.com/cpp-tutorial/for-statements/)

### 7.10: [Break and continue](https://www.learncpp.com/cpp-tutorial/break-and-continue/)

### 7.11: [Halts (exiting your program early)](https://www.learncpp.com/cpp-tutorial/halts-exiting-your-program-early/)

### 7.12: [Introduction to testing your code](https://www.learncpp.com/cpp-tutorial/introduction-to-testing-your-code/)

### 7.13: [Code coverage](https://www.learncpp.com/cpp-tutorial/code-coverage/)

### 7.14: [Common semantic errors in C++](https://www.learncpp.com/cpp-tutorial/common-semantic-errors-in-c/)

### 7.15: [Detecting and handling errors](https://www.learncpp.com/cpp-tutorial/detecting-and-handling-errors/)

### 7.16: [std::cin and handling invalid input](https://www.learncpp.com/cpp-tutorial/stdcin-and-handling-invalid-input/) 

### 7.17: [Assert and static_assert](https://www.learncpp.com/cpp-tutorial/assert-and-static_assert/)

### 7.18: [Introduction to random number generation](https://www.learncpp.com/cpp-tutorial/introduction-to-random-number-generation/)

When is the generation of random numbers useful? #card 
Useful in certain kinds of programs, particularly in games, statistical modelling programs, and cryptographic applications that need to encrypt and decrypt things.
^1683594552223

Consider videogames, why is randomness important in video games? #card 
Without random events, monsters would always attack you the same way, you’d always find the same treasure, the dungeon layout would never change, etc… and that would not make for a very good game.
^1683594552235

What type of world do modern computers live in? #card 
Live in a controlled electrical world where everything is binary (0 or 1) and there is no in-between.
^1683594552240

What is the very nature of how computer are designed? #card 
By their very nature, computers are designed to produce results that are as predictable as possible.
^1683594552244

Can computers generally generate truly random numbers? #card 
Computers are generally incapable of generating truly random numbers (At least through software
^1683594552248

> [!warning]+ Go back and review
> 


-----
#### Algorithms and state


What is an **algorithm**? #card 
An algorithm is a finite sequence of instructions that can be followed to solve some problem or produce some useful result.
^1683594552251


In C++, ho are algorithms typically implemented as? #card 
As reusable functions.
^1683594552255


In the following code…
```cpp
#include <iostream>

int plusOne()
{
    static int s_state { 3 }; // only initialized the first time this function is called

    // Generate the next number

    ++s_state;      // first we modify the state
    return s_state; // then we use the new state to generate the next number in the sequence
}

int main()
{
    std::cout << plusOne() << '\n';
    std::cout << plusOne() << '\n';
    std::cout << plusOne() << '\n';

    return 0;
}
```
What does the `static` mean in the function `plusOne()` ? What does it tell the compiler to do? #card 
Means that the variable `s_state` is only accessible within the function `plusOne()`. Tells the compiler to create a separate storage location for the variable, which is only accessible within the function in which it is declared.
^1683594552263


Does the static keyword have several different meanings in C++? #card
Yes, the static keyword in C++ has several different meanings, depending on where it is used.
^1683594552267


What is an example of the static keyword being used in a **class definition**? #card 
The static keyword can be used to declare class members that are not associated with specific instances of the class.
```cpp
// Class member declaration
class MyClass {
  static int myStaticMember; // Shared by all instances of MyClass
};
```
- These members are <span class="spoiler">shared by all instances of the class and have static storage duration, which means that they are allocated once and exist for the lifetime of the program.</span>
^1683594552271


What is an example of the static keyword being used in a **function definition**? #card 
**In a function definition,** the static keyword can be used to declare local variables that have static storage duration. 
- These variables are initialized <span class="spoiler">once</span> and retain their value <span class="spoiler">between function calls</span>.
```cpp
// Local variable declaration
void myFunction() { 
	static int myStaticVariable; // Initialized once and retains its value between function calls
}
```
^1683594552275


What is an example of the static keyword being used in a namespace definition? #card 
In a namespace definition, the static keyword can be used to declare namespace members that have <span class="spoiler">internal linkage</span>.
- This means that they can only be accessed <span class="spoiler">within the namespace in which they are declared</span>.
```cpp
// Namespace member declaration
namespace MyNamespace {
	static int myStaticVariable; // Only accessible within MyNamespace
}
```
^1683594552279


If a static int variable was inside a function called `plusOne()`, would it only be accessible within that function? #card 
If the static int was inside a function called `plusOne()`, would it only be accessible wthin that function?
Yes, if the static int was inside a function called `plusOne()`, it would only be accessible within that function. This is because the static keyword in C++ tells the compiler to create a separate storage location for the variable, which is only accessible within the function in which it is declared.
For example, the following code would create a static int variable called `myVar` inside the `plusOne()` function:
```cpp
void plusOne() {
  static int myVar = 0;
  myVar++;
  return myVar;
}
```
This code would increment the value of `myVar` each time the `plusOne()` function is called. The value of `myVar` would not be accessible outside of the `plusOne()` function.
Here is an example of how the `plusOne()` function could be used:
```cpp
int main() {
  int num = plusOne();
  std::cout << num << std::endl;
  num = plusOne();
  std::cout << num << std::endl;
  return 0;
}
```
This code would print the following output:
```
1
2
```
^1683594552283

If a class is declared as static, is it necessary to add static in front of the functions since the class is already static? #card 
- The static keyword in front of the function `myFunction()` is not necessary, since the class `MyClass` is already static. This is because static classes cannot be instantiated, so there is no need to distinguish between static and non-static member functions.
- However, it is generally good practice to include the static keyword, even if it is not required. This helps to make the code more readable and maintainable.
^1683594552287

When is an algorithm considered **stateful**? #card 
If an algorithm retains some information across calls.
^1683595216403

What is a **stateless** algorithm? #card 
An algorithm that does not store any information (And must be given all the information it needs to work with when it is called).
^1683595216408

When is an algorithm considered **deterministic**? #card 
An algorithm is considered **deterministic** when for a given input (the value provided for `start`), it will always produce the same output sequence.
^1683595216411


---
#### Pseudo-random number generators (PRNGs)


To simulate randomness, programs typically use a {**pseudo-random number generator (PRNG)**}
^1683595216420 

A {**pseudo-random number generator (PRNG)**} is an algorithm that generates a sequence of numbers whose properties simulate a sequence of random numbers.
^1683601577371 

What is a **pseudo-random number generator (PRNG)**? #card 
An algorithm that generates a sequence of numbers whose properties simulate a sequence of random numbers.
^1683601577385

How do most PRNGs work? #card 
Refer to the following code…
```cpp
#include <iostream>
// For illustrative purposes only, don't use this
unsigned int LCG16() { // our PRNG
    static unsigned int s_state{ 5323 };
    // Generate the next number
    // We modify the state using large constants and intentional overflow to make it hard
    // for someone to casually determine what the next number in the sequence will be.
    s_state = 8253729 * s_state + 2396403; // first we modify the state
    return s_state % 32768; // then we use the new state to generate the next number in the sequence
}
int main() {
    // Print 100 random numbers
    for (int count{ 1 }; count <= 100; ++count)
    {
        std::cout << LCG16() << '\t';
        // If we've printed 10 numbers, start a new row
        if (count % 10 == 0)
            std::cout << '\n';
    }
    return 0;
}
```
Most PRNGs work similarly to `LCG16()` -- they just typically use more state variables and more complex mathematical operations in order to generate better quality results.
^1683602701067

-----
#### Seeding a PRNG

Is the function `LCG16()` deterministic? #card 
Yes. Once the state has been initialized, `LCG16()` (and all other PRNGs) will generate the same output sequence.
^1683601577404

When a PRNG is instantiated, an {initial value (or set of values)} called a {**random seed**} (or {**seed**} for short) can be provided to initialize the state of the PRNG. When a PRNG has been initialized with a seed, we say it has been {**seeded**}.
^1683601577413 

All the values that a PRNG… are what? #card 
> [!info]+ Key Insight
> All of the values that a PRNG will produce are deterministically calculated from the seed value(s).
^1683602487101

What is the case when a PRNG is **underseeded**? #card 
Most PRNGs that produce quality results use at least <span class="spoiler">16 bytes</span> of state, if not significantly more. However, the size of the seed value can be smaller than the size of the state of the PRNG.
^1683602487106


> [!warning]
> Go back and figure out conceptually the bottom paragraph

Ideally, every bit in the state is initialized from a seed of equal size, and every bit in the seed has been independently determined somehow. However, if a PRNG is underseeded, some number of bits in the state will need to be initialized from the same bits in the seed. If a PRNG is significantly underseeded (meaning the size of the seed is much smaller than the size of the state), the quality of the random results the PRNG produces can be impacted.


-----
#### What makes a good PRNG? (optional reading)

In order to be a good PRNG, the PRNG needs to {exhibit a number of properties}.
^1683608465945 


In order to be a good PRNG, the PRNG needs to exhibit a number of properties
- <span class="spoiler">The PRNG should generate each number with approximately the same probability.</span>
- <span class="spoiler">The method by which the next number in the sequence is generated shouldn’t be predictable.</span>
- <span class="spoiler">The PRNG should have a good dimensional distribution of numbers.</span>
- <span class="spoiler">The PRNG should have a high period for all seeds.</span>
- <span class="spoiler">The PRNG should be efficient.</span>
#card
^1683605093090

If some numbers are generated {more} often than others, the result of the program that uses the PRNG will be {biased}! To check {distribution uniformity}, we can use a {histogram}.
^1683608932242 

What does it mean for a PRNG to have a good dimensional distribution of numbers. #card
This means the PRNG should return numbers across the entire range of possible results at random. For example, the PRNG should generate low numbers, middle numbers, high numbers, even numbers, and odd numbers seemingly at random.
^1683608932252


A {PRNG} that returned {all low numbers}, then {all high numbers} may be {uniform} and {non-predictable}, but it’s {still} going to lead to {biased} results, particularly if the {number of random numbers you actually use is small}.
^1683608932263 


All PRNGs are {periodic}, which means that {at some point the sequence of numbers generated will begin to repeat itself}.
^1683620376001 


The length of the sequence before a PRNG begins to repeat itself is known as the {period}.
^1683620376012

A good PRNG should have a {long period} for {_all_} seed numbers.
^1683620692290 

Most PRNGs have a {state size of less than 4096 bytes}, so {total memory usage typically isn’t a concern}.
^1683620692299 


The {larger} the {internal state}, the {more likely} the PRNG is to be {underseeded}, and the {slower} the {initial seeding will be (since there’s more state to initialize)}.
^1683620692312 

-----
#### There are many different kinds of PRNG algorithms


Many PRNGs are now considered {relatively poor by modern standards} -- and there’s {no reason to use a PRNG that doesn’t perform well when it’s just as easy to use one that does}. 
^1683620692328 


---
#### Randomization in C++


The randomization capabilities in C++ are accessible via the {`<random>`} header of the standard library. 
^1683622441978 


Within the random library, there are {6 PRNG families} available for use (as of C++20). 
^1683622441986 


| Type name                 | Family                                 | Period  | State size* | Performance | Quality | Should I use this?          |
|---------------------------|----------------------------------------|---------|-------------|-------------|---------|-----------------------------|
| minstd_rand minstd_rand() | Linear congruential generator          | 2^31    | 4 bytes     | Bad         | Awful   | No                          |
| mt19937 mt19937_64        | Mersenne twister                       | 2^19937 | 2500 bytes  | Decent      | Decent  | Probably (see next section) |
| ranlux24 ranlux48         | Subtract and carry                     | 10^171  | 96 bytes    | Awful       | Good    | No                          |
| knuth_b                   | Shuffled linear congruential generator | 2^31    | 1028 bytes  | Awful       | Bad     | No                          |
| default_random_engine     | Any of above (implementation defined)  | Varies  | Varies      | ?           | ?       | No^2                        |
| rand()                    | Linear congruential generator          | 2^31    | 4 bytes     | Bad         | Awful   | No^no                       |
#card 
There is zero reason to use `knuth_b`, `default_random_engine`, or `rand()` (which is a random number generator provided for compatibility with C).
^1683622442000


As of C++20, the {Mersenne Twister algorithm} is the only PRNG that ships with C++ that has both decent performance and quality.
^1683621919869 

A test called {[PracRand](http://pracrand.sourceforge.net/)} is often used to assess the performance and quality of PRNGs (to determine whether they have different kinds of biases). You may also see references to SmallCrush, Crush or BigCrush -- these are other tests that are sometimes used for the same purpose.
^1683622258231 

---
#### So we should use Mersenne Twister, right？


For most applications, {Mersenne Twister} is {fine}, both in terms of {performance} and {quality}. 
^1683622258242 


It’s worth noting that by modern PRNG standards, {Mersenne Twister} is {a bit outdated}.
^1683685299662 


The biggest issue with Mersenne Twister is that {its results can be predicted after seeing 624 generated numbers}, making it non-suitable for any application that requires {non-predictability}.
^1683623989762 


If you are developing an application that requires the highest quality random results (e.g. a {statistical simulation}), the fastest results, or one where non-predictability is important (e.g. {cryptography}), you’ll need to use a 3rd party library.
^1683623852242

What are some popular choices for 3rd party libraries as of the time of writing? #card 
- The <span class="spoiler">[Xoshiro family](https://prng.di.unimi.it/)</span> and <span class="spoiler">[Wyrand](https://github.com/wangyi-fudan/wyhash)</span> for <span class="spoiler">non-cryptographic PRNGs</span>.
- The <span class="spoiler">[Chacha family](https://cr.yp.to/chacha.html)</span> for <span class="spoiler">cryptographic (non-predictable) PRNGs</span>.
^1683623852253 


### 7.19: [Generating random numbers using Mersenne Twister](https://www.learncpp.com/cpp-tutorial/generating-random-numbers-using-mersenne-twister/)


To access any of the {randomization} capabilities in C++, we include the {`<random>`} header of the standard library.
^1683623158213 

---
#### Generating random numbers in C++ using Mersenne Twister

The {Mersenne Twister PRNG}, besides having a great name, is probably the {most popular PRNG} across all programming languages.
^1683625017464  

The random library has support for how many Mersenne Twister types? #card 
- `mt19937` is a Mersenne Twister that generates 32-bit unsigned integers
- `mt19937_64` is a Mersenne Twister that generates 64-bit unsigned integers
^1683625017468

How to print the Mersenne Twister? #card 
```cpp
#include <iostream>
#include <random> // for std::mt19937
int main()
{
	std::mt19937 mt{}; // Instantiate a 32-bit Mersenne Twister
	// Print a bunch of random numbers
	for (int count{ 1 }; count <= 40; ++count)
	{
		std::cout << mt() << '\t'; // generate a random number
		// If we've printed 5 numbers, start a new row
		if (count % 5 == 0)
			std::cout << '\n';
	}
	return 0;
}
```
^1683625515084

What is the general process of implementing the Mersenne Twister? #card 
1. <span class="spoiler">First, we include the `random` header, since that’s where all the random number capabilities live</span>.
2. <span class="spoiler">Next, we instantiate a 32-bit Mersenne Twister engine via the statement std::mt19937 mt</span>. 
3. <span class="spoiler">Then, each time we want to generate a random 32-bit unsigned integer, we call mt()</span>.
^1683661498659

Since `mt` is a variable, what does `mt()` means? #card 
> [!tip+] Tip
> Since `mt` is a variable, you may be wondering what `mt()` means.
> 
> In lesson [4.17 -- Introduction to stds::string](https://www.learncpp.com/cpp-tutorial/introduction-to-stdstring/), we showed an example where we called the function `name.length()`, which invoked the `length()` function on `std::string` variable `name`.  
> 
> `mt()` is a concise syntax for calling the function `mt.operator()`, which for these PRNG types has been defined to return the next random result in the sequence. The advantage of using `operator()` instead of a named function is that we don’t need to remember the function’s name, and the concise syntax is less typing.
^1683661498676

---
#### Rolling a dice using Mersenne Twister


If our program was simulating a board game or a dice game, we’d probably want to simulate the roll of a 6-sided dice by generating random numbers between 1 and 6. If our program was a dungeon adventure, and the player had a sword that did between 7 and 11 damage to monsters, then we’d want to generate random numbers between 7 and 11 whenever the player hit a monster.
Unfortunately, PRNGs {can’t} do this. They can only {generate numbers that use the full range}.
^1683662377121 

What is a **random number distribution**? #card-reverse 
A <span class="spoiler">**random number distribution**</span> converts the output of a PRNG into some other distribution of numbers.
^1683662631350


What is a **random number distribution** for stats geeks? #card 
> [!info]+ As an aside…
> For the stats geeks: a random number distribution is just a probability distribution designed to take PRNG values as input.
^1683662631355

What is a **uniform distribution**? #card-reverse 
A <span class="spoiler">**uniform distribution**</span> is a random number distribution that produces outputs between two numbers X and Y (inclusive) with equal probability.
^1683665149355

How do you implement a simulation of a roll of a 6-sided dice? #card 
```cpp
#include <iostream>
#include <random> // for std::mt19937 and std::uniform_int_distribution
int main()
{
	std::mt19937 mt{};
	// Create a reusable random number generator that generates uniform numbers between 1 and 6
	std::uniform_int_distribution die6{ 1, 6 }; // for C++14, use std::uniform_int_distribution<> die6{ 1, 6 };
	// Print a bunch of random numbers
	for (int count{ 1 }; count <= 40; ++count)
	{
		std::cout << die6(mt) << '\t'; // generate a roll of the die here
		// If we've printed 10 numbers, start a new row
		if (count % 10 == 0)
			std::cout << '\n';
	}
	return 0;
}
```
^1683665149360

What is the general process to implement the simulation of a roll of a 6-sided dice? #card
1. First, we’ve created a uniform distribution variable (named `die6`) to generate numbers between 1 and 6.
2. Second, instead of calling `mt()` to generate 32-bit unsigned integer random numbers, we’re now calling `die6(mt)` to generate a value between 1 and 6.
^1683665299646


---
#### The above program isn’t as random as it seems

Given any starting seed number, PRNGs will always {generate the same sequence of numbers from that seed as a result}.
^1683665433930 

In order to pick a seed that’s not a fixed number, what are the are two methods that are commonly used to do this? #card 
 - Use the system clock
 - Use the system’s random device
^1683665551522

---
#### Seeding with the system clock

C and C++ have a long history of PRNGs being seeded using the current time (using the {`stdtime()`} function), so you will probably see this in a lot of existing code.
^1683665632180 


How would we implement this concept? #card 
```cpp
#include <iostream>
#include <random> // for std::mt19937
#include <chrono> // for std::chrono
int main()
{
	// Seed our Mersenne Twister using the
	std::mt19937 mt{ static_cast<unsigned int>(
		std::chrono::steady_clock::now().time_since_epoch().count()
		) };
	// Create a reusable random number generator that generates uniform numbers between 1 and 6
	std::uniform_int_distribution die6{ 1, 6 }; // for C++14, use std::uniform_int_distribution<> die6{ 1, 6 };
	// Print a bunch of random numbers
	for (int count{ 1 }; count <= 40; ++count)
	{
		std::cout << die6(mt) << '\t'; // generate a roll of the die here
		// If we've printed 10 numbers, start a new row
		if (count % 10 == 0)
			std::cout << '\n';
	}
	return 0;
}
```
The above program has only two changes from the prior. First, we’re including `<chrono>`, which gives us access to the clock. Second, we’re using the current time from the clock as a seed value for our Mersenne Twister.
^1683673446242


What is the downside of this approach? #card 
- The downside of this approach is that if the program is run several times in quick succession, the seeds generated for each run won’t be that different, which can impact the quality of the random results from a statistical standpoint.
- For normal programs, this doesn’t matter, but for programs that require high quality, independent results, this method of seeding may be insufficient.
^1683673446249


Why do we use `std::chrono::steady_clock::now()`? #card 
> [!tip]+
> `std::chrono::high_resolution_clock` is a popular choice instead of `std::chrono::steady_clock`. `std::chrono::high_resolution_clock` is the clock that uses the most granular unit of time, but it may use the system clock for the current time, which can be changed or rolled back by users. `std::chrono::steady_clock` may have a less granular tick time, but is the only clock with a guarantee that users can not adjust it.
^1683673446254

---
#### Seeding with the random device

The random library contains a type called {`std::random_device`} that is an {implementation-defined PRNG}. Normally {we avoid implementation-defined capabilities} because they {have no guarantees about quality or portability}, but {this is one of the exception cases}. Typically {`std::random_device`} will {ask the OS for a random number (how it does this depends on the OS)}.
^1683673446259

How to implement? #card 
```cpp
#include <iostream>
#include <random> // for std::mt19937 and std::random_device
int main()
{
	std::mt19937 mt{ std::random_device{}() };
	// Create a reusable random number generator that generates uniform numbers between 1 and 6
	std::uniform_int_distribution die6{ 1, 6 }; // for C++14, use std::uniform_int_distribution<> die6{ 1, 6 };
	// Print a bunch of random numbers
	for (int count{ 1 }; count <= 40; ++count)
	{
		std::cout << die6(mt) << '\t'; // generate a roll of the die here
		// If we've printed 10 numbers, start a new row
		if (count % 10 == 0)
			std::cout << '\n';
	}
	return 0;
}
```
In the above program, we’re seeding our Mersenne Twister with one random number generated from a temporary instance of `std::random_device`. If you run this program multiple times, it should also produce different results each time.
^1683673446265


What is a problem with this approach? #card 
- One potential problem with `std::random_device`: it isn’t required to be non-deterministic, meaning it _could_, on some systems, produce the same sequence every time the program is run, which is exactly what we’re trying to avoid.
	- There was a [bug in MinGW](https://gcc.gnu.org/bugzilla/show_bug.cgi?id=85494) (fixed in GCC 9.2) that would do exactly this, making `std::random_device` useless.
- However, the latest versions of the most popular compilers (GCC/MinGW, Clang, Visual Studio) support proper implementations of `std::random_device`.
^1683673446271


Is this the best practice for seeding my PRNGs? #card 
> [!tip]+ Best practice
> Use `std::random_device` to seed your PRNGs (unless it’s not implemented properly for your target compiler/architecture).
^1683673446276


What does `std::random_device{}()` mean?  #card
> [!info]+ Q: What does `std::random_device{}()` mean? 
> `std::random_device{}` creates a value-initialized temporary object of type `std::random_device`. The `()` then calls `operator()` on that temporary object, which returns a randomized value (which we use as an initializer for our Mersenne Twister) 
> It’s the equivalent of the calling the following function, which uses a syntax you should be more familiar with:
>  ```cpp
>  unsigned int getRandomDeviceValue()
>  {
> 	 std::random_device rd{}; // create a value initialized std::random_device object
> 	 return rd(); // return the result of operator() to the caller
>  }
>  ```
>  Using `std::random_device{}()` allows us to get the same result without creating a named function or named variable, so it’s much more concise. 
^1683673446309



If `std::random_device` is random itself, why don’t we just use that instead of Mersenne Twister? #card  
> [!info]+ Q: If std::random_device is random itself, why don’t we just use that instead of Mersenne Twister?
> Because std::random_device is implementation defined, we can’t assume much about it. It may be expensive to access or it may cause our program to pause while waiting for more random numbers to become available. The pool of numbers that it draws from may also be depleted quickly, which would impact the random results for other applications requesting random numbers via the same method. For this reason, std::random_device is better used to seed other PRNGs rather than as a PRNG itself.
^1683673446282


---
#### Only seed a PRNG once

What is the best practice regarding how many times one should see a PRNG? #card 
> [!tip]+ Best practice
> Only seed a given pseudo-random number generator once, and do not reseed it.
^1683673446287


What is wrong with this code? #card 
```cpp
#include <iostream>
#include <random>
int getCard()
{
    std::mt19937 mt{ std::random_device{}() }; 
    std::uniform_int_distribution card{ 1, 52 };
    return card(mt);
}
int main()
{
    std::cout << getCard();
    return 0;
}
```
In the `getCard()` function, the random number generator is being created and seeded every time the function is called. This is inefficient at best, and will likely cause poor random results.
^1683673446292

---
#### Mersenne Twister and underseeding issues

The internal state of a Mersenne Twister is {624 bytes} in size. In the examples above, where we seed from the clock or std::random_device, our seed is only a single 32-bit integer. This means we’re essentially {initializing a 624-byte object with a 4-byte value}, which is significantly {underseeding} the Mersenne Twister PRNG.
^1683673446298


For example, seeding {`std::mt19937`} with {a single 32-bit} value will {never generate the number `42` as its first output}. So {how do we fix this}? As of C++20, {there’s no easy way. But we do have some suggestions}.
^1683673446303


First, let’s talk about {`std::seed_seq`} (which stands for {“seed sequence”}). In the prior lesson, we mentioned that a seed can be {either a single value, or a set of values}. {`std::seed_seq`} is a type that {performs two functions}. 
^1683675200241

How many functions does `std::seed_seq` perform? #card 
- First, it can hold multiple seed values, so we can use it to seed our PRNG with more than one value.
- Second, it will generate as many additional unbiased seed values as needed to initialize a PRNG’s state.
	- So if you initialize `std::seed_seq` with a single 32-bit integer (e.g. from std::random_device) and then initialize a Mersenne Twister with the `std::seed_seq` object, `std::seed_seq` will generate 620 bytes of additional seed data. The results won’t be amazingly high quality, but it’s better than nothing. 
^1683673446334


---
#### Warming up a PRNG


---
#### Random numbers across multiple functions or files (Random.h)


Is it a correct approach to create (And seed) our PRNG in our `main()` function, and then pass it everywhere we need it. #card 
No, that’s a lot of passing for something we may only use sporadically, and in different places. It would add a lot of clutter to our code to pass such an object around.
^1683673446347


Is it a correct approach to create a static local std::mt19937 variable in each function that needs it (static so that it only gets seeded once)? #card
No, it’s overkill to have every function that uses a random number generator define and seed its own local generator, and the low volume of calls to each generator may lead to lower quality results.
^1683673446352


It it a correct approach to create a global random number generator object (inside a namespace!)? #card 
Yes! Remember how we told you to avoid non-const global variables? This is an exception.
Here’s a simple, header-only solution that you can `#include` in any code file that needs access to a randomized, self-seeded `std::mt19937`: 
**Random.h**:
```cpp
#ifndef RANDOM_MT_H
#define RANDOM_MT_H
#include <chrono>
#include <random>
// This header-only Random namespace implements a self-seeding Mersenne Twister
// It can be included into as many code files as needed (The inline keyword avoids ODR violations)
namespace Random
{
	inline std::mt19937 init()
	{
		std::random_device rd;
		// Create seed_seq with high-res clock and 7 random numbers from std::random_device
		std::seed_seq ss{
			static_cast<unsigned int>(std::chrono::steady_clock::now().time_since_epoch().count()),
			rd(), rd(), rd(), rd(), rd(), rd(), rd() };
		return std::mt19937{ ss };
	}
	// Here's our std::mt19937 PRNG object
	// The inline keyword also means we only have one global instance for our whole program
	inline std::mt19937 mt{ init() };
	// Generate a random number between [min, max] (inclusive)
	inline int get(int min, int max)
	{
		std::uniform_int_distribution die{ min, max };
		return die(mt); // and then generate a random number from our global generator
	}
};
#endif
```
And a sample program showing how it is used:
**main.cpp**:
```cpp
#include <iostream>
#include "Random.h" // defines Random::mt and Random::get()
int main()
{
	// Use Random::get() to generate a random number between 1 and 6
	std::cout << Random::get(1, 6) << '\n';
	// Create a reusable random number generator that generates uniform numbers between 1 and 6
	std::uniform_int_distribution die6{ 1, 6 }; // for C++14, use std::uniform_int_distribution<> die6{ 1, 6 };
	// Print a bunch of random numbers
	for (int count{ 1 }; count <= 10; ++count)
	{
		// We can also directly access Random::mt
		std::cout << die6(Random::mt) << '\t'; // generate a roll of the die here
	}
	return 0;
}
```
^1683673446357

What does ODR stand for? #card 
One-definition rule
^1683680116093

What is the one-definition rule? #card-reverse 
- The <span class="spoiler">One Definition Rule (ODR)</span> is an important rule of the C++ programming language that prescribes that classes/structs and non-inline functions cannot have more than one definition in the entire program and template and types cannot have more than one definition by translation unit [1](https://en.wikipedia.org/wiki/One_Definition_Rule).
- In short, the <span class="spoiler">ODR</span> states that: In any translation unit, a template, type, function, or object can have no more than one definition. Some of these can have any number of declarations. A definition provides an instance [1](https://en.wikipedia.org/wiki/One_Definition_Rule).
^1683680116100

What happens if I violate the ODR? #card-reverse 
Normally, defining variables and functions in a header file would cause violations of the <span class="spoiler">one-definition rule (ODR)</span> when that header file was included into more than one source file. 
^1683680116106

What is a translation unit in C++? #card-reverse 
A <span class="spoiler">translation unit</span> is the basic unit of compilation in C++. It consists of the contents of a single source file, plus the contents of any header files directly or indirectly included by it, minus those lines ignored using conditional preprocessing statements.
^1683680116111

Is each translation unit compiled independently by the compiler? #card 
Yes.
^1683680116115


What are inline functions? #card-reverse  
An <span class="spoiler">inline function</span> is a function that is expanded in line when it is called. When the <span class="spoiler">inline function</span> is called, the whole code of the inline function gets inserted or substituted at the point of the inline function call. 
^1683680116120

When does the substitution for inline functions happen? #card  
The substitution is performed by the C++ compiler at compile time. 
^1683680116125

What are inline functions used for? #card-reverse 
<span class="spoiler">Inline functions</span> are used to reduce the function call overhead and can increase efficiency if they are small [1](https://www.geeksforgeeks.org/inline-functions-cpp/).
^1683680116131


What are the advantages to inline functions? #card-reverse 
There are several advantages to using <span class="spoiler">inline functions.</span>
- <span class="spoiler">For example, function call overhead doesn’t occur, which can save the overhead of push/pop variables on the stack when a function is called.</span>
- <span class="spoiler">It also saves the overhead of a return call from a function. When you inline a function, you may enable the compiler to perform context-specific optimization on the body of the function.</span>
	- <span class="spoiler">Such optimizations are not possible for normal function calls.</span>
^1683680116138


What are the disadvantages to using inline functions? #card-reverse 
The added variables from the <span class="spoiler">inlined function</span> consume additional registers. After the <span class="spoiler">in-lining function</span>, if the variable number which is going to use the register increases then they may create overhead on register variable resource utilization.
^1683680116144


How do I decide when to use inline functions? #card 
- In general, inline functions are most effective when they are small and called frequently. 
- For functions that are large and/or perform complex tasks, the overhead of the function call is usually insignificant compared to the amount of time the function takes to run. 
	- However, for small, commonly-used functions, the time needed to make the function call is often a lot more than the time needed to actually execute the function’s code.
^1683680116151

Is inlining a command? #card 
No, inlining is only a request to the compiler, not a command.
- The compiler can ignore the request for inlining and may not perform inlining in such circumstances as if a function contains a loop, if a function contains static variables, if a function is recursive, if a function return type is other than void and the return statement doesn’t exist in a function body or if a function contains a switch or goto statement.
^1683680116157

What is function call overhead? #card 
Function call overhead refers to the extra time and resources required by the computer to perform a function call. When a program executes a function call, the CPU stores the memory address of the instruction following the function call, copies the arguments of the function onto the stack, and finally transfers control to the specified function. The CPU then executes the function code, stores the function return value in a predefined memory location/register, and returns control to the calling function.
This process can become overhead if the execution time of the function is less than the switching time from the caller function to called function (callee). For functions that are large and/or perform complex tasks, the overhead of the function call is usually insignificant compared to the amount of time the function takes to run. However, for small, commonly-used functions, the time needed to make the function call is often a lot more than the time needed to actually execute the function’s code.
^1683680116163

Normally, defining variables and functions in a header file would cause {violations of the one-definition rule (ODR)} when that header file was {1:included into more than one source file}.
^1683688043147

Making your variables and supporting functions `inline`, allows you {to have duplicate definitions without violating the ODR so long as those definitions are identical}.
^1683697352549

How can one ensure that are definitions for our `inline` functions are *all* identical? #card 
`#include` those definitions from a header file (rather than typing them manually, or copy/pasting them).
- Inline functions and variables were added to the language to largely make doing this kind of header-only functionality possible.
^1683697352566


---
#### Debugging programs that use random numbers

How to properly debug programs that use random numbers? #card 
When debugging, it’s a useful technique to seed your PRNG with a specific value (e.g. `5`) that causes the erroneous behavior to occur.
- This will ensure your program generates the same results each time, making debugging easier. Once you’ve found the error, you can use your normal seeding method to start generating randomized results again.
^1683673446362

---
#### Random FAQ


### 7.x: [Chapter 7 summary and quiz](https://www.learncpp.com/cpp-tutorial/chapter-7-comprehensive-quiz/)
