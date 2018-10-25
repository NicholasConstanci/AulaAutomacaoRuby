After('@logout') do
    click_link @email
    click_link 'Sair'
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[^alnum ]/, '')
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Print da tela')
end