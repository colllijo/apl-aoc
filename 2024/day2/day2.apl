input←↑⊃⎕NGET'input.txt'1
⎕←'Part 1: ',⍕(+⌿{ diffs←2-⌿⍎⍵ ⋄ (∧⌿2{⍺=⍵}⌿×diffs)≡0: 0 ⋄ (∧⌿{⍵≤3}¨|diffs)≡0: 0 ⋄ 1 }⍤1⊢input) ⍝ Part 1
⎕←'Part 2: ',⍕(+⌿{ line ← ⍎⍵ ⋄ ∨⌿{ diffs←2-⌿⍵ ⋄ (∧⌿2{⍺=⍵}⌿×diffs)≡0: 0 ⋄ (∧⌿{⍵≤3}¨|diffs)≡0: 0 ⋄ 1 }¨{ v←⍵ ⋄ masks←1-∘.=⍨(⍳⍴⍵) ⋄ {(⍵⌷masks)/v}¨⍳≢masks ⋄ } line }⍤1⊢input) ⍝ Part 2


