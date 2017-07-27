//: [Previous](@previous)
//:## TL;DR
import EntropyString

//: 48-bit string using base32 characters:
var string = RandomString.entropy(of: 48, using: .charSet32)
//: * callout(string): MRd272t4G3
//:
//: 48-bit string using hex characters:
string = RandomString.entropy(of: 48, using: .charSet16)
//: * callout(string): 7973b7cf643c
//:
//: 48-bit string using uppercase hex characters:
let randomString = RandomString()
try! randomString.use("1234567890ABCDEF", for: .charSet16)
string = randomString.entropy(of: 48, using: .charSet16)
//: * callout(string): 6D98AA8E6A46
//:
//: Base 32 character string a with 1 in a million chance of a repeat in 30 such strings:
var bits = Entropy.bits(for: 30, risk: 1000000)
string = RandomString.entropy(of: bits, using: .charSet32)
//: * callout(string): BqMhJM
//:
//: Base 32 character string with a 1 in a trillion chance of a repeat in 10 million such strings:
bits = Entropy.bits(for: .ten07, risk: .ten12)
string = RandomString.entropy(of: bits, using: .charSet32)
//: * callout(string): H9fT8qmMBd9qLfqmpm
//:
//: OWASP session ID using file system and URL safe characters:
string = RandomString.entropy(of: 128, using: .charSet64)
//: * callout(string): RX3FzLm2YZmeBT2Y5n_79C
//:
//: [TOC](Table%20of%20Contents) | [Next](@next)
