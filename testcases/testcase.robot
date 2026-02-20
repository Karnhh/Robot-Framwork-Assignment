*** Settings ***
Library    SeleniumLibrary
Test Teardown    Close All Browsers
Resource    ../resources/variable.robot
Resource    ../resources/keyword.robot

*** Test Cases ***
Verify registration form with all input field
    [Tags]    Happy Case
    Open Browser CU Hotel

    Input Firstname    ${test_data_firstname}
    Input Lastname     ${test_data_lastname}
    Input Email        ${test_data_email}
    Input Telephone    ${test_data_telephone}
    Input Notes        ${test_data_note}
    Input Amount People    ${test_data_amount}

    Click "Yes" Pet
    Click I accepted term
    Click Submit

    Check Firstname is       'valid'
    Check Lastname is        'valid'
    Check Telephone is       'valid'
    Check Email is           'valid'
    Check Number of Adults is    'valid'

    Sleep    5
    Check Accept Terms is    'valid'

Required "First Name" to submit
    [Tags]    Bad Case
    Open Browser CU Hotel

    Input Lastname     ${test_data_lastname}
    Input Email        ${test_data_email}
    Input Telephone    ${test_data_telephone}
    Input Notes        ${test_data_none_note}
    Input Amount People    ${test_data_amount}

    Click "Yes" Pet
    Click I accepted term
    Click Submit

    Check Firstname is    'invalid'
    Check Lastname is     'valid'
    Check Telephone is    'valid'
    Check Email is        'valid'
    Check Number of Adults is    'valid'

Required "Last Name" to submit
    [Tags]    Bad Case
    Open Browser CU Hotel
    Input Firstname    ${test_data_firstname}
    Input Email        ${test_data_email}
    Input Telephone    ${test_data_telephone}
    Input Notes        ${test_data_none_note}
    Input Amount People    ${test_data_amount}

    Click "Yes" Pet
    Click I accepted term
    Click Submit

    Check Firstname is    'valid'
    Check Lastname is     'invalid'
    Check Telephone is    'valid'
    Check Email is        'valid'
    Check Number of Adults is    'valid'

Required "Phone" to submit
    [Tags]    Bad Case
    Open Browser CU Hotel
    Input Firstname    ${test_data_firstname}
    Input Lastname     ${test_data_lastname}
    Input Email        ${test_data_email}
    Input Notes        ${test_data_none_note}
    Input Amount People    ${test_data_amount}

    Click "Yes" Pet
    Click I accepted term
    Click Submit

    Check Firstname is    'valid'
    Check Lastname is     'valid'
    Check Telephone is    'invalid'
    Check Email is        'valid'
    Check Number of Adults is    'valid'

Required "Email Address" to submit
    [Tags]    Bad Case
    Open Browser CU Hotel
    Input Firstname    ${test_data_firstname}
    Input Lastname     ${test_data_lastname}
    Input Telephone    ${test_data_telephone}
    Input Notes        ${test_data_none_note}
    Input Amount People    ${test_data_amount}

    Click "Yes" Pet
    Click I accepted term
    Click Submit

    Check Firstname is    'valid'
    Check Lastname is     'valid'
    Check Telephone is    'valid'
    Check Email is        'invalid'
    Check Number of Adults is    'valid'

Required "Filled Number of adults" to submit
    [Tags]    Bad Case
    Open Browser CU Hotel
    Input Firstname    ${test_data_firstname}
    Input Lastname     ${test_data_lastname}
    Input Email        ${test_data_email}
    Input Telephone    ${test_data_telephone}
    Input Notes        ${test_data_none_note}

    Click "Yes" Pet
    Click I accepted term
    Click Submit
    
    Check Firstname is    'valid'
    Check Lastname is     'valid'
    Check Telephone is    'valid'
    Check Email is        'valid'
    Check Number of Adults is    'invalid'

Required Pressed "I accepted terms & conditions" to submit
    [Tags]    Bad Case
    Open Browser CU Hotel
    Input Firstname    ${test_data_firstname}
    Input Lastname     ${test_data_lastname}
    Input Email        ${test_data_email}
    Input Telephone    ${test_data_telephone}
    Input Notes        ${test_data_none_note}
    Input Amount People    ${test_data_amount}

    Click "Yes" Pet
    Click Submit

    Check Firstname is    'valid'
    Check Lastname is     'valid'
    Check Telephone is    'valid'
    Check Email is        'valid'
    Check Number of Adults is    'valid'

    Sleep    5
    Check Accept Terms is    'invalid'