package main

import "core:fmt"
import "core:strings"
import "core:strconv"
import "core:sort"
import "core:unicode/utf8"
import "core:os"

main :: proc() {
  file, ok := os.read_entire_file_from_filename("input")
  defer delete(file)
  input := string(file)
  line := strings.split(input, "\n")[0]
  // line := "2333133121414131402"

  disk : [dynamic]int
  // num_spaces := 0
  // Create the disk
  file_id := 0
  for i in 0..<len(line) {
    d := line[i] - '0'
    if i % 2 == 0 {
      for j in 0..< d {
        append(&disk, file_id)
      }
      file_id += 1
    }
    else {
      for j in 0..< d {
        append(&disk, -1)
        // num_spaces += 1
      }
    }
  }

  // fmt.println("num_spaces: ", num_spaces)

  // Move blocks by swapping
  i := 0
  // num_removed := 0
  for {
    if i >= len(disk) do break
    for disk[len(disk) - 1] == -1 {
      pop(&disk)
      // num_removed += 1
    }
    if disk[i] == -1 {
      unordered_remove(&disk, i);
      // num_removed += 1
    }
    i += 1
  }

  // fmt.println("num_removed: ", num_removed)

  checksum := 0
  for i in 0..<len(disk) {
    checksum += i * disk[i]
  }

  fmt.println("checksum: ", checksum)
}
