# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Seed the RottenPotatoes DB with some movies.
instruktorji = [{:name => 'Luka Hren', :description => 'FS, Slovan,letnik 1990'}, {:name => 'Robert Kranjec', :description => 'Letalec stoletja'}, {:name => 'Peter Prevc', :description => 'svetovni podprvak'}]
instruktorji.each do |i|
  Instructor.create!(i)
end
 
objave=[{:title => 'Prva objava', :content => 'Danes smo tekli na 100 kilometrov', :instructor_id => Instructor.find_by_name('Luka Hren').id}, {:title => 'letenje je zakon', :content => 'Skok Cez 300 metrov! Ne morem verjeti', :instructor_id => Instructor.find_by_name('Robert Kranjec').id},{:title => 'Pa je Sla medalja', :content => 'zakaj sem dal dol dres. Zakaj?', :instructor_id => Instructor.find_by_name('Peter Prevc').id}]
objave.each do |i|
  Post.create!(i)
end
vadbe=Exercise.create!(:name=>'kin:bootcamp',:description=>'prava vadba za pogumne')
