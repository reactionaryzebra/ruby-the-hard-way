formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}

puts formatter % {first: "true", second: false, third: 2, fourth: formatter}

puts formatter % {
  first: "I had this thing",
  second: "That you could type up right.\n",
  third: "But it didn't sing",
  fourth: "So I said goodnight."
}
