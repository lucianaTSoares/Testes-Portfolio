*** Settings ***
Documentation    Contains all the variables used in the project.

*** Variables ***

# Browser
${browser}    chrome
${browser_options}
...    add_experimental_option('excludeSwitches', ['enable-logging']);
...    add_argument('--disable-dev-shm-usage');
...    add_argument("--disable-popup-blocking");
...    add_argument("--ignore-certificate-errors");
...    add_argument("--incognito");
...    add_argument("--no-sandbox");
...    add_argument("--disable-dev-shm-usage")

# Environment
${url}                   https://ludev.vercel.app/
${urlAbout}              https://ludev.vercel.app/#about
${urlExperiences}        https://ludev.vercel.app/#experiences
${urlProjects}           https://ludev.vercel.app/#projects
${urlSkills}             https://ludev.vercel.app/#skills
${urlRecommendations}    https://ludev.vercel.app/#recommendations

# Elements
${socialMediaList}      xpath=//ul[@data-aos='fade-up']
${btnScrollToTop}       xpath=//div[contains(@class,'ButtonScrollStyle-sc-1nbbjl5-0 dQwViQ')]

${initialPage}          xpath=//h1[@data-aos='fade-down'][contains(.,'Luciana Soares Desenvolvedora Web.')]
${aboutSection}         xpath=//h2[@data-aos='fade-up'][contains(.,'Sobre mim')]
${experienceSection}    xpath=//h2[@data-aos='fade-up'][contains(.,'Experiência')]
${projectsSection}      xpath=//h2[contains(.,'Projetos')]
${skillsSection}        xpath=//h2[contains(.,'Skills')]
${reviewsSection}       xpath=//h2[@data-aos='fade-up'][contains(.,'Depoimentos')]

${header}               xpath=//header[contains(@class,'styles__HeaderStyle-sc-lk5vyw-0 kKFpjI')]
${aboutHeader}          xpath=//li[@class='styles__ItemStyle-sc-fg12w1-0 bKayPx'][contains(.,'Sobre')]
${experienceHeader}     xpath=//li[@class='styles__ItemStyle-sc-fg12w1-0 bKayPx'][contains(.,'Experiência')]
${projectsHeader}       xpath=//li[@class='styles__ItemStyle-sc-fg12w1-0 bKayPx'][contains(.,'Projetos')]
${skillsHeader}         xpath=//li[@class='styles__ItemStyle-sc-fg12w1-0 bKayPx'][contains(.,'Skills')]
${reviewsHeader}        xpath=//li[@class='styles__ItemStyle-sc-fg12w1-0 bKayPx'][contains(.,'Depoimentos')]

@{headerItems}          ${aboutHeader}    ${experienceHeader}    ${projectsHeader}    ${skillsHeader}    ${reviewsHeader}

# Titles
${mainTitle}       LuDev
${projectTitle}    LuDev - Projetos
