# 2021 一橋大学 前期日程 問1
# 1000以下の素数は250個以下であることを示せ

require 'prime'

count = 0
1000.times do |num|
  count += 1 if Prime.prime?(num + 1)
end

puts count <= 250 ? "素数は#{count}個のため250個以下です" : "素数は#{count}個のため250個より多いです"
