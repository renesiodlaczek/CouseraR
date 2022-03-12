library(tidyverse)
print("This file was created within RStudio")

print("And now it lives on GitHub")

dat <- mpg
plot(mpg$cyl, mpg$hwy)

# test comment

#git config --global user.name "Jane Doe"
system('git config --global user.name "John Doe"')

###### Access Token instead of Password ########
#https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
#################

## Option 1: Write to a git config file

# Bare minimum code profile.
write_git_identity = function(name = "John Doe",
                              email = "johndoe@example.com", 
                              file = "~/.gitconfig") {
  sink(file = file)
  cat("[user]\n")
  cat("  name = ",name,"\n", sep="")
  cat("  email = ",email, sep="")
  sink() 
}

# Supply credentials
write_git_identity("FirstName LastName", "netid@illinois.edu")