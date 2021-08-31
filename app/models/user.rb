class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :committee_position, inclusion: { in: ["President", "Treasurer", "Secretary", "Events-Manager", "Social-Secretary", "Publicity-Officer", "Content-Creator", ""],
    message: "Please select from: President, Treasurer, Secretary, Events-Manager, Social-Secretary, Publicity-Officer, Content-Creator" }
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
