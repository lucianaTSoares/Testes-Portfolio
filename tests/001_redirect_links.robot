*** Settings ***
Library          SeleniumLibrary
Resource         ../src/keywords/global_keywords.robot
Resource         ../src/variables/global_variables.robot
Documentation    Test suit of redirect links

Test Setup       Open Website
Test Teardown    Close Website

*** Test Cases ***
001 - Redirect To Website Home Screen
    [Documentation]    Verify if the initial page is open when access the URL.
    [Tags]    firstLoading
    Go To The Website
    Check If Is Home Screen

002 - Verify Header Links
    [Documentation]    Verify if "Sobre" redirects to "Sobre" section.
    [Tags]    testLinks
    Go To The Website
    Wait Until Element Is Visible    ${header}
    FOR    ${item}    IN    @{headerItems}
        Check Header Items Links    ${item}
    END

003 - Check If Scroll To Top Button Is Visible After Scrolling
    [Tags]    scrollButtonVisible
    Go To The Website
    Check Button Visibility On Scroll    701    visible

004 - Check If Scroll To Top Button Become Visible And Invisible After Scrolling To Top
    [Tags]    scrollButtonInvisible
    Go To The Website
    Check Button Visibility On Scroll    701    visible
    Check Button Visibility On Scroll    500    invisible

005 - Scroll To Top Of Page When Click On Scroll To Top Button
    [Tags]    clickScrollButton
    Go To The Website
    Check Button Visibility On Scroll    701    visible
    Check If Scroll Position Is At The Top