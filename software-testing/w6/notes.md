# Lecture 6 - Fast Modular Arithmetic and Public Key Cryptography  
<small>2015-10-05 - Jan van Eijck</small>

#### Lecture

The lecture focuses on algorithm that it is easy to compute the product of two primes, but it is hard to calculate the factors of this product. These are called trapdoor functions. The inverse is time consuming or impossible.

There are function that check primality. These properties are a little bit weaker than the actual property of being a prime. Thus it is possible to fool this check by introducing a composite that also holds this property.

#### Factorize

Naive: Take 2, check factor and else increase by 1\. Until value left is 0.

Improvements:

*   Until square root is reached
*   Only test primes as factors, other numbers can't be factors

<div class="alert alert-info">The improved solution is only faster when computing the primality for multiple primes, the factors implementation is lazy and will cost a lot of time for the initial primes.</div>

#### Mersenne Primes

_Literature: Mersenne in crypography_

_Literature: Mersenne in the Haskell Road book (3.35)_
