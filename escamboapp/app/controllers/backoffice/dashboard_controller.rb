class Backoffice::DashboardController < BackofficeController
 def index
  	@categories = Category.all
  end
end
