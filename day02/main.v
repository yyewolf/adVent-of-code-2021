module main

fn main() {
	lines := format_file('input.txt') or { panic(err) }
	println('part1: ${part1(lines)}')
	println('part2: ${part2(lines)}')
}

fn part1(lines []Data) int {
	mut x_pos := 0
	mut depth := 0
	for line in lines {
		if line.movement == "forward" {
			x_pos += line.amount
		} else if line.movement == "backward" {
			x_pos -= line.amount
		} else if line.movement == "down" {
			depth += line.amount
		} else if line.movement == "up" {
			depth -= line.amount
		}
	}
	return x_pos*depth
}

fn part2(lines []Data) int {
	mut x_pos := 0
	mut depth := 0
	mut aim := 0
	for line in lines {
		if line.movement == "forward" {
			x_pos += line.amount
			depth += aim*line.amount
		} else if line.movement == "backward" {
			x_pos -= line.amount
		} else if line.movement == "down" {
			aim += line.amount
		} else if line.movement == "up" {
			aim -= line.amount
		}
	}
	return x_pos*depth
}