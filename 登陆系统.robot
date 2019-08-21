*** Settings ***
Library           Selenium2Library
Library           OperatingSystem
Library           DatabaseLibrary

*** Test Cases ***
登陆账号密码
    Open Browser    http://192.168.0.73/RDWork/doLogin.html    Chrome
    Input Text    id=employess_number    liudehua
    Input Text    id=employess_password    1
    Click Button    id=login_btn
    Sleep    6
    #访问报表
    Click Element    xpath=//*[@id="menuul"]/li[3]/a
    Sleep    3
    Click Element    xpath=//*[@id="知识库"]/li[2]/a
    Sleep    3
    #Assign Id To Element    jquery=#starttime    time
    #Execute Javascript    window.document.getElementById('time').value='2017-10-7'
    #Click Element    id=starttime    #点击日期控件
    #Click Element    id=company
    #${id}=    Get Element Attribute    xpath=//*[@id="company"]
    #Click Button    xpath=/html/body/div[1]/div[1]/div[3]/ul/li[1]/button    #点击查询
    Click Button    id=createButton
    #退出登陆
    #Mouse Over    id=topHead
    #Click Element    xpath=/html/body/div[2]/div[2]/div[4]/div[2]/div/div[5]
    #${确定要退出吗}    confirm action
    #Choose Ok On Next Confirmation    #点击确定
    #${系统可能不会保存您所做的更改}    confirm action
    #Choose Ok On Next Confirmation    #点击确定

关闭浏览器
    #Close Browser
