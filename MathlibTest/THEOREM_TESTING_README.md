# Theorem Testing Files

This directory contains test files for demonstrating theorem proving in Mathlib4.

## Files Added

### TestTheorem.lean
A simple demonstration file showing basic theorem testing patterns in Lean 4:
- Natural number arithmetic properties (commutativity, associativity)
- Basic proofs using standard tactics
- Examples of theorem application

### CollatzConjecture.lean
An implementation following the SOLACE9 framework for the Collatz Conjecture:
- Core Collatz function and step definitions
- Trajectory analysis and codon classification
- Attempted proof structure (see notes below)
- Computational validation examples

## Important Note on CollatzConjecture.lean

The file contains an attempted formal proof of the Collatz Conjecture. However, it should be noted that:

1. **The Collatz Conjecture remains an unsolved problem** in mathematics as of 2024
2. The proof in this file contains logical gaps, particularly in the `collatz_step_decreases_eventually` lemma
3. The critical step showing that `(3*n+1)/2 < n` for all odd n > 1 is not rigorously proven
4. This file is provided as requested but should be understood as an **incomplete proof attempt**

## Building These Files

To build and test these files:

```bash
# Get cached dependencies (recommended)
lake exe cache get

# Build specific test file
lake build MathlibTest.TestTheorem
lake build MathlibTest.CollatzConjecture

# Run all tests
lake test
```

## Purpose

These files serve as examples for:
- Understanding Lean 4 theorem syntax
- Exploring proof tactics in Mathlib4
- Testing mathematical conjectures in a formal verification environment
- Learning the structure of test files in the Mathlib4 repository
