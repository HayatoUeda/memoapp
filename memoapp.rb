require "csv"

puts "1(新規でメモを作成)、2(既存のメモを編集する)"

memo_type = gets.chomp.to_s

if memo_type == "1"
  File.open('test.csv','w') do |f|
  puts "メモしたい内容を入力してください"
  memo_input = gets.chomp.to_s
  f.puts "#{memo_input}"
end

elsif memo_type == "2"
  puts "編集内容を入力してください。"

else
  puts "1または2を入力してください。"
end
