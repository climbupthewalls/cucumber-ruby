# encoding: utf-8
# rubocop:disable VariableName

Агар(/(\d+) сонини киритсам/) do |сон|
  calc.push сон.to_i
end

Агар(/"(.*)"(.*) боссам/) do |операция, _|
  calc.send операция
end

Унда(/жавоб (\d+) сони булиши керак/) do |жавоб|
  calc.result.should == жавоб.to_f
end

Агар(/(\d+) ва (\d+) сонини кушсам/) do |кушилувчи1, кушилувчи2|
  Агар %{#{кушилувчи1} сонини киритсам}
  Агар %{ундан сунг #{кушилувчи2} сонини киритсам}
  Агар %{"+"ни боссам}
end

# rubocop:enable VariableName
