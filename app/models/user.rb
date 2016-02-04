class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :events
  def email_required?
    false
  end

  def email_changed?
    false
  end


end
