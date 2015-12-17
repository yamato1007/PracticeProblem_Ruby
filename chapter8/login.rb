class LoginError < StandardError
end
class LoginServerError < LoginError
end
class LoginUserUnknownError < LoginError
end
class LoginCertifyError < LoginError
end

def login(user,pass)
	pass_hash = {user1: :pass1 , user2: :pass2}
	raise LoginServerError if user == :server_error
	raise LoginUserUnknownError unless pass_hash.key?(user)
	raise LoginCertifyError unless pass_hash[user] == pass
	true
end

#TDD
#¬Œ÷
puts login(:user1, :pass1)
#Ž¸”s
login(:server_error,:paas) rescue (puts $!)
login(:aaaa,:aaaa) rescue (puts $!)
login(:user1,:aaa) rescue (puts $!)
