module main

fn main() {
	lines := format_file('input.txt') or { panic(err) }
	println('part1: ${part1(lines)}')
	println('part2: ${part2(lines)}')
}

fn part1(lines []int) int {
	mut c := 0
	for i in 1..lines.len {
		if lines[i] > lines[i-1] {
			c += 1
		}
	}
	return c
}

fn part2(lines []int) int {
	mut c := 0
	for i in 3..lines.len {
		if lines[i] + lines[i-1] + lines[i-2] > lines[i-1] + lines[i-2] + lines[i-3] {
			c += 1
		}
	}
	return c
}