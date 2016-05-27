module SatelicomPtv
  module Model
    module XRoute
      class Emissions < SatelicomPtv::Model::Base
        property 'hydrocarbons'
        property 'methane'
        property 'hydrocarbonsExMethane'
        property 'carbonMonoxide'
        property 'carbonDioxide'
        property 'sulphurDioxide'
        property 'nitrogenOxides'
        property 'nitrousOxide'
        property 'ammonia'
        property 'benzene'
        property 'toluene'
        property 'xylene'
        property 'lead'
        property 'particles'
        property 'fuel'
      end
    end
  end
end