⎕IO ← 0
input ← ⍎⍤1⊢↑⊃⎕NGET 'input.txt'1
⎕ ← +/|(((⍋0⌷[1]input) 0)⌷input) - (((⍋1⌷[1]input) 1)⌷input) ⍝ Part 1
⎕ ← +/{⍵×≢⍸⍵=1⌷[1]input}¨0⌷[1]input ⍝ Part 2
