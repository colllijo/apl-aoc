input←↑⊃⎕NGET'input.txt'1
count←{≢⊢'XMAS'⎕S'&'⊢⍵}
diagonals←{
  grid ← ⍵
  cols ← 2⌷⍴⍵
  rows ← 1⌷⍴⍵
  right ← {(1 1⍉⍵)}¨⊢{(⊂⊢⍵+⍳((cols) - ⍵))⌷[2]grid}¨(¯1 + ⍳(cols))
  down ← {(1 1⍉⍵)}¨⊢{(⊂⊢⍵+⍳((rows) - ⍵))⌷[1]grid}¨(⍳(rows) - 1)
  right,down
}

⎕←'Part 1: ',⍕+⌿count⊢(↓input),(↓⌽input),(↓⍉input),(↓⌽⍉input),(diagonals input),(⌽¨diagonals input),(diagonals ⌽input),(⌽¨diagonals ⌽input)
