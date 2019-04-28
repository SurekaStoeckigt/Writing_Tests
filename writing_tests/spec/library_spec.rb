require 'library'

describe Library do
  attr_reader :books

  it 'can return a list of all books' do
  #arrange
  library = Library.new
  list = [
  {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
  {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
  {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
  {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
]
  #act
  expect(library.books).to eq list
  #assert
  end

  it 'can add a new book' do
  #arrange
  library = Library.new
  book = {title: 'POODRD', author: 'Sandi Metz', subject: 'OOP'}
  #act
  library.add_book(book)
  #assert
  expect(library.books).to include book
  end

  it 'can find a specific book' do
  #arrange
  library = Library.new
  title = 'POODR'
  book = {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'}
  #act

  #assert
  expect(library.find_book(title)). to eq book
  end

  it 'can delete a book' do
  #arrange
  library = Library.new
  title = 'POODR'
  book = {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'}
  new_lib =   list = [
    {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
    {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
    {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
  ]
  #act
  library.remove_book(title)
  #assert
  expect(library.books).to eq new_lib
  end

  it 'can return a list of all books by subject' do
    library = Library.new
    subject = "JS"
    book = [{title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'}]

    expect(library.all_books_by_subject(subject)). to eq book

  end
end
