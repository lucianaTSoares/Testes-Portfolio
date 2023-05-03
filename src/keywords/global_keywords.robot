*** Settings ***
Library          SeleniumLibrary
Resource         ../variables/global_variables.robot
Documentation    Contains all keywords used in the test suits.

*** Keywords ***
Open Website
    [Documentation]    Open the browser at the desired URL.
    Open Browser       browser=${browser}    options=${browser_options}

Close Website
    [Documentation]    Close the browser after capturing a photo of the page.
    Sleep    2s
    Capture Page Screenshot
    Close Browser

Go To The Website
    Go To    ${url}

Check If Is Home Screen
    Wait Until Element Is Visible    ${initialPage}
    Wait Until Element Is Visible    ${socialMediaList}
    Title Should Be                  ${mainTitle}    

Check Header Items Links
    [Arguments]    ${item}
    Sleep    1s
    Click Element     ${item}
    Run Keyword If    "${item}" == "${aboutHeader}"         Check About Section
    Run Keyword If    "${item}" == "${experienceHeader}"    Check Experience Section
    Run Keyword If    "${item}" == "${projectsHeader}"      Check Projects Section
    Run Keyword If    "${item}" == "${skillsHeader}"        Check Skill Section
    Run Keyword If    "${item}" == "${reviewsHeader}"       Check Reviews Section
    Capture Page Screenshot

Check About Section
    Wait Until Element Is Visible    ${aboutSection}  
    Location Should Be    ${urlAbout} 
    
Check Experience Section
    Wait Until Element Is Visible    ${experienceSection}  
    Location Should Be    ${urlExperiences} 

Check Projects Section
    Wait Until Element Is Visible    ${projectsSection}  
    Location Should Be    ${urlProjects} 

Check Skill Section
    Wait Until Element Is Visible    ${skillsSection}  
    Location Should Be    ${urlSkills} 

Check Reviews Section
    Wait Until Element Is Visible    ${reviewsSection}  
    Location Should Be    ${urlRecommendations} 

Check Button Visibility On Scroll
    [Arguments]    ${scrollHeight}    ${expectedState}
    Execute Javascript    window.scrollTo(0, ${scrollHeight});
    IF    "${expectedState}" == "visible"
        Wait Until Element Is Visible    ${btnScrollToTop}
    ELSE IF    "${expectedState}" == "invisible"
        Wait Until Element Is Not Visible    ${btnScrollToTop}
    END

Check If Scroll Position Is At The Top
    Click Element         ${btnScrollToTop}
    Sleep    1s
    ${scrollPosition}=    Execute Javascript    return document.documentElement.scrollTop;
    Should Be Equal As Numbers    ${scrollPosition}    0
    
