#!/usr/bin/ruby
require "pathname"

spks=[]
ARGV.each do |f|
  File.open(f) do |fh|
    sp=false
    bp = nil
    bu = nil
    uarts={}
    fh.each do |l|
      if m = l.match(/(UART\d_[TR]X_PIN)\s+(\S+)/)
	uart=m[1]
	pin=m[2]
	uarts[pin] = uart
      elsif m=l.match(/USE_SPEKTRUM_BIND/)
	sp=true
      elsif m=l.match(/BIND_PIN\s+(\S+)/)
	bp = $1
      end
    end
    if sp and bp
      bu = uarts[bp]
      if bu
	fn = Pathname(f).dirname.to_s.split(Pathname::SEPARATOR_PAT).last
	bu.gsub!('_',' ').gsub!('PIN','')
	spks << [fn, bp, bu]
      end
    end
  end
end

unless spks.empty?
  puts "| Board | Bind Pin | UART Pin |"
  puts "| ----- | -------- | -------- |"
  spks.sort! {|a,b| a[0] <=> b[0]}
  spks.each do |s|
    puts "| #{s.join(" | ")} |"
  end
end
puts
puts "Table automagically generated by `mwptools/samples/spkbind.rb`, update at your own convenince."
puts