Let's build a simple AirBnB clone with a [remote static JSON](https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json) DB with:

- A home page listing flats
- A _dynamic_ show page for a specific flat

#### Reminder

One way to get infos from a JSON in Ruby is:

```ruby
require "open-uri"

url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
flats = JSON.parse(open(url).read)
```
