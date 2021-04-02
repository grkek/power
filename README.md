# Power

**Power** provides you with *macros* which can ease your life by abstracting away the extra syntax.

## Code example

Add this to your application's `application.cr`:

```ruby
require "power"

# Define nested modules to show the issue
module First::Second::Third
  class Fourth; end
  class Fifth; end
  class Sixth; end
end

# Example with the `Power::Macros`
class Seventh
  # Inculde the macros module
  include Power::Macros

  # Import the class access in this class
  import First::Second::Third, [Fourth, Fifth, Sixth]
  import First::Second::Third::Fourth, as: FourthDoppelganger

  def initialize
    pp Fourth.new
    pp FourthDoppelganger.new
  end
end
```

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  power:
    github: grkek/power
```

And run this command in your terminal:

```bash
shards install
```