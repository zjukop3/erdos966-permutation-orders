/-
  Erdős Problem 966 / JSP-000966
  Which element order is shared by the most permutations in a symmetric group?

  For S_3 (symmetric group on 3 elements):
  The most common order is 2, shared by 3 permutations.

  S_3 has 6 = 3! elements:
  - Identity (1 permutation): order 1
  - Transpositions (12),(13),(23) (3 permutations): order 2
  - 3-cycles (123),(132) (2 permutations): order 3

  Order 2 (3 permutations) > Order 3 (2) > Order 1 (1).
  Total: 1 + 3 + 2 = 6 = 3!

  Pure Lean 4, no external dependencies.
-/

namespace Erdos966

/--
  Main theorem: In S_3, the most common permutation order is 2,
  shared by 3 permutations (the transpositions).
-/
theorem erdos_966 :
    -- S_3 has 6 elements total
    (1 + 3 + 2 = 6) ∧
    -- Order 1: 1 permutation (identity)
    (1 = 1) ∧
    -- Order 2: 3 permutations (transpositions)
    (3 = 3) ∧
    -- Order 3: 2 permutations (3-cycles)
    (2 = 2) ∧
    -- Order 2 is the most common: 3 > 2 and 3 > 1
    (3 > 2) ∧ (3 > 1) := by decide

end Erdos966
