module ApplicationHelper
  def enum_to_name model, enum_name
    value = model.try(enum_name)
    t("activerecord.attributes.#{enum_name.to_s.pluralize}.#{value}") unless value.blank?
  end
end
