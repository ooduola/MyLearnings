# EXERCISE 4

# Your task is not to fix this code. Let go of that idea.
# Imagine your friend wrote this code and doesn't know where he went wrong. 
# He doesn't need your fix — he needs to understand the problem so he can write better code.
# To do this you need to find the problem. 
# Locate the problems in this code and make notes you can use to explain the problem.

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  plaintext_chars.join
end

#Steps to finding the problem

# step1: Find the exactly line you're getting the error from. Right down the error message causing the program to crash.
# step2: Using the p command get visibility of what's happening on the exact line
# step3: Once you understand the one problem 
# line 20: Use 'cipher.find_index(char)' to test your theo
# line 18: Once you locate the problem. Get visibility of the cipher variable to understand where thi 