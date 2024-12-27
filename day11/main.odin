package main

import "core:fmt"
import "core:strings"
import "core:strconv"

// Removed the newline from the input here because it really doesn't add anything interesting
input := `64554 35 906 6 6960985 5755 975820 0`
// input := `125 17`

stones : [dynamic]int

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

blink :: proc() {
  i := 0
  for {
    if i >= len(stones) {
      break
    }
    stone := stones[i]
    if stone == 0 {
      stones[i] = 1
      i += 1
    } else if num_digits := count_digits(stone); num_digits % 2 == 0 {
      n := num_digits / 2
      for j in 0..<n {
        stones[i] /= 10
      }
      mod := 1;
      for j in 0..<n {
        mod *= 10
      }
      inject_at(&stones, i + 1, stone % mod)
      i += 2
    } else {
      stones[i] *= 2024
      i += 1
    }
  }
  // fmt.println(stones)
}

main :: proc() {
  words := strings.split(input, " ")
  
  for word in words {
    append(&stones, strconv.parse_int(word) or_break)
  }

  // fmt.println(stones)
  for i in 0..<25 {
  // for i in 0..<6 {
    blink()
  }

  fmt.println("number of stones: ", len(stones))
}
