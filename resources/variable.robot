*** Variables ***
${BROWSER}    chrome
${WEB_URL}    https://panaryco.wixsite.com/myhotel?utm_source=chatgpt.com

${test_data_firstname}          John
${test_data_lastname}           Doe
${test_data_telephone}          087-876-9861
${test_data_email}              john@mail.scb
${test_data_amount}             3

${test_data_none_note}
${test_data_note}               This is note.

${XPATH_FNAME}    //*[@id='input_comp-lt33fcq41']
${XPATH_LNAME}    //*[@id='input_comp-lt33fcs1']
${XPATH_TEL}      //*[@id='input_comp-lt33fcsi1']
${XPATH_MAIL}     //*[@id='input_comp-lt33fcsf1']
${XPATH_ACCEPT_TERMS}     //*[@id="comp-ltubl84u"]/input
${XPATH_ADULTS_NO}    //*[@id="collection_comp-lt33fcsl1"]