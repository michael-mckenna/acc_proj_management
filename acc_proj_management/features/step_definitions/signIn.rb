#############################################
############### Valid Sign Up ###############
#############################################

# Step definitions for valid login
And("I have entered valid username for sign in") do
    @validLogin.validFormField("sign in", "username")
end

And("I have entered valid password for sign in") do
    @validLogin.validFormField("sign in", "password")
end

When("I press the sign in button") do
    @validLogin.signIn = true
end

Then("I should be logged in") do
    @validLogin.login()
end

#############################################
############### Blank Fields ################
#############################################

# Step definitions for blank username
And("I have not entered username for sign in") do
    @blankUsername.blankFormField("sign in", "username")
end

Then("an error about the username should pop up for sign in") do
    @blankUsername.showFormError("sign in", "username")
end

# Step definitions for blank email
And("I have not entered email for sign in") do
    @blankEmail.blankFormField("sign in", "email")
end

Then("an error about the email should pop up for sign in") do
    @blankEmail.showFormError("sign in", "email")
end

# Step definitions for blank password
And("I have not entered password for sign in") do
    @blankUsername.blankFormField("sign in", "password")
end

Then("an error about the password should pop up for sign in") do
    @blankPassword.showFormError("sign in", "password")
end

#############################################
############# Incorrect Fields ##############
#############################################

# Step definitions for invalid username
And("I have not entered valid username for sign in") do
    @invalidUsername.invalidFormField("sign in", "username")
end

Then("an error about the valid username should pop up for sign in") do
    @invalidUsername.showFormError("invalid username")
end

# Step definitions for invalid email
And("I have not entered valid email for sign in") do
    @invalidEmail.invalidFormField("sign in", "email")
end

Then("an error about the valid email should pop up for sign in") do
    @invalidEmail.showFormError("invalid email")
end

# Step definitions for invalid password
And("I have not entered valid password for sign in") do
    @invalidPassword.invalidFormField("sign in", "password")
end

Then("an error about the valid password should pop up for sign in") do
    @invalidPassword.showFormError("invalid password")
end