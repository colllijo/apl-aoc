input←⊢⊃⎕NGET'input.txt'1
⎕←'Part 1: ',⍕⊢res←+/×/⍎⍤1⊢↑'mul\((\d+),(\d+)\)'⎕S'\1 \2'⊢input
⍝ TODO: Fix part 2 to it's slightly to high
⎕←'Part 2: ',⍕⊢res-+/×/⍎⍤1⊢↑'mul\((\d+),(\d+)\)'⎕S'\1 \2'⊢'don''t\(\).+?(do\(\)|$)'⎕S'&'⊢input
