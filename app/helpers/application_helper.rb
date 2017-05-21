module ApplicationHelper

  def active?(path)
    "active" if current_page?(path)
  end

  def cart_breadcrumb
    controller.controller_name == "carts"
  end

  def drug_store_breadcrumb
    (controller.action_name == "show" && controller.controller_name == 'drug_stores')
  end

  def drug_breadcrumb
    (controller.action_name == "show" && controller.controller_name == 'drugs') || drug_store_breadcrumb
  end
end
