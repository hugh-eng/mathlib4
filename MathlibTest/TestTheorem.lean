import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.Ring

/-!
# Test Theorem

This file demonstrates how to test a theorem in Mathlib4.
We provide several simple examples of theorems with proofs.
-/

-- Example 1: A simple theorem about natural number addition
theorem nat_add_comm (a b : ℕ) : a + b = b + a := by
  exact Nat.add_comm a b

-- Example 2: A theorem about multiplication
theorem nat_mul_comm (a b : ℕ) : a * b = b * a := by
  exact Nat.mul_comm a b

-- Example 3: Testing a custom theorem with a manual proof
theorem add_assoc_test (a b c : ℕ) : (a + b) + c = a + (b + c) := by
  exact Nat.add_assoc a b c

-- Example 4: A simple theorem about zero
theorem add_zero_test (a : ℕ) : a + 0 = a := by
  exact Nat.add_zero a

-- Example 5: Testing with ring tactic
theorem ring_test (x y : ℕ) : (x + y) * (x + y) = x * x + 2 * x * y + y * y := by
  ring

-- Example 6: A simple conditional theorem
theorem pos_add_pos (a b : ℕ) (ha : 0 < a) (hb : 0 < b) : 0 < a + b := by
  exact Nat.add_pos ha hb

-- Example 7: Testing inequalities
theorem le_trans_test (a b c : ℕ) (hab : a ≤ b) (hbc : b ≤ c) : a ≤ c := by
  exact Nat.le_trans hab hbc

-- Verify the theorems work with examples
example : 2 + 3 = 3 + 2 := nat_add_comm 2 3
example : 4 * 5 = 5 * 4 := nat_mul_comm 4 5
example : (1 + 2) + 3 = 1 + (2 + 3) := add_assoc_test 1 2 3
