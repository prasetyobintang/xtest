*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${baseURL}      https://beta.pintarinaja.co.id/profile/kyc
${browser}      chrome
${username}     ref23
${password}     a
${capture}      C:\\Users\\Prasetyo Bintang\\xtest\\automate

${blank_identityType}
${blank_identityNumber}
${blank_Occupation}
${blank_mainSourceIncome}
${blank_monthlyIncome}
${blank_investmentExp}
${blank_goals}
${blank_typeOfRisk}
${blank_yearlyIncome}
${blank_NJOP}
${blank_bangDeposit}
${blank_otherIncome}
${blank_Address}

*** Test Cases ***
Kyc Function
    Open Browser        ${baseURL}      ${browser}
    Maximize Browser Window
    Input Text    xpath=//*[@id="login"]    ${username}
    Capture Page Screenshot     ${capture}/061824Result/Input username.png
    Input Text    xpath=//*[@id="password"]    ${password}
    Capture Page Screenshot     ${capture}/061824Result/Input password.png
    Click Button    xpath=//*[@id="__next"]/div/div[1]/main/div/div/div/form/div[3]/div/div/div/div[2]/button
    Capture Page Screenshot     ${capture}/061824Result/Click Sign in button.png

    # kyc form
    Wait Until Element Is Visible    xpath=//*[@id="homeWrapper"]/nav/div[2]/div[2]/div/div[1]      10
    Click Element    xpath=//*[@id="homeWrapper"]/nav/div[2]/div[2]/div/div[1]
    Capture Page Screenshot     ${capture}/061824Result/Click Profile.png
    # hold
    Wait Until Element Is Visible    xpath=//div[@id='dropdownProfile']/ul/li[4]        10
    Click Element    xpath=//div[@id='dropdownProfile']/ul/li[4]
    Capture Page Screenshot     ${capture}/061824Result/Choose Profile Menu.png
    Capture Page Screenshot     ${capture}/061824Result/Choose Profile Menu2.png
    Wait Until Element Is Visible    xpath=//div[@id='contentWrapper']/div/div/div/ul/li[2]/span/a      10
    Click Element    xpath=//div[@id='contentWrapper']/div/div/div/ul/li[2]/span/a
    Capture Page Screenshot     ${capture}/061824Result/Choose kyc form.png

    # fill the form

    # Identity Type
    Wait Until Element Is Visible    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[2]/div/label/span      10
    Click Element    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[2]/div[2]/div/div/div/div/div/div
    Capture Page Screenshot     ${capture}/061824Result/Identity Type.png
    Wait Until Element Is Visible    xpath=//div[@id='react-select-2-option-0']     10
    Click Element    xpath=//div[@id='react-select-2-option-0']
    Capture Page Screenshot     ${capture}/061824Result/Identity Type2.png

    # Identity Number
    Wait Until Element Is Visible    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[3]/div/label/span      10
    Input Text    xpath=//input[@id='identity_number']    12345678
    Capture Page Screenshot     ${capture}/061824Result/Input Identity number.png

    # Occupation
    Wait Until Element Is Visible    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[6]/div[2]/div/div/div/div/div/div      10
    Click Element    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[6]/div[2]/div/div/div/div/div/div
    Capture Page Screenshot     ${capture}/061824Result/Choose Occupation.png
    Wait Until Element Is Visible    xpath=//div[@id='react-select-5-option-0']     10
    Click Element    xpath=//div[@id='react-select-5-option-0']
    Capture Page Screenshot     ${capture}/061824Result/Choose Occupation2.png

    # Main Source Income
    Wait Until Element Is Visible    xpath=//input[@id='income_source']     10
    Input Text    xpath=//input[@id='income_source']    123456789
    Capture Page Screenshot     ${capture}/061824Result/Input Main income source.png

    # Monthly Income
    Wait Until Element Is Visible    xpath=//input[@id='react-aria-21-7']       10
    Input Text    xpath=//input[@id='react-aria-21-7']    123456789
    Capture Page Screenshot     ${capture}/061824Result/Input Monthly income.png

    # Invest Exp
    Wait Until Element Is Visible    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[9]/div[2]/div/div/div/div/div/div      10
    Click Element    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[9]/div[2]/div/div/div/div/div/div
    Capture Page Screenshot     ${capture}/061824Result/Choose Investment exp.png
    Wait Until Element Is Visible    xpath=//div[@id='react-select-3-option-1']
    Click Element    xpath=//div[@id='react-select-3-option-1']
    Capture Page Screenshot     ${capture}/061824Result/Choose Investment exp2.png

    # Investment Goals
    Wait Until Element Is Visible    xpath=//textarea[@id='investment_experience_description']      10
    Input Text    xpath=//textarea[@id='investment_experience_description']    test12345
    Capture Page Screenshot     ${capture}/061824Result/Input Investment goals.png

    # type of Risk
    Click Element    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[11]/div[2]/div/div/div/div/div/div
    Wait Until Element Is Visible    xpath=//div[@id='react-select-4-option-1']     10
    Click Element    xpath=//div[@id='react-select-4-option-1']
    Capture Page Screenshot     ${capture}/061824Result/Choose Type of Risk.png

    # Annual Income
    Click Element    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[12]/div[2]/div/div/div/div/div/div
    Wait Until Element Is Visible    xpath=//div[@id='react-select-6-option-1']     10
    Click Element    xpath=//div[@id='react-select-6-option-1']
    Capture Page Screenshot     ${capture}/061824Result/Choose Yearly income.png

    # NJOP Value
    Click Element    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[13]/div[2]/div/div/div/div/div/div
    Wait Until Element Is Visible    xpath=//div[@id='react-select-7-option-3']     10
    Click Element    xpath=//div[@id='react-select-7-option-3']
    Capture Page Screenshot     ${capture}/061824Result/Choose NJOP value.png

    # Bank Deposit
    Click Element    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[14]/div[2]/div/div/div/div/div/div
    Wait Until Element Is Visible    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[14]/div[2]/div/div/div/div/div/div     10
    Click Element    xpath=//div[@id='react-select-8-option-1']
    Capture Page Screenshot     ${capture}/061824Result/Choose Bank deposit.png

    # Total Value of Assets
    Click Element    xpath=//div[@id='contentWrapper']/div/div[2]/div/div[2]/div/div[2]/div/form/div[15]/div[2]/div/div/div/div/div/div
    Wait Until Element Is Visible    xpath=//div[@id='react-select-9-option-2']     10
    Click Element    xpath=//div[@id='react-select-9-option-2']
    Capture Page Screenshot     ${capture}/061824Result/Choose Total assets.png

    # House/Assets Location
    Wait Until Element Is Visible    xpath=//input[@id='house_location']        10
    Input Text    xpath=//input[@id='house_location']    1234567test
    Capture Page Screenshot     ${capture}/061824Result/Input House assets location.png

    # Country
    Input Text    xpath=//input[@id='country']    country
    Capture Page Screenshot     ${capture}/061824Result/Input Country.png

    # City
    Input Text    xpath=//input[@id='city']    city
    Capture Page Screenshot     ${capture}/061824Result/Input City.png

    # Province
    Input Text    xpath=//input[@id='province']    province
    Capture Page Screenshot     ${capture}/061824Result/Input Province.png

    # District
    Input Text    xpath=//input[@id='district']    district
    Capture Page Screenshot     ${capture}/061824Result/Input District.png

    # Village
    Input Text    xpath=//input[@id='village']    village
    Capture Page Screenshot     ${capture}/061824Result/Input Village.png

    # Address
    Input Text    xpath=//input[@id='address']    address
    Capture Page Screenshot     ${capture}/061824Result/Input Address.png

    # Postal Code
    Input Text    xpath=//input[@id='postal_code']    postal
    Capture Page Screenshot     ${capture}/061824Result/Input Postal code.png

    # Submit Button
    Click Element    xpath=//button[@type='submit']
    Capture Page Screenshot     ${capture}/061824Result/Click Submit button.png
    Sleep    2s