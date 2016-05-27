module SatelicomPtv
  module Model 
    module XTour
      class GoalImportance < SatelicomPtv::Model::Base
        RANKING = {
            standard: 0,
            do_not_care: 1,
            important: 2,
            very_important: 3
        }

        property 'vehicleCountRank', transform_with: ->(value) do 
          SatelicomPtv::Model::XTour::GoalImportance.validate(value)
        end
        property 'tourCountRank', transform_with: ->(value) do 
          SatelicomPtv::Model::XTour::GoalImportance.validate(value)
        end
        property 'chainPeriodRank', transform_with: ->(value) do 
          SatelicomPtv::Model::XTour::GoalImportance.validate(value)
        end
        property 'tourPeriodRank', transform_with: ->(value) do 
          SatelicomPtv::Model::XTour::GoalImportance.validate(value)
        end
        property 'tourDrivingPeriodRank', transform_with: ->(value) do 
          SatelicomPtv::Model::XTour::GoalImportance.validate(value)
        end
        property 'tourDistanceRank', transform_with: ->(value) do 
          SatelicomPtv::Model::XTour::GoalImportance.validate(value)
        end
        property 'unplannedOrdersRank', transform_with: ->(value) do 
          SatelicomPtv::Model::XTour::GoalImportance.validate(value)
        end

        def self.validate(value)
          value = RANKING[value] if value.is_a? Symbol
          unless RANKING.values.includes?(value)
            raise WrongParameterFormat.new("#{value} is not a valid must be in #{RANKING}. Both Symbol and Fixnum are allowed")
          end
          value
        end
      end
    end
  end
end
