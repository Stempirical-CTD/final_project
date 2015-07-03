module ApplicationHelper
  def order_number(experiment)
    if experiment.instruction.count == 0
      instruction.order == 1
    else
      instruction.order = instructions.count + 1
    end
  end
end
