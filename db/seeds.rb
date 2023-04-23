# puts "Seeding DB⏳..."

# puts "Seeding Katas⏳..."
# Kata.create([
#     {
#       name: "Valid Braces",
#       slug: "valid-braces",
#       category: "algorithms",
#       languages: ["javascript", "python", "java", "ruby"],
#       url: "https://www.codewars.com/kata/5277c8a221e209d3f6000b56",
#       rank: { id: -6, name: "6 kyu", color: "yellow" },
#       description: "Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return `true` if the string is valid, and `false` if it's invalid.\n\n\nThis Kata is similar to the [Valid Parentheses](https://www.codewars.com/kata/valid-parentheses) Kata, but introduces new characters: brackets `[]`, and curly braces `{}`. Thanks to `@arnedag` for the idea!\n\n\nAll input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: `()[]{}`. \n\n\n\n### What is considered Valid?\n\n\nA string of braces is considered valid if all braces are matched with the correct brace.\n\n\n## Examples\n\n```\n\"(){}[]\"   =>  True\n\"([{}])\"   =>  True\n\"(}\"       =>  False\n\"[(])\"     =>  False\n\"[({})](]\" =>  False\n```\n\n"
#     },
#     {
#       name: "Sort array by string length",
#       slug: "Sort array by string length",
#       category: "reference",
#       languages: ["javascript", "python", "java", "ruby"],
#       url: "https://www.codewars.com/users/smile67",
#       rank:  {
#         "id": -7,
#         "name": "7 kyu",
#         "color": "white"
#       },
#       description:  "Write a function that takes an array of strings as an argument and returns a sorted array containing the same strings, ordered from shortest to longest.\n\nFor example, if this array were passed as an argument:\n\n``` [\"Telescopes\", \"Glasses\", \"Eyes\", \"Monocles\"] ```\n\nYour function would return the following array:\n\n``` [\"Eyes\", \"Glasses\", \"Monocles\", \"Telescopes\"] ```\n\nAll of the strings in the array passed to your function will be different lengths, so you will not have to decide how to order multiple strings of the same length." 
#     }
#   ])
#   puts "Seeding Assessments⏳..."
#   Assessment.create([
#     {
#       title: "JavaScript Assessment",
#       duration: "120 minutes"
#     },
#     {
#       title: "Ruby Assessment",
#       duration: "90 minutes"
#     },
#     {
#       title: "Python Assessment",
#       duration: "60 minutes"
#     }
#   ])
#   Assessment.create(title: "Ruby Basics", duration: "60 minutes")
#   Assessment.create(title: "Javascript Basics", duration: "60 minutes")


#   puts "Seeding Users⏳..."

# User.create(username: "minnie", email: "minnie@gmail.com", userType: "TM", password: "123456") 
# User.create(username: "blue", email: "blue@gmail.com", userType: "student", password: "123456")
# User.create(username: "faith" , email: "faith@gmail.com", userType: "student", password: "123456")
# User.create(username: "green", email: "green@gmail.com", userType: "student", password: "123456")
# User.create(username: "red", email: "red@gmail.com", userType: "student", password: "123456")
# User.create(username: "white" , email: "white@gmail.com", userType: "student", password: "123456")
# User.create(username: "joy", email: "joy@gmail.com", userType: "student", password: "123456")

# puts "Seeding Invitations⏳..."
# Invitation.create(assessment_id: 1, user_id: 2, status: 'pending', note: 'The javascript assesment is created to test your skills', email: 'blue@gmail.com', end_date: '2023-04-18')
# Invitation.create(assessment_id: 3, user_id: 4, status: 'accepted', note: '', email: 'green@gmail.com', end_date: '2023-04-25')
# Invitation.create(assessment_id: 1, user_id: 4, status: 'declined', note: '', email: 'green@gmail.com', end_date: '2023-04-18')
# Invitation.create(assessment_id: 2, user_id: 6, status: 'pending', note: '', email: 'white@gmail.com', end_date: '2023-04-20')
# Invitation.create(assessment_id: 2, user_id: 5, status: 'accepted', note: '', email: 'red@gmail.com', end_date: '2023-04-20')
# Invitation.create(assessment_id: 4, user_id: 3, status: 'accepted', note: ' Test on basics of ruby', email: 'faith@gmail.com', end_date: '2023-04-25')
# Invitation.create(assessment_id: 5, user_id: 7, status: 'accepted', note: 'Test on basics of javascript ', email: 'joy@gmail.com', end_date: '2023-04-25')

