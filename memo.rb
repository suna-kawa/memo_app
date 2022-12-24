require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。


if memo_type == 1
    puts "拡張子を除いたファイルを入力して下さい"
    file_name = gets.chomp
    CSV.open("#{file_name}.csv", "w") do |csv|
    p "メモしたい内容を記入して下さい"
    p "完了したらCtrl + Dを押します"
    new_input = $stdin.read
    new_memo = new_input
    csv.puts ["#{new_memo}"]
end

elsif memo_type == 2
    puts "拡張子を除いた既存のファイル名を入力して下さい"
    existing_file = gets.chomp
    CSV.open("#{existing_file}.csv", "a") do |csv|
    p "メモしたい内容を記入して下さい"
    p "完了したらCtrl + Dを押します"
    update_input = $stdin.read
    add_memo = update_input
    csv.puts (["#{add_memo}"])
    end
end

