class String

  def snake_to_pascal
    words = self.split('_')
    words.map! { |word| word.capitalize }
    return words.join('')
  end

end
