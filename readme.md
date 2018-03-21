## Caesar Cipher
Using this [repo](https://github.com/turingschool-examples/caesar_cipher), build a well tested Ruby program that translates a message using the Caesar Cipher. 

You can read more about the Caesar Cipher [here](https://en.wikipedia.org/wiki/Caesar_cipher). 

Note: We are shifting left. So if we shift 3, A is now X, D is now A and so forth.


## Submission instructions

1. Fork the repo above
2. Clone your fork
3. Push your solution to your fork
4. Use Github's interface to create a pull request

### Iteration 0 
Translate English to ciphertext
* lowercase letters

```ruby 
  $ caesar = Caesar.new 
  => #<Caesar:0x007fa1ab98cac0>
  $ caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3) 
  => "qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald"
```
### Iteration 1
Translate English to ciphertext
* Case sensitivity

```ruby
$ caesar = Caesar.new
=> #<Caesar:0x007fa1ab98cac0>
$ caesar.eng_to_cipher("The quick brown fox JUMPS over the lazy DOG", 3) 
=> "Qeb nrfzh yoltk clu GRKMP lsbo qeb ixwv ALD"
```


### Iteration 2  
Translate English to ciphertext
* from a file  

```
# in input.txt
I am in a file
```

```ruby 
  $ caesar = Caesar.new 
  => #<Caesar:0x007fa1ab98cac0>
  $ caesar.from_file("input.txt")
  => "F xj fk x cfib "
```

### Iteration 3 
Translate ciphertext to English

```ruby 
  $ caesar = Caesar.new 
  => #<Caesar:0x007fa1ab98cac0>
  $ caesar.cipher_to_eng("qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald") 
  => "the quick brown fox jumps over the lazy dog"
```
