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

#Steps to finding the problem for encode method.

# step1: Find the exact line causing the error. Make note of the error message.
# step2: Using the p command get visibility of what's happening on that exact line
# step3: Once you understand the one problem causing the error, investigate the origins of the object responsible the return.
# step4: Using the p command get visbility of this object output and investigate your problems in step 3.
# step5: Once you found your problem test your theory to satisfy step 3 using the # and p command.
# step5: Fix and run your problem.

# Steps to finding problem for decode method

# steps1: 
