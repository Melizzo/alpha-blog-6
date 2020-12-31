class Article < ApplicationRecord
  # ensures that an empty article isn't added to the db
  validates:title, presence: true, length: {minimum: 6, maximum: 100 } 
  validates:description, presence: true, length: { minimum: 10, maximum: 300 }
end