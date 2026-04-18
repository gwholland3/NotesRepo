I’m reading the book “What Is The Name of This Book?”, by Raymond Smullyan, and want to take notes about some of the problems/concepts it presents.

**Problem 263.**
First: is the set of all sets of natural numbers countable? (Note that this set is called the **power set** of the set of natural numbers)
No, it is not.
Suppose it was. Then, you’d have an infinite enumeration of this power set, s1, s2, …, sn, …
However, I can construct a new set s that is a member of the power set, but must be different from any of the already-listed sets. Because this set s is not in the enumeration, the enumeration is not complete, and the power set is uncountable.
Construct s as follows: for every natural number k, k is in s iff k is not in sk.

Reference for following problems:
- Condition E1: the set of established knights forms a club on this island
- Condition E2: the set of established knaves forms a club on this island
- Condition C: for any club C on this island, there also exists a club C’ consisting of all the non-members of C
- Condition G: for any club C on this island, there is at least one inhabitant who would claim to be a member of C if asked
- Condition H: for any club C, there is another club D, such that every member of D has a member of C who testifies that said member of D is sociable, and every non-member of D has a non-member of C who testifies that said non-member of D is sociable
- Condition GG: for any two clubs C1 and C2, there are inhabitants A and B such that A claims B is a member of C1 and B claims A is a member of C2.

### Problem 264.
What did this establish?
264a: Two things:
1. That given conditions E1, C, and G, there is at least one unestablished knight on the island
2. Also that given conditions E2 and G, there is at least one unestablished knave on the island

264b: Two things:
1. That given condition G, the set of knaves does not form a club on this island
2. Also that given conditions G and C, the set of knights also does not form a club on this island

### Problem 265.
Take any club C. Consider its associated club D given by condition H.
Club D must be named after an inhabitant; call that inhabitant John. Either John is or isn’t in his own club.

Suppose he is. Then there is someone in club C (call him Jack) who testifies that John is sociable (i.e. that John is a member of club D).
Since John *is* a member of club D, Jack is telling the truth, and is therefore a knight. Because he’s a knight, and he is in club C, he will also truthfully claim to be in club C.

Suppose John isn’t in his own club. Then there is someone not in club C (call him Jake) who testifies that John is sociable. However, John is *not* sociable, since he isn’t in his own club. Therefore Jake is lying, and Jake must be a knave. Since Jake is a knave, and he is not in club C, he will also lie and claim that he *is* in club C.

To summarize: for any club C, regardless of whether its associated club D contains the inhabitant it is named after, someone will claim to be in club C. This proves the Godelian condition is true.

All in all, what did this problem establish? That given condition H (and the implicit/unnamed condition that there is a one-to-one mapping between inhabitants and clubs), condition G is true. That is, condition H implies condition G.

**Problem 266.**
This problem is all about the dual paradox thing, e.g.:

The following sentence is true.
The preceding sentence is false.

Some conclusions:
- Condition C and condition GG together imply that neither the set of knights nor the set of knaves forms a club on this island
- Conditions C, GG, and E1 imply that there is at least one unestablished knight on the island
- Conditions C, GG, and E2 imply that there is at least one unestablished knave on the island

**Problem 267.**
If you have an island with conditions E1, E2, and GG, but not condition C, you can still demonstrate that the knights on an island and the knaves on an island cannot both form clubs.

You can also demonstrate that there has to be at least one unestablished knight OR one unestablished knave.

### Problem 268a.
I’ve proven it!

An island in which G holds but GG does not: 1 knight who forms his own club, and any positive number of knaves who form a club with the same knight.
An island in which GG holds but G does not: 1 knave who forms his own club with any number of additional knaves, and who also forms a club with any positive number of knights.

### Problems 268b and 268c.
Skipping.

### Problem 269.
What is the mapping from this problem to the previous ones?

Sentences are either true or false - they are either knights or knaves?
- The “Book of Sentences” represents the list of all the inhabitants on the island - all of them sentences, either true/knight or false/knave
They are also assigned a number - this is their “name”?
A sentence proven to be true is an established knight, and a sentence disproven (proven to be false) is an established knave.
Sentences that are neither proven true nor proven false yet are unestablished - they could be knights or knaves.
You can use already-proven and already-disproven sentences, plus some rules of reasoning, to prove/disprove additional yet-to-be-proven sentences.
The “Book of Sets” represents the list of all the clubs on the island. Each club/set contains any number of inhabitants/sentences.
- A “listed set” means an existing club on the island
- Each set is *also* assigned a number - this is the club’s name, which corresponds to the name of an inhabitant (or the number of a sentence, if you will)
A number n is extraordinary if club/set n contains the number n - aka if sentence n is in set n
- This is the same as an inhabitant whose name is “n” being sociable
- The inverse of this for a number n is being ordinary (unsociable)
A number h is an associate of n if sentence h asserts that n is extraordinary.
- Translated: inhabitant h is a friend of inhabitant n if h states that n is sociable

New Conditions:
- E1: The set of page numbers of all provable sentences is a listed set in the system (the set of established knights forms a club on the island)
- E2: The set of page numbers of all the disprovable sentences is a listed set in the system (the set of established knaves forms a club on the island)
- C: For any listed set A, the set A’ of all numbers no in A is a listed set (for any club C, all non-members of C form a club of their own)
- H: Given any listed set A, there is another listed set B such that every number in B has an associate in A and every number outside B has an associate outside A (for any club C, there is another club D such that every member of D has a friend in C and every non-member of D has a friend who is a non-member of C)

Things that still confuse me:
- A knight or knave can make multiple, separate statements, such as “I am a member of club M”, and “I am not a member of club N”, and “2 + 2 = 4”. But a sentence can only make a single statement, right?

For example, here’s the new condition G: “for any listed set A, there is a sentence which is true if an only if its own page number lies in A”
Hm, I guess that says that *at least one* sentence claims that it is a member of set A.
- Actually, this is not true. The sentence satisfying condition G for a set A does not necessarily need to assert that it is a member of A. You can use condition H to prove that said sentence is either true and is a member of A, or is false and isn’t (the inhabitant is either a knight and is a member, or is a knave and isn’t)
- This is why the new condition G is somewhat differently phrased than the old one: because all we care about is the truthiness of a sentence, not whether it claims to be a member of a particular set (i.e. once you’ve established that an inhabitant is a knight/knave, you can derive which clubs it will claim to be a member of)

### Problem 270.
Wow.
What is a mathematical system, as it pertains to Godel’s Incompleteness Theorem?
Such a system is comprised of:
- A set of expressions/sentences
- A classification of every expression as true or false
- “Known-true” sentences - these are simply self-evidently true (the axioms of the system)
- A list/set of defined subsets of the natural numbers
When you list (assign a name/number to) all the expressions, the number of each expression is called its “Godel number”



