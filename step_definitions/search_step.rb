When (/^I enter "(.*?)" in the search field$/) do |query|
  visit ('/products')
  fill_in('query', with: query)

end

Then(/^the results must be:$/) do |expected_results|
  results = [['title']] + page.all('tr.data').map {|tr| [ tr.find('.title').text]}
    puts results
    expected_results.diff!(results)
end

