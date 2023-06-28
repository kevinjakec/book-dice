# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Book.destroy_all
User.destroy_all

test_user = User.create(
    name: 'Test',
    email: 'test@test.com',
    password: 'test@123'
)

genre_ficiton = Genre.create(
    genre: 'Fiction'
)

genre_ficiton = Genre.create(
    genre: 'Non-fiction'
)

genre_ficiton = Genre.create(
    genre: 'Horror'
)

Book.create(
    title: 'Harry Potter and the Sorcerer\'s Stone',
    genre: genre_ficiton,
    cover_image: 'https://m.media-amazon.com/images/I/5165He67NEL.jpg',
    author: 'J.K. Rowling',
    rating: 4,
    detailed_description: 'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.'
    publish_date: 1997-06-27,
    isbn_number: '978-0-7475-3269-9',
    submitted_by: test_user
)

puts "Created seed data"