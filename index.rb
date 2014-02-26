require './time'

p Date.strptime("1500-10-10").strftime("%Y-%m-%d")
p Date.strptime_with_mock_date("1500-10-10").strftime("%Y-%m-%d")
