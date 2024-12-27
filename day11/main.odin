package main

import "core:fmt"
import "core:strings"
import "core:strconv"

// Removed the newline from the input here because it really doesn't add anything interesting
input := `64554 35 906 6 6960985 5755 975820 0`
// input := `125 17`

// This does not count 0 as having one digit but this problem does not require it
count_digits :: proc(n: int) -> int {
  num_digits := 0
  n := n
  for n > 0 {
    n /= 10
    num_digits += 1
  }
  return num_digits
}

memo : map[int][dynamic]int

blink_stone :: proc(stone: int) -> (int, int) {
  if stone == 0 {
    return 1, -1
  } else if num_digits := count_digits(stone); num_digits % 2 == 0 {
    n := num_digits / 2
    dec := stone
    for j in 0..<n {
      dec /= 10
    }
    mod := 1;
    for j in 0..<n {
      mod *= 10
    }
    return dec, stone % mod
  } else {
    return stone * 2024, -1
  }
}

// Blink a stone n times
blink :: proc(stone, n: int) -> int {
  if !(stone in memo) {
    memo[stone] = make([dynamic]int, n)
  } else do resize(&memo[stone], max(n, len(memo[stone])))
  // Have we done this before?
  i := n - 1
  if memo[stone][i] > 0 {
    return memo[stone][i]
  }

  left, right := blink_stone(stone)
  if n == 1 {
    num_stones := right >= 0 ? 2 : 1
    memo[stone][i]= num_stones
    return num_stones
  }

  num_stones := blink(left, n - 1)
  if right >= 0 do num_stones += blink(right, n - 1)
  memo[stone][i]= num_stones
  return num_stones
}

main :: proc() {
  words := strings.split(input, " ")
  
  stones : [dynamic]int
  for word in words {
    append(&stones, strconv.parse_int(word) or_break)
  }

  num_stones := 0
  for stone in stones {
    num_stones += blink(stone, 25)
  }

  fmt.println("25 blinks: ", num_stones)

  num_stones = 0
  for stone in stones {
    num_stones += blink(stone, 75)
  }

  fmt.println("75 blinks: ", num_stones)
}
