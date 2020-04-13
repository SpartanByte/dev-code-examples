## SEEDS SNIPPETS

# create one user
User.create!(name: "Some User", email: "example@example.com", password: "example123")

# create three users
3.times do |test|
    SomeTable.create!(
        name: "#{first_last_name}",
        some_column: "column content",
        some_column_2: 3
    )
end