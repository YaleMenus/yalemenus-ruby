# yalemenus [![Gem Version](https://badge.fury.io/rb/yalemenus.svg)](https://badge.fury.io/rb/yalemenus)
_Yale Menus API Wrappers_ // [Python](https://github.com/YaleMenus/yaledining) // [**Ruby**](https://github.com/frc1418/yalemenus)

> Ruby library for interfacing with the [Yale Menus](https://yalemenus.com) [API](https://api.yalemenus.com).

## Installation

Add `yalemenus` to your `Gemfile`.
```ruby
gem 'yalemenus'
```
and then run
```bash
bundle install
```
in the same directory as the `Gemfile`.

Or install directly from RubyGems:
```bash
gem install yalemenus
```

## Setup
To use these functions, you must require the `` gem:

```ruby
require 'yalemenus'
```

You will then be able to reference the `YaleMenus` class within your code, and use its various methods to retrieve data.

## Retrieval Functions

Some requests support `year` and other optional parameters, which are recommended to use to narrow down your results.

* `YaleMenus.status()`
* `YaleMenus.halls()`
* `YaleMenus.hall(hall_id)`
* `YaleMenus.hall_people(hall_id)`
* `YaleMenus.hall_meals(hall_id, [date], [start_date], [end_date])`
* `YaleMenus.meal(meal_id)`
* `YaleMenus.meal_items(meal_id)`
* `YaleMenus.item(item_id)`
* `YaleMenus.item_nutrition(item_id)`
* `YaleMenus.item_reviews(item_id)`
* `YaleMenus.item_photos(item_id)`
* `YaleMenus.butteries`
* `YaleMenus.buttery(buttery_id)`
* `YaleMenus.buttery_items(buttery_id)`

See `example.rb` for several usage examples.

Documentation for the Yale Menus API can be found [here](https://api.yalemenus.com).

## Author
Created and maintained by [Erik Boesen](https://github.com/ErikBoesen).

## License
This software is protected under the [MIT License](LICENSE).
