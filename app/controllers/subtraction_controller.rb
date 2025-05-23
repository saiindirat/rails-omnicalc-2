class SubtractionController < ApplicationController
  def show_subtraction_form
    render({ :template => "subtraction_templates/subtract_form" })
  end

  def subtract_these
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f
    @result = @first_number - @second_number

    render({ :template => "subtraction_templates/subtract_results" })
  end
end
