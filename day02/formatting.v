module main

import os

struct Data {
	movement string
	amount int
}

fn format_file(path string) ![]Data {
	mut lines := os.read_lines(path) or { return error('Could not read file') }
	mut new_lines := []Data{len: lines.len}
	for line in lines {
		mut split := line.split(' ')
		new_lines << Data{
			movement: split[0]
			amount: split[1].int()
		}
	}
	return new_lines
}
