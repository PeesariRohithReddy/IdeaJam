function formValidation()
{
var ufname=document.reg2.fname;	
var ulname=document.reg2.lname;
var uemail=document.reg2.email;
var uusername=document.reg2.uname;
var upassword=document.reg2.password;
var upassword1=document.reg2.password1;
var ucno=document.reg2.cno;
var uadd=document.reg2.add;
var ustate=document.reg2.state;
var ucity=document.reg2.city;

if(fname_validation(ufname))
	{
	if(lname_validation(ulname))
		{
		if(email_validation(uemail))
			{
			if(username_validation(uusername))
				{
				
				if(password_validation(upassword,7,15))
				{
				 if(password1_validation(upassword1,7,15))
					{
					if(cno_validation(ucno))
					{
					 if(add_validation(uadd))
					   {
						 if(state_validation(ustate))
							 {
				      	     if(city_validation(ucity))
									{
									return true;
									}
								
								}
							
							}
						}
					}
				}
			}
		}
	}
	}
return false;
}

function fname_validation(ufname)
{
var letter=/^[a-zA-z]+$/;
if(ufname.value.match(letter))
	{
	return true;
	}
else
	{
	alert("First Name must have Alphabetic Character Only");
	ufname.focus();
	return false;
	
	}

}
function lname_validation(ulname)
{
	var letter=/^[a-zA-z]+$/;
	if(ulname.value.match(letter))
		{
		return true;
		}
	else
		{
		alert("Last Name must have Alphabetic Character Only");
		ulname.focus();
		return false;
		
		}
	}
function cno_validation(ucno)
{
var contact_len=ucontact.value.length;
if(contact_len==10)
	{
	var number=/^[0-9]+$/;
	if(ucontact.value.match(number))
		{
		return true;
		}
	else
		{
		alert("Contact must have numeric digit only");
		ucontact.focus();
		return false;
		}
	}
else
	{
	alert("contact length must be 10 digits only");
	ucontact.focus();
	return false;
	}
}
function add_validation(uadd)
{
var letter=/^[a-zA-Z0-9_\-\:\,\.]+$/;
if(uaddress.value.match(letter))
	{
	return true;
	}
else
	{
	alert("Please enter valid Address");
	uaddress.focus();
	return false;
	}
}

function state_validation(ustate)
{
if(ustate.value=="Default")
	{
	alert("select a state from the list");
	ustate.focus();
	return false;
	}
else
	{
	return true;
	}
}

function city_validation(ucity)
{
	if(ucity.value=="default")
	{
	alert("select a city from the list");
	ucity.focus();
	return false;
	}
else
	{
	return true;
	}
}

function email_validation(email)
{
var letter=/^[a-zA-Z0-9_\-\.]+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
if(emailid.value.match(letter))
	{
	return true;
	}
else
	{
	alert("Please enter valid Emailid");
	emailid.focus();
	return false;
	}
}
function password_validation(upassword,mx,my)
{
var password_len=upassword.value.length;
if(password_len==0||password_len<mx||password_len>my)
	{
	alert("password must be between "+mx+" to "+my);
	upassword.focus();
	return false;
	}
else
	{
	return true;
	}
	
}
function password1_validation(upassword1,mx,my)
{
	var password_len=upassword1.value.length;
	if(password_len==0||password_len<mx||password_len>my)
		{
		alert("Confirm password must be between "+mx+" to "+my);
		upassword1.focus();
		return false;
		}
	else
		{
		return true;
		}
	}
function username_validation(uusername)
{
var letter=/^[a-zA-Z0-9]+$/;
if(uusername.value.match(letter))
	{
	return true;
	}
else
	{
	alert("User Name must have Alphanumeric Character Only");
	uusername.focus();
	return false;
	
	}

}





