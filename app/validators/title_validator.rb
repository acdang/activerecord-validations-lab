class TitleValidator < ActiveModel::Validator
    def validate(record)
        binding.pry
        if !(["Won't Believe", "Secret", "Top \d", "Guess"].any? { |fragment| record.title.include? fragment })
            record.errors[:title] << "Title must be sufficiently clickbait-y."
        end
    end
end