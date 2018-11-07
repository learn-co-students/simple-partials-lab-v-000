require "rails_helper"

RSpec.describe "classroom_show_view" do
  it "renders classroom information on the show view" do
    view.lookup_context.prefixes = %w[students]
    student = Student.create(name: 'Bobby', hometown: Faker::Address.city, birthday: Faker::Date.between(25.years.ago, 18.years.ago))
    assign(:student, student)
    render :template => "students/show.html.erb"
    expect(rendered).to match /Bobby/
  end

  it "displays the student information from the partial" do
    student = Student.create(name: 'Bobby', hometown: Faker::Address.city, birthday: Faker::Date.between(25.years.ago, 18.years.ago))
    assign(:student, student)
    render :partial => "students/student.html.erb"
    expect(rendered).to match /Bobby/
  end
end
