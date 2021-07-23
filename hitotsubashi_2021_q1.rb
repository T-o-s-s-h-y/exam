# 2021 一橋大学 前期日程 問1
# 1000以下の素数は250個以下であることを示せ

require 'prime'

count = 0
arr = []
1000.times do |num|
  if Prime.prime?(num + 1)
    count += 1
    arr << num + 1
  end
end

puts count <= 250 ? "素数は#{arr}の#{count}個のため250個以下です" : "素数は#{arr}の#{count}個のため250個より多いです"
