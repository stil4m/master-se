# Workshop Testing and Formal Methods, Week 4

#### Question 1

<table class="table">
    <thead>
    <tr>
      <th></th>
      <th>$\lt$</th>
      <th>$\le$</th>
      <th>succ</th>
      <th>div</th>
      <th>coprime</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Irreflexive</td>
      <td>x</td>
      <td></td>
      <td>x</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Reflexive</td>
      <td></td>
      <td>x</td>
      <td></td>
      <td>x</td>
      <td></td>
    </tr>
    <tr>
      <td>Asymmetric</td>
      <td>x</td>
      <td></td>
      <td>x</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Antisymmetric</td>
      <td>x</td>
      <td>x</td>
      <td>x</td>
      <td>x</td>
      <td></td>
    </tr>
    <tr>
      <td>Symmetric</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td>x</td>
    </tr>
    <tr>
      <td>Transitive</td>
      <td>x</td>
      <td>x</td>
      <td></td>
      <td>x</td>
      <td></td>
    </tr>
    <tr>
      <td>Linear</td>
      <td>x</td>
      <td>x</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
  </table>

----

#### Question 2

**1)**

$A = \{0,1,2,3,4\}$

$R = \{(0,2),(0,3),(1,0),(1,3),(2,0),(2,3)\}$

$R^2 = \{(0,0),(0,3),(1,2),(1,3),(2,2),(2,3)\}$

$R^3 = \{(0,2),(0,3),(1,0),(1,3),(2,0),(2,3)\} = R$

$R^4 = R^3 \cdot R = R \cdot R = R^2$

**2)**

Guess: $R \cup R^2$

Proof:  
$R \cup ((R \cup R^2) \cdot R) = R \cup ((R \cdot R) \cup (R^2 \cdot R)) = R \cup R^2 \cup R = R \cup R^2$

----

#### Question 3

$S = R^+ = \{(0,2),(0,3),(1,0),(1,3),(2,0),(2,3),(0,0),(2,2),(1,2)\}$

----

#### Question 4

$R = \{(0,1)\}$

----

#### Question 5

$\le$

----

#### Question 6


1. Predecessor
1. $\{ (n,m)\ |\ n,m \in \mathbb(N),\ |n-m| = 1 \}$
1. $\mathbb{N}^2$ (Cartesian product)

----

#### Question 7

1. No, suppose $R = \{(0,1),(1,0)\}$, which is not reflexive, but $R^{-1} = R$ holds.
1. Yes. Let $(x,y)\in R$, then $(y,x) \in R^{-1}$. Since $R^{-1} \subseteq R$, then $(y,x) \in R$, thus $R$ is symmetric.
1. No. See argument 1.

----

#### Question 8

1. Yes.
1. Yes. Symmetry holds over the reflexive closure.
1. No. When $R = \{(0,1),(2,1)\}$ the property will not hold.
1. Yes. Symmetry will be preserved under the transitive reflexive closure and because of the closure, it will have the reflexive and transitive properties. Thus it is a equivalence relation.
