---
title: "305 Lecture 31 - Probability Revision"
author: "Brian Weatherson"
date: "July 22, 2020"
output: 
  beamer_presentation:
    md_extensions: +link_attributes
    keep_tex: true
    latex_engine: xelatex
    includes:
      in_header: 305-beamer-header.tex
---

## Plan

- This is a short lecture just for revising some of the basic principles about probability.

## Associated Reading

None - this is just revision

## The Negation Rule

1. All logical truths have probability 1, so $\Pr(A \vee \neg A) = 1$. \pause
2. If $X$ and $Y$ are exclusive, then $\Pr(X \vee Y) = \Pr(X) + \Pr(Y)$. \pause
3. $A$ and $\neg A$ are exclusive. \pause
4. So, from 1, 2, 3, we get $\Pr(A) + \Pr(\neg A) = 1$. \pause
5. So, from 4, we get $\Pr(\neg A) = 1 - \Pr(A)$.

## The Multiplication Rule

1. By definition, $\Pr(A | B) = \frac{\Pr(A \wedge B)}{\Pr(B)}$. \pause
2. Multiplying both sides by $\Pr(B)$ gives us $\Pr(A \wedge B) = \Pr(A | B)\Pr(B)$.

## Another Addition Rule

1. $B$ is logically equivalent to $(A \wedge B) \vee (\neg A \wedge B)$. \pause
2. So, $\Pr(B) = \Pr((A \wedge B) \vee (\neg A \wedge B))$. \pause
3. $(A \wedge B)$ and $(\neg A \wedge B)$ are exclusive. \pause
4. So $\Pr((A \wedge B) \vee (\neg A \wedge B)) = \Pr(A \wedge B) + \Pr(\neg A \wedge B)$. \pause
5. By the multiplication rule, $\Pr(A \wedge B) = \Pr(B | A)\Pr(A)$. \pause
6. Also by the multiplication rule, $\Pr(\neg A \wedge B) = \Pr(B | \neg A)\Pr(\neg A)$. \pause
7. Putting all these together, we get

$$
\Pr(B) = \Pr(B | A)\Pr(A) + \Pr(B | \neg A)\Pr(\neg A)
$$

## Another Conditional Probability Rule

Putting that formula for $\Pr(B)$ into the definition of conditional probability, we get

$$
Pr(A | B) = \frac{\Pr(A \wedge B)}{\Pr(B | A)\Pr(A) + \Pr(B | \neg A)\Pr(\neg A)}
$$

## Yet Another Conditional Probability Rule

\begin{align*}
\Pr(B | A) \times \frac{\Pr(A)}{\Pr(B)} &= \frac{\Pr(B \wedge A)}{\Pr(A)}  \times \frac{\Pr(A)}{\Pr(B)} \\
 &= \frac{\Pr(A \wedge B)}{\Pr(A)}  \times \frac{\Pr(A)}{\Pr(B)}  \\
 &= \frac{\Pr(A \wedge B)}{\Pr(B)} \\
 &= \Pr(A | B)
\end{align*}

## Yet Another Conditional Probability Rule

Or, as it is usually written

$$
Pr(A | B) = \frac{\Pr(B | A)\Pr(A)}{\Pr(B)}
$$

## For Next Time

- We will look at a more complicated example of inverting conditional probabilities.
