class RaterController < ApplicationController
  def create
    return render(json: false) unless user_signed_in?

    obj = params[:klass].classify.constantize.find(params[:id])
    rate_score(obj)

    render json: true
  end

  private def rate_score(obj)
    obj.rate(params[:score].to_f, current_user, params[:dimension])
  end
end
