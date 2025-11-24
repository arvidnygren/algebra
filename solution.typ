#let author = "Arvid Nygren"
#set page(
  header: [#author #h(1fr) #datetime.today().display()]
)

#set enum(numbering: "(a)")
#set text(font: "New Computer Modern", size: 11pt)
#let mn = [$2 #sym.dot.op 3 #sym.dot.op 5^2 #sym.dot.op 13$] 

= Graded Assignment, Algebra MATH-310
\
Throughout the assignment we will use the following values for $n$ and $m$

$ n = 30 &= 2 #sym.dot.op 3 #sym.dot.op 5 \
 m = 65 &= 5 #sym.dot.op 13 \
 n m = 1950 &= mn \
 m^2 &= 4225 $


== Exercise 1
\
+
  We start by noticing that after decomposing $|G| = m n =  $ that only one prime factor has multiplicity greater than 1, namely $p^k = 5^2$. Thus there is a bijection between the partitions of $k$ and the number of groups with order $m n$.

  There exists two partitions of 2
  $ (2), (1,1) $

  The two non-isomorphic abelian groups of order $n m$ are thus
  $ G_1 = C_2 times C_3 times C_5 times C_5 times C_13, \
   G_2 = C_2 times C_3 times C_13, times C_25, \
  $

  The elementry divisors are as follows ${(2,3,5,5,13), (2,3,5,5^2,13)}$

  To compute the invariant factors we use the lemma that $C_a times C_b tilde.eq C_(a b)$ iff $gcd(a,b) = 1$. I.e we re-write the product of the cyclic groups such that we have that the order of the highest order group is divisible by the one with second highest order etc. In our case this is trivial since we only have two groups. We obtain
  $ C_390 times C_5, \
    C_1950 $

  and the set of invariant factors is ${(390,5), (1950)}$.

+
  By using the property that the individual groups are subgroups of direct products with other groups and the same lemmma used in the previous question we obtain for the first group:
  $ G_1 = C_2 times C_3 times C_5 times C_5 times C_13 = C_30 times C_5 times C_13 supset C_30 $

  Let the other group be denoted $G_2 = C_2 times C_3 times C_13, times C_25$ Let $a in C_2, b in C_3$ denote generators in respective group, we also know by Cauchy's theorem that there exists some $d in C_25 "s.t" "ord("d")" = 5$. Consider the element $g = (a,b,1,d) in G_2$, its order is determined by $lcm(2,3,1,5)=30$. Thus $chevron.l g chevron.r tilde.eq C_30 subset G_2$ and we haved showed that $C_30$ is a subgroup in all abelian groups of order 1950.

+ If the group $G$ contains an element of order $m$ then this element also generates a subgroup $chevron.l g chevron.r tilde.eq C_m$. Conversly $C_m$ contains by definition an element of order m. Thus we can apply similair arguments as to the previous question.

 For $G_1$ we can apply the same argument as in the previoius question:
  $ G_1 = C_2 times C_3 times C_5 times C_5 times C_13 = C_2 times C_3 times C_5 times C_65 supset C_65 $

  The argument for $G_2$ is similair to the previous question with $g = (1,1,c,d)$ where $c$ is a generator in $C_13$ and $d$ has order 5.

+ In class we proved that $C_n times C_m = C_(n m) <==> gcd(n,m) = 1$. Since $gcd(n,m) = 5$ in our case we have $C_n times C_m tilde.eq.not C_(n m)$.
MORE HERE

== Exercise 2 
\
+ We have $a=(425), b=(195)$
  $ x = a #sym.dot.op b #sym.dot.op (1234) = (15)(23)(49) $

+ Since x is a product of 3 transpositions its cycle type is $(2,2,2)$ and its order is 2. That is because the order of the product is the lcm of the cycle lengths and $lcm(2,2,2) = 2$.

+ Firstly write out the integers $1..9$ in any order, this can be done in $9!$ ways. We then fix the parantheses according to our cycle type.
  $ s = (a,b)(c,d)(e,f)(g)(h) $
  Since $(a,b)=(b,a)$ we divide by $2^3$. Note that permuting any two cycles of same length gives us a different element according to our counting but still yields the same element in $S_9$ due to the cycles being disjoint. Therefore we also divide by $3! #sym.dot.op 3!$, finally we obtain

$ |"Cl"(s)| = 9!/(2^3 3! 3!) = 1260 $
 

== Exercise 3 
\
+ Fist notice that $j(i) = s^3(i) = ((i-1+3)  mod m) + 1$ let $i=1$ and we can compute
  $ s^3 = (i, j(i), j^2(i), ... , j^(m-1)(i)) = \
 (1, 4, 7, ... , 64, 2, 5, ... , 65, 3, 6, ... ,63) $
  Essentially this is just integers $mod 65$ and we have $chevron.l s chevron.r = C_65$.

+ If $s^3$ is a single cycle then we know that $"Orb"_(s^3)(i_j) = {i_0, i_1, ..., i_(m-1)}$ has size $m$ (index renaming easier computaiton). Since $(s^3)^d (i_j) = i_(j + 3 d mod m)$ it must hold that $m$ is the smallest $d$ such that
  $ i_(j + 3 d mod m) = i_j $
  Which is equivalent to  $3 divides.not m$ $<==>$ $gcd(3,m)=1$, the nessecary condition.

+ In the previous question we showed that $s^3$ is a single cycle iff $gcd(m,3)=1$. In the case of $s^3$ being a product of multiple disjoint cycles we thus know that $gcd(m,3)>1$ and since 3 is prime we have $gcd(m,3)=3$.

  Thus there exists an $d<m$ such that

  $ i_(j + 3 d mod m) = i_j $
  namely $m/3$. The elements ${i_0, i_1, ..., i_(m-1)}$, which are $m$ in total, will be in 3 different orbits of size $m/3$, each corresponding to a disjoint cycle in $s^3$. The order of $s^3$ is given by $lcm(m/3,m/3,m/3) = m/3$.

+ The sizes of the orbits (and thus the length of the disjoint cycles) in $s^3$ can more generally be obtained by considering smallest $d$ such that
  $ 3 d mod m = 0 $ which is
  $ d=m/gcd(m,3) $
  For $s^3$ to be a product of transpositions, the orbit size $d$ must equal 2. Since $m>=3$ and $gcd(m,3) in {1,3}$ the only possible solution to
  $ m/gcd(m,3) = 2 $
  is $m=6$.
