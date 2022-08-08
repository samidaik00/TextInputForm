# TextInputForm

The app is composed of a simple view that lets the user edit a text field and fill it with random text.
The (business) logic which consits of creating the text is defined by a protocol `TextGenerator` which the app implements through the `RandomTextGenerator` class. The idea is that if the business rules change over time, the implementation of the `TextGenerator` can just be swapped to a new class without modiying the view code.

Finally the View uses a simple ViewModel for the data & user interactions, assembled together by the static function `static func assemble()`
