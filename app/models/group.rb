class Group < ActiveRecord::Base
  before_save :normalize_array

  def normalize_array
    return if self.tags.blank? || self.tags.is_a?(Array)

    self.tags = self.tags.split("\r\n").flatten.uniq.reject(&:blank?)
  end

  def formated(symbol)
    t = self.send(symbol)
    if t.present?
      self.send(symbol).join("\r\n")
    else
      nil
    end
  end
end
