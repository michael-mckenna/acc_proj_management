#############################################
############### Valid Sign Up ###############
#############################################

# Step definitions for a valid sign up
And("I have entered valid first name for sign up") do
    @validSignUp.validFormField(@currUser, "sign up", "first name")
end

And("I have entered valid last name for sign up") do
    @validSignUp.validFormField(@currUser, "sign up", "last name")
end

And("I have entered valid email for sign up") do
    @validSignUp.validFormField(@currUser, "sign up", "email")
end

And("I have entered valid password for sign up") do
    @validSignUp.validFormField(@currUser, "sign up", "password")
end

And("I have confirmed valid password for sign up") do
    @validSignUp.confirmed(@currUser, "sign up", "password")
end

When("I press the sign up button") do
    @validSignUp.signUp = true
end

Then("I should be signed up") do
    @validSignUp.signUp()
end

#############################################
############### Blank Fields ################
#############################################

# Step definitions for blank email
And("I have not entered email for sign up") do
    @blankEmail.blankFormField(@currUser, "sign up", "email")
end

Then("an error about the email should pop up for sign up") do
    @invalidEmail.showFormError(@currUser, "sign up", "blank email")
end

# Step definitions for blank first name
And("I have not entered first name for sign up") do
    @blankFirstName.blankFormField(@currUser, "sign up", "first name")
end

Then("an error about the first name should pop up for sign up") do
    @blankFirstName.showFormError(@currUser, "sign up", "blank first name")
end

# Step definitions for blank last name
And("I have not entered last name for sign up") do
    @blankLastName.blankFormField(@currUser, "sign up", "last name")
end

Then("an error about the last name should pop up for sign up") do
    @blankLastName.showFormError(@currUser, "sign up", "blank last name")
end

# Step definitions for blank password
And("I have not entered password for sign up") do
    @blankPassword.blankFormField(@currUser, "sign up", "password")
end

Then("an error about the password should pop up for sign up") do
    @blankPassword.showFormError(@currUser, "sign up", "blank password")
end

# Step definitions for blank password confirmation
And("I have not entered password confirmation for sign up") do
    @blankPasswordConf.blankFormField(@currUser, "sign up", "password confirmation")
end

Then("an error about the password confirmation should pop up for sign up") do
    @blankPasswordConf.showFormError(@currUser, "sign up", "blank password confirmation")
end

#############################################
############# Incorrect Fields ##############
#############################################

# Step definitions for wrong email
And("I have entered invalid email for sign up") do
    @invalidEmail.invalidFormField(@currUser, "sign up", "email")
end

Then("an error about the invalid email should pop up for sign up") do
    @invalidEmail.showFormError(@currUser, "sign up", "invalid email")
end

# Step definitions for wrong password
And("I have entered invalid password for sign up") do
    @invalidPassword.invalidFormField(@currUser, "sign up", "password")
end

Then("an error about the invalid password should pop up for sign up") do
    @invalidPassword.showFormError(@currUser, "sign up", "invalid password")
end