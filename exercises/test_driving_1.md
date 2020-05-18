## Exercise 1
Apply the imagine how to use it strategy for this brief:
```
As a student
So that I can remember people’s names
I want an IRB application that stores the names of people I meet
```

Don’t implement the solution — just imagine how to use it.

You will know it’s right by reading the brief back and checking that your imagined solution satisfies it.

### Answer
```
> store_name("leye")
=> "name stored"

store_name("tunji")
=> "name stored"
```

## Exercise 2

Apply the imagine how to use it strategy for this brief:
```
As a student
So that I can understand my recent motivation
I want an IRB application that stores my motivation ratings
And I want to see the average of my last 3 ratings
```
Don’t implement the solution — just imagine how to use it.

You will know it’s right by reading the brief back and checking that your imagined solution satisfies it.

### Answer
```
> track_motivation(5)
=> "motivation stored"

track_motivation(5)
=> "motivation stored"

track_motivation(10)
=> "motivation stored"

> average_motivation 
=> 6.67
```

## Exercise 3
There’s something rather neat about the imagine how to use it strategy for deciding what software to write. We can convert our examples into tests quite easily.

This is how we do it:
```
# The imagined example
> track_motivation(5)
=> "Motivation stored!"

# The expectation
expect(track_motivation(5)).to eq "Motivation stored!"

# The full test
describe "the track_motivation method" do
  it "gives us a friendly message" do
    expect(track_motivation(5)).to eq "Motivation stored!"
  end
end
```
Take your result from Exercise 1 (remembering names) and convert it to a test like the above.

## Answer

```
# the expectation
expect (store_name(name)).to eq("stored name")

# the full test
describe "the store_name method" do 
  it 'returned confirmation of stored name' do
    expect(store_name(name)).to eq "store name"
  end
end
```

