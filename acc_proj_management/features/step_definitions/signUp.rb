#############################################
############### Valid Sign Up ###############
#############################################

# Step definitions for a valid sign up
And("I have entered valid first name for sign up") do
    @validSignUp.validFormField("sign up", "first name")
end

And("I have entered valid last name for sign up") do
    @validSignUp.validFormField("sign up", "last name")
end

And("I have entered valid email for sign up") do
    @validSignUp.validFormField("sign up", "email")
end

And("I have entered valid password for sign up") do
    @validSignUp.validFormField("sign up", "password")
end

And("I have confirmed valid password for sign up") do
    @validSignUp.confirmed("sign up", "password")
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
    @blankEmail.blankFormField("sign up", "email")
end

Then("an error about the email should pop up for sign up") do
    @invalidEmail.showFormError("sign up", "blank email")
end

# Step definitions for blank first name
And("I have not entered first name for sign up") do
    @blankFirstName.blankFormField("sign up", "first name")
end

Then("an error about the first name should pop up for sign up") do
    @blankFirstName.showFormError("sign up", "blank first name")
end

# Step definitions for blank last name
And("I have not entered last name for sign up") do
    @blankLastName.blankFormField("sign up", "last name")
end

Then("an error about the last name should pop up for sign up") do
    @blankLastName.showFormError("sign up", "blank last name")
end

# Step definitions for blank password
And("I have not entered password for sign up") do
    @blankPassword.blankFormField("sign up", "password")
end

Then("an error about the password should pop up for sign up") do
    @blankPassword.showFormError("sign up", "blank password")
end

# Step definitions for blank password confirmation
And("I have not entered password confirmation for sign up") do
    @blankPasswordConf.blankFormField("sign up", "password confirmation")
end

Then("an error about the password confirmation should pop up for sign up") do
    @blankPasswordConf.showFormError("sign up", "blank password confirmation")
end

#############################################
############# Incorrect Fields ##############
#############################################

# Step definitions for wrong email
And("I have entered invalid email for sign up") do
    @invalidEmail.invalidFormField("sign up", "email")
end

Then("an error about the invalid email should pop up for sign up") do
    @invalidEmail.showFormError("sign up", "invalid email")
end

# Step definitions for wrong password
And("I have entered invalid password for sign up") do
    @invalidPassword.invalidFormField("sign up", "password")
end

Then("an error about the invalid password should pop up for sign up") do
    @invalidPassword.showFormError("sign up", "invalid password")
end