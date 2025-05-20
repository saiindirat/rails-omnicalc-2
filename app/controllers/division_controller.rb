class DivisionController < ApplicationController
  def show_division_form
    render({ :template => "division_templates/divide_form" })
  end

  def divide_these
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    if @second_number == 0
      @result = "Cannot divide by zero"
    else
      @result = @first_number / @second_number
    end

    render({ :template => "division_templates/divide_results" })
  end
end
