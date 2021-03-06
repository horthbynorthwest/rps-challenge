feature 'Player chooses lizard' do
  scenario 'Player can choose lizard' do
    sign_in_and_play
    expect(page).to have_button 'Lizard'
  end
  scenario 'Player chooses lizard and wins' do
    srand(67814)
    sign_in_and_play
    click_button 'Lizard'
    expect(page).to have_content 'Matt wins!'
    expect(page).to have_button 'Play again?'
    expect(page).to have_button 'New Player'
  end

  scenario 'Player chooses lizard and loses' do
    srand(67816)
    sign_in_and_play
    click_button 'Lizard'
    expect(page).to have_content 'Matt lost to an AI!'
    expect(page).to have_button 'Play again?'
    expect(page).to have_button 'New Player'
  end

  scenario 'Player chooses lizard and draws' do
    srand(67817)
    sign_in_and_play
    click_button 'Lizard'
    expect(page).to have_content 'Matt & AI drew!'
    expect(page).to have_button 'Play again?'
    expect(page).to have_button 'New Player'
  end
end
