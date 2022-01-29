# Problem
# Given a URL as a string, extract the domain name and return it as a string.
# Input - URL as a string
# Output - domain name as a string
# 
# Examples
# domain_name("http://github.com/carbonfive/raygun") == "github"
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"
#
# Data structures
# The original string
# 
# The answer string
# 
# Algorithm
# If present, remove HTTP plus punctuation
# If presnet, remove www plus punctuation
# Now the domain name is at the start of the string
# Remove all letters up to the next dot
# That's the domain name

def domain_name(url)
  url.slice! "https"
  url.slice! "http"
  url.slice! "www"
  
  loop do |_|
    if ("a".."z").include? url[0]
      break
    else
      url = url[1..-1]
    end
  end
  segments = url.split(".")
  segments[0]
end

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"