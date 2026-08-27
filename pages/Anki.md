- Website: https://apps.ankiweb.net/
- Anki is open source: https://github.com/ankitects/anki/blob/main/docs/contributing.md
- The primary interface is a free desktop app, but there is also a paid mobile app that syncs with your desktop client for free.
	- Desktop keyboard shortcuts: https://slidetoanki.com/blog/anki-keyboard-shortcuts-guide
- Documentation: https://docs.ankiweb.net/
- Anki is a flashcard tool for studying/learning.
- It uses two well-established strategies from memory sciences:
	- Active Recall: you try to remember something actively, rather than just reading or listening passively.
	  logseq.order-list-type:: number
	- Spaced Repetition: you only study cards when you're about to forget them, which is more efficient.
	  logseq.order-list-type:: number
- See more on the science behind the Anki methods here: https://docs.ankiweb.net/background.html
- Might be worth enabling the [Free Spaced Repetition Scheduler](https://docs.ankiweb.net/deck-options.html?highlight=FSRS#fsrs), which is a newer algorithm than Anki's legacy SuperMemo 2 algorithm.
- ## Concepts
	- Anki's most basic concept is its flashcards. Each flashcard, or [**card**](https://docs.ankiweb.net/getting-started.html#cards) for short, is a simple question/answer pair.
	- A card can be in one of the following states:
		- New: hasn't been shown yet.
		- Learning: shown for the first time recently, still being learned.
		- Review: has made it passed the "learning" stage, and now has a set interval for being re-studied.
		- Relearn: a card that you forgot while it was in the review stage, and needs to be relearned.
	- Cards are grouped into [**decks**](https://docs.ankiweb.net/getting-started.html#decks). A deck is a collection of cards, associated with its own deck settings.
	- Decks can contain other decks, meaning your decks can form a tree of cards. The common terminology used to refer to such decks is "parent decks" and "subdecks".
	- A single card can belong to multiple decks, and any created card not explicitly assigned to a deck will end up in a "Default" deck.
	- A [**note**](https://docs.ankiweb.net/getting-started.html#notes--fields) represents a collection of related information.
		- You can use a note as input to derive multiple individual cards, all testing your knowledge of that note's information.
		- For example, a single note might indicate that "pan" in Spanish means "bread" in English, and from that single note you could automatically generate two cards: one that shows you "pan" and asks you to recall "bread", and one that does the opposite.
			- Such an example note might look like this:
			  ```
			  Spanish: pan
			  English: bread
			  ```
		- The individual parts of a note (e.g. "pan" and "bread") are called its **fields**.
	- A card is derived from a note via a [**card type**](https://docs.ankiweb.net/getting-started.html#card-types), which acts like a template/blueprint for an individual card.
		- An example card type might look like this:
		  ```
		  Q: {{Spanish}}
		  A: {{English}}
		  ```
		- Then, you can plug in the fields from a note into that template to create a single card.
	- Every note must be of a certain [**note type**](https://docs.ankiweb.net/getting-started.html#note-types). A note type just determines which card types are associated with that note.
		- Thus, you can create a new note of a given note type, and it automatically results in the creation of several cards derived from that note's fields, based on which card types were tied to that note type.
	- Your [**collection**](https://docs.ankiweb.net/getting-started.html#collection) is all the content you have stored in Anki, e.g. all your cards, decks, notes, note types, etc
	- You can add [**tags**](https://docs.ankiweb.net/editing.html#using-tags) to notes, which allows you to search for them or filter them into temporary study decks.
- ## Studying
	- When choosing a deck to study from your list of decks, each deck will show you the number of cards that you should review in that deck today, divided into the "new", "learning", and "review" states.
		- For example, one of your decks might say that for today, there are 3 "new" cards to learn, 6 "learning" cards to study, and 18 "review" cards to review.
	- As a rule of thumb, you should show the answer if you can't remember it within 10 seconds.
	- If you come across a card you don't like while studying, you can "suspend" it, which hides it from being shown until unsuspended.