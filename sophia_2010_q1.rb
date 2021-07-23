# 2010 上智大学 総合人間(社会), 法(国際関係法)学部 問1
# 次の3つの実数A,B,Cの大小関係を不等号で表せ。
# A = 100!, B = 2^600, C = 50^100

# 階乗を計算するメソッド
def factory(num)
  if num <= 1
    1
  else
    num * factory(num - 1)
  end
end

A = factory(100)
B = 2**600
C = 50**100

if A > B && A > C
  if B > C
    puts 'A > B > C'
  else
    puts 'A > C > B'
  end
elsif B > A && B > C
  if A > C
    puts 'B > A > C'
  else
    puts 'B > C > A'
  end
elsif A > B
  puts 'C > A > B'
else
  puts 'C > B > A'
end
