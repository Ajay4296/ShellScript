FirstName(){
	printf "Enter your Fname: "
	read Fname
	if [[ $Fname =~ ^[A-Z]{1}[a-z]*$ ]];
	then
		echo "Valid first name"
	else
		echo " Invalid first name"

	fi
}
FirstName

LastName(){
	printf "Enter your last name: "
	read Lname
	if [[ $Lname =~ ^[A-Z]{1}[a-z]*$ ]];
	then
		echo "valid Last name"
	else
		echo"Invalid Last name"
	fi
}
LastName

checkMobileNo(){
	printf "Enter your mobile No.: "
	read mobile
	if [[ $mobile =~ ^[+91]{3}[0-9]{10}$ ]];
	then
		echo "Valid mobile no."
	else
		echo "Invalid mobile number"
	fi
}
checkMobileNo

checkEmail(){
	printf "Enter the Email id: "
	read Email
	if [[ $Email =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.(com|edu|net)$ ]];
	then
		echo "Valid Email Id"
	else
		echo "Invalid Email id"
	fi
}
checkEmail

checkPwd(){
	echo "Enter the password minimun 8 charecter and must be including special characters"
	read pwd
	if [[ $pwd =~ [a-z,A-Z,0-9,#%^*]{8,} ]];
	then
		echo "Valid PassWord"
	else
		echo "Invelid PassWord"
	fi
}
checkPwd
