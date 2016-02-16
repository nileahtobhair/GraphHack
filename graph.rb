
#set the start date to be a year before current date (manually)
start = Time.new 2015, 2, 16, 12, 0, 0, 0


tbl = {0 => 0, 1 => 0, 2 => 1, 3 => 9, 4 => 14, 5 => 23}

r = Random.new

100.times do
	rad = (r.rand(0...5)-1)
	rad.times do
		puts rad
		`git commit -m 'contrigraph' --date='#{start.to_s[0..9]}T12:00:00' --allow-empty`
		puts start.to_s[0..9]
	end
	start += 86400
	rad = 0
end
