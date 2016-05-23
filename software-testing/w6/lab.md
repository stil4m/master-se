# Lab 6 Software Specification and Testing

#### 1\. Implement expM

We did this exercise on our own and I used a reference from [Khan Academy](https://www.khanacademy.org/computing/computer-science/cryptography/modarithmetic/a/modular-exponentiation). Jasper and me solved it, but Jasper his implementation was more nicer. Although I refactored my implementation, we took his.

#### 2\. Test the performance of `exM` and `expM`

_Performed by Nikki and Paco_

#### 3\. Write a function that generates composite numbers <small>Together with Jasper</small>

Pretty easy with the assumption that we could use the generation of prime numbers.

#### 4\. Least number that fails Fermat's primality check <small>Together with Jasper</small>

Is 4 and will always be 4 depending on the repetition and the value of `k`.

#### 5\. What do you find when you test carmicheal numbers with the Fermat primality check

_Performed by Jasper_

#### 6\. Use Miller-Rabin to test the carmicheal What do you find when you test carmicheal numbers with the Fermat primality check

Performed by me. It was quite easy to see that the test of Miller-Rabin was much more eficient.

#### 6\. Use Miller-Rabin to generate large Mersenne primes

Easy implementation that uses a stream of low primes to generate larger primes.

#### 7\. Generate a pair of large primes to create a public and private key <small>Together with Jasper</small>

Easy implementation. Interesting note was that the least significant bit should be 1 to create a uneven number.
