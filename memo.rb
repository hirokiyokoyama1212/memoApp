require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s

if memo_type == 1
	puts "拡張子を除いたファイル名を入力してください"
	
	file_name = gets
	
	puts "メモしたい内容を記入してください"
	puts "完了したらCtrl＋Dを押下してください"
	
	memo = gets
	
	CSV.open("#{file_name}.csv","w") do |write|
	  write << ["#{memo}"]
  end

elsif memo_type == 2
  puts "拡張子を除いたファイル名を入力してください"
  
  file_name = gets  
  
  puts "追記したい内容を記入してください"
  memo = gets
  
  CSV.open("#{file_name}.csv","a") do |write|
    write << ["#{memo}"]
  end	

else
 	puts "1 or 2を入力してください"
end
