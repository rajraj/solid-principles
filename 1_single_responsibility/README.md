# Single Responsibility
The most popular of the SOLID design principles, the single responsibility principle dictates that a class should have only one reason to change.

## To run the code
```
$ ruby app.rb
```

## Code structure
```
├── README.md
├── app.rb          # App entry point
├── formatter       
│   ├── base.rb     # Base class defines the methods it's subclasses should implement.
│   ├── html.rb     # Implements the HTML formatting logic.
│   └── json.rb     # Implements the JSON formatting logic.
├── reporter.rb     # Formats the sales data to the given format (html/json).
└── repository.rb   # Responsible for getting the data from database or api.
```
