module DynamicAccess
  def [](key)
    get_attribute(key)
  end

  private

  def get_attribute(name)
    instance_variable_get("@#{name}")
  end
end
