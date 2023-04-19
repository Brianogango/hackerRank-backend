
Kata.create([
    {
      name: "Valid Braces",
      slug: "valid-braces",
      category: "algorithms",
      languages: ["javascript", "python", "java", "ruby"],
      url: "https://www.codewars.com/kata/5277c8a221e209d3f6000b56",
      description: "Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return `true` if the string is valid, and `false` if it's invalid.\n\n\nThis Kata is similar to the [Valid Parentheses](https://www.codewars.com/kata/valid-parentheses) Kata, but introduces new characters: brackets `[]`, and curly braces `{}`. Thanks to `@arnedag` for the idea!\n\n\nAll input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: `()[]{}`. \n\n\n\n### What is considered Valid?\n\n\nA string of braces is considered valid if all braces are matched with the correct brace.\n\n\n## Examples\n\n```\n\"(){}[]\"   =>  True\n\"([{}])\"   =>  True\n\"(}\"       =>  False\n\"[(])\"     =>  False\n\"[({})](]\" =>  False\n```\n\n",
      rank:  {
        "id": -6,
        "name": "6 kyu",
        "color": "white"
      },
    },
    {
      name: "Sort array by string length",
      slug: "Sort array by string length",
      category: "reference",
      languages: ["javascript", "python", "java", "ruby"],
      url: "https://www.codewars.com/users/smile67",
      rank:  {
        "id": -7,
        "name": "7 kyu",
        "color": "white"
      },
      description:  "Write a function that takes an array of strings as an argument and returns a sorted array containing the same strings, ordered from shortest to longest.\n\nFor example, if this array were passed as an argument:\n\n``` [\"Telescopes\", \"Glasses\", \"Eyes\", \"Monocles\"] ```\n\nYour function would return the following array:\n\n``` [\"Eyes\", \"Glasses\", \"Monocles\", \"Telescopes\"] ```\n\nAll of the strings in the array passed to your function will be different lengths, so you will not have to decide how to order multiple strings of the same length." 
    }
  ])
  Assessment.create([
    {
      title: "JavaScript Assessment",
      duration: "120 minutes"
    },
    {
      title: "Ruby Assessment",
      duration: "90 minutes"
    },
    {
      title: "Python Assessment",
      duration: "60 minutes"
    }
  ])
  
  