require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s　#入力された値（１or２）を文字列としてmemo_typeに代入

if memo_type == "1"
	puts "拡張子を除いたファイル名を入力してください"
	file_name = gets     #入力された拡張子ファイル名をfile_nameに代入
	
	puts "メモしたい内容を記入してください"
	puts "完了したらCtrl＋Dを押下してください"
	
	memo = gets
	
	CSV.open("#{file_name}.csv","w") do |write|
	  write << ["#{memo}"]
  end

elsif memo_type == "2"
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets      #入力された拡張子ファイル名をfile_nameに代入
  
  puts "追記したい内容を記入してください"
  memo = gets
  
  CSV.open("#{file_name}.csv","a") do |write|
    write << 	["#{memo}"]
  end	

else
 	puts "1 or 2を入力してください"
end