# puts "Seeding Assessment Katas⏳..."
# AssessmentKata.create(assessment_id: 1, kata_id: 1)
# AssessmentKata.create(assessment_id: 1, kata_id: 2)
# AssessmentKata.create(assessment_id: 2, kata_id: 1)


# puts "Seeding Submissions⏳..."
# Submission.create([
  
#   {
#     user_id: 4,
#     kata_id: 2,
#     assessment_id: 1,
#     code: "def sort_by_length(arr)arr.sort_by { |str| str.length }end",
#     result: "Failed 2 tests"
#   },
#   {
#     user_id: 5,
#     kata_id: 1,
#     assessment_id: 2,
#     code: "def valid_braces(string): # your code here return True",
#     result: "Passed all tests"
#   }
# ])




# puts "Seeding Grades⏳..."
# Grade.create(submission_id: 3, score:100)



# puts "Seeding mcqs⏳..."

# Mcq.create(assessment_id: 4, question_text: "What version of Rails introduced Hotwire?")
# Mcq.create(assessment_id: 4, question_text: "How do we call a validation in a model?")
# Mcq.create(assessment_id: 4, question_text: "What is the output of the following code? puts 'Hello World'")
# Mcq.create(assessment_id: 5, question_text: "What do WebSockets do?")
# Mcq.create(assessment_id: 5, question_text: "What is the output of the following code? console.log('Hello World')")
# Mcq.create(assessment_id: 5, question_text: "What is the output of the following code? console.log('Hello World')")

# puts "Seeding mcqs answers⏳..."


#   Answer.create([
#   {mcq_id: 1, answer_text: "Rails 6.1", is_correct: false},
#   {mcq_id: 1, answer_text: "Rails 6.0", is_correct: false},
#   {mcq_id: 1, answer_text: "Rails 7.0", is_correct: true}
  
#     ])
#   Answer.create([
#   {mcq_id: 2, answer_text: "validate", is_correct: false},
#   {mcq_id: 2, answer_text: "validates", is_correct: true},
#   {mcq_id: 2, answer_text: "validate!", is_correct: false}
  
#     ])
#   Answer.create([
#   {mcq_id: 3, answer_text: "Hello World", is_correct: true},
#   {mcq_id: 3, answer_text: "Hello World!", is_correct: false},
#   {mcq_id: 3, answer_text: "Hello World !", is_correct: false}
 
#     ])
#   Answer.create([
#   {mcq_id: 4, answer_text: "They allow for real time communication between the client and the server", is_correct: true},
#   {mcq_id: 4, answer_text: "They allow for real time communication between the server and the server", is_correct: false},
#   {mcq_id: 4, answer_text: "They allow for real time communication between the client and the client", is_correct: false}
  
#     ])
#   Answer.create([
#   {mcq_id: 5, answer_text: "Hello World!", is_correct: false},
#   {mcq_id: 5, answer_text: "Hello World !", is_correct: false},
#   {mcq_id: 5, answer_text: "Hello World", is_correct: true}
  
#     ])
#   Answer.create([
#   {mcq_id: 6, answer_text: "Hello World", is_correct: true},
#   {mcq_id: 6, answer_text: "Hello World!", is_correct: false},
#   {mcq_id: 6, answer_text: "Hello World !", is_correct: false}
 
#     ])                    
            
      

# # puts "Done, DB seeded successfully✅"