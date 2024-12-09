input←,↑⊃⎕NGET'input.txt'1
solve←{+/×/⍎⍤1⊢↑'mul\((\d+),(\d+)\)'⎕S'\1 \2'⊢⍵}
⎕←'Part 1: ',⍕⊢solve input
⎕←'Part 2: ',⍕⊢solve ⊢'don''t\(\).+?(do\(\)|$)'⎕R''⊢input
