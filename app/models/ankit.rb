class Ankit < ApplicationRecord
    validates :name, presence: true, format: {with: /\A[a-zA-Z]+\Z/, massage: 'only latter are allowed'}
    validates :age, presence: true, length: {minimum:1, maximum:2}, numericality: true
    validates :email, presence: true, uniqueness: true
    before_create :greeting_masssage
    def greeting_masssage
      puts" hey!" 
    end
    
    before_save :update_ankit_name

    def update_ankit_name
        self.name.downcase!
    end
end
