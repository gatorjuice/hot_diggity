# frozen_string_literal: true

user = User.create!(email: 'gatorjuice@gmail.com', password: 'p@ssw@rd')
excavation_site = ExcavationSite.create!(name: 'Test Site', number: '1234asdf')

form = user.stp_forms.create!(
  excavation_site:,
  number: 'Anomoly 1',
  length: 2,
  width: 2,
  grid_coordinates: 'N1000 E1325'
)

Strat.create!(
  stp_form: form,
  name: 'I',
  min_depth: 0.0,
  max_depth: 4.5,
  bag: 'bag 1'
)

Strat.create!(
  stp_form: form,
  name: 'II',
  min_depth: 4.5,
  max_depth: 5.0,
  bag: 'bag 2'
)

