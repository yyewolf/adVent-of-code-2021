module main

import os

fn format_file(path string) ![]int {
	mut lines := os.read_lines(path) or { return error('Could not read file') }
	mut new_lines := []int{}
	for line in lines {
		new_lines << line.int()
	}
	return new_lines
}
