class TitleValidator < ActiveModel::Validator
    def validate(record)
        # need to make sure record.title itself is not nil
        if !record.title || !(["Won't Believe", "Secret", "Top \d", "Guess"].any? { |fragment| record.title.include? fragment })
            record.errors[:title] << "Title must be sufficiently clickbait-y."
        end
    end
end