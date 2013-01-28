my_string = 'hello'
def my_string
'hello world'
end
puts my_string
# => hello
Object.my_string
# => "hello world" 
puts Object.my_string
# => hello world
NilClass.my_string
# => "hello world" 
NilClass.my_string()
# => "hello world" 

