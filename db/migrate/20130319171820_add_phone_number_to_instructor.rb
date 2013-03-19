class AddPhoneNumberToInstructor < ActiveRecord::Migration
  def change
    add_column :instructors, :phone_number, :string
  end
end
