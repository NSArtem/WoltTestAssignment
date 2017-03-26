### Wolt iOS Test Assignment

#### Task

* Make project run. 
* Tap on the "open intercom" button. 
* On that screen there is a label with the text "Hey there. Change #This# to be #That#"

#### Comments

Since we don't neither API nor the access to the admin panel of Intercom, the code relies on the internal implementation of UI and searches for the particular `UITextField` class in the hirarchy, and changes the text directly on it.