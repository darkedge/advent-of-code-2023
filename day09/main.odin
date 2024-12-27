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

  // Different approach for part 2
  File :: struct {
    id: int,
    blocks_used: int,
    blocks_free: int
  }

  files : [dynamic]File
  f : File
  file_id = 0
  for i in 0..<len(line) {
    d := line[i] - '0'
    if i % 2 == 0 {
      f.id = file_id
      f.blocks_used = int(d)
      file_id += 1
    }
    else {
      f.blocks_free = int(d)
      append(&files, f)
    }
  }
  f.blocks_free = 0
  append(&files, f)

  // fmt.println(files)

  i = len(files) - 1
  for {
    if i < 0 do break
    right := files[i]
    for &left, j in files {
      if j == i {
        i -= 1
        break
      }
      if left.blocks_free >= right.blocks_used {
        // Remove right file
        files[i - 1].blocks_free += right.blocks_used + right.blocks_free
        ordered_remove(&files, i)
        // Insert right of left file
        right.blocks_free = left.blocks_free - right.blocks_used
        left.blocks_free = 0
        inject_at(&files, j + 1, right)
        break
      }
    }
  }

  // fmt.println(files)

  checksum = 0
  i = 0
  for f in files {
    for j in 0..<f.blocks_used {
      checksum += (i + j) * f.id
    }
    i += f.blocks_used
    i += f.blocks_free
  }
  
  fmt.println("checksum (whole files): ", checksum)
}
