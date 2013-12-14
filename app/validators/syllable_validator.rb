class SyllableValidator < ActiveModel::Validator
  def validate(record)
  	syll_output = `java EnglishSyllableCounter "#{record.content}"`
    unless syll_output == "10\n"
      record.errors[:name] << "A Dekaaz must have 10 syllables."
    end
  end
end