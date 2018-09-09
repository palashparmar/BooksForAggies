class IsbnFormatValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless value =~ \d{3}[-]\d{1,5}[-]\d{1,7}[-]\d{1,6}[-]\d
      object.errors[attribute] << (options[:message] || "is not formatted properly") 
    end
  end
end


