def leap_year?( year )
  year % 400 == 0 || year % 4 == 0 && year % 100 != 0
end

=begin
doctest: leap_year? returns true for centuries divisible by 400
>> leap_year? 1600
=> true
>> leap_year? 2000
=> true
doctest: leap_year? returns false for 1900 and 2100 centuries
>> leap_year? 1900
=> false
>> leap_year? 2100
=> false
doctest: leap_year? returns true for standard leap years
>> leap_year? 2004
=> true
>> leap_year? 1996
=> true
>> leap_year? 1904
=> true
doctest: leap_year returns false for non-leap years
>> leap_year? 2001
=> false
>> leap_year? 1999
=> false
>> leap_year? 2002
=> false
>> leap_year? 1902
=> false
=end
