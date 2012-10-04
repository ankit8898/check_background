class Helper
class << self
def test
10000.times do |i|
  User.create!(:name => "Ankit#{i}", :age => i)
end
end
end
end