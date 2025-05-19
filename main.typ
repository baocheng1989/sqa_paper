#import "@preview/charged-ieee:0.1.3": ieee


#show: ieee.with(
  title: [A Glance at Mobile Testing Automation: Overview, Challenges and the Future],
  abstract: [
    Automated mobile application testing is a crucial aspect of software development lifecycle (SDLC), ensuring the quality and reliability of mobile applications. This paper provides an overview of the current state of automated mobile application testing, highlighting its significance in the software development lifecycle, as long as the challenges faced in this domain, including device fragmentation, varying operating systems, and the need for efficient test automation frameworks. Furthermore, we explore the future trends and advancements in automated mobile application testing, such as AI-driven testing solutions and cloud-based testing platforms. By addressing these challenges and embracing emerging technologies, we can enhance the efficiency and effectiveness of automated mobile application testing.
  ],
  authors: (
    (
      name: "Bao Cheng",
      organization: [Wenzhou-Kean University],
      location: [1335784],
      email: "baoc@kean.edu"
    ),
    (
      name: "Qiu Xinxin",
      organization: [Wenzhou-Kean University],
      location: [1335785],
      email: "qiuxin@kean.edu"
    ),
  ),
  index-terms: ("Automated testing", "Mobile application", "Cases study", "automated testing tools"),
  bibliography: bibliography("CPS5981-SQA.bib"),
  figure-supplement: [Fig.],
)

#show figure.caption: set align(center)
#set par(first-line-indent: (amount:1em,all:true))
= introduction
Over the past decades, the development of Information & Communication Technologies (ICT)—including 5G, fiber to the home (FTTH), cloud computing and others—has driven rapid growth in both mobile devices and the mobile applications market. According to International Data Corporation (IDC), more than 1.2 billion mobile devices were in circulation in 2014 @bernardo_silva_analysis_2016, and 18.22 billion by 2025 @NumberMobileDevices. The Grand View Research's mobile market report indicated that the mobile application market reached USD 252.89 billion in 2023 and is projected to grow at a compound annual growth rate (CAGR) of 14.3% from 2024 to 2030, reaching USD 626.39 billion @grand_view_research_mobile_2025. As @fig:size_of_market shows, mobile device operating systems have consolidated from multiple options like Symbian OS @SymbianOS2025 and Windows Phone @WindowsPhone2025 to two main systems: Google Android @AndroidOperatingSystem2025 and Apple iOS @IOS2025. Yet this reduction in operating system choices has not simplified mobile application development.

With the rapid growth of mobile devices and applications, the demand for high-quality mobile applications has increased significantly @joorabchiRealChallengesMobile2013. This surge has created a pressing need for effective mobile software development across all lifecycle phases to ensure application timeliness, reliability, and performance. Automated testing, as an integral part of the software development lifecycle, has emerged as a key solution to these challenges, offering faster and more efficient testing processes than manual approaches @linares-vasquez_continuous_2017. This paper examines the comprehensive landscape of automated mobile application testing, addressing both its significance and challenges. Drawing from previous research, we explore future trends in automated mobile testing, particularly the integration of cutting-edge technologies such as AI and cloud computing, to outline the field's trajectory. Through this analysis, we aim to identify ways to enhance the efficiency and effectiveness of automated mobile application testing.

#figure(
  caption: [The Mobile Application Market Size Insight (by store, 2020 - 2030), Grand View Research report, 2025],
  image("images/mobile-application-market.png"),
)<fig:size_of_market>

= background knowledge

#figure(
  image("images/CICD.png"),
  caption: [Continuous Integration and Continuous Delivery (CI/CD) workflow & related tools in Mobile Application Testing],
)<fig:CI_CD>

== Mobile Testing Automation

To clarify the topic we discuss, the definition of mobile application testing must be specified. According to Wikipedia, mobile application testing is a process by which application software developed for handheld mobile devices is tested for its functionality, usability and consistency. @MobileApplicationTesting2025 The types of mobile application testing divide into two kinds: manual testing and automated testing. Automated mobile application testing, also called mobile testing automation in some fields, involves using specialized tools and scripts to execute tests, validate an application's behavior, and ensure it meets the desired quality standards without human intervention. Because of the exclusion of the human factor, it accelerates the testing process and allows for achieve the continuous integration and continuous delivery (CI/CD) workflow in the development life cycle, as long as the many automated testing tools or platforms, shown as @fig:CI_CD. @MobileTestAutomation

== Types of Mobile Application Testing

As @fig:type_of_testing shows, considering the way of testing and the function-related aspect, the types of mobile application testing also can be divided into two major categories: functional testing and non-functional testing. Functional testing focuses on verifying the application's functionality, ensuring that it behaves as expected and meets the specified requirements. This includes unit testing, integration testing, system testing, and acceptance testing. Non-functional testing, on the other hand, evaluates the application's performance, security, usability, and compatibility across different devices and platforms. This includes performance testing, security testing, usability testing, and compatibility testing. @MobileTestAutomation 

When in the context of mobile application testing, functional testing is often performed using automated testing tools and frameworks, while non-functional testing may require a combination of automated and manual testing approaches. The choice of testing methods depends on the specific requirements of the application and the goals of the testing process, also considered by the scale of the application and the development teams. Following are the details of each mobile application testing type:

=== Functional Testing

Functional testing ensures that an app's features and functionalities work as intended. It involves testing user interactions, APIs, databases, security, and client/server applications. In addition, automated functional testing verifies the end-to-end workflow of an app to confirm it meets the specified requirements. @FunctionalTesting

=== Performance Testing

Performance testing evaluates how well a mobile application performs under various conditions, including different network speeds, high user loads, and varied device configurations. It identifies performance bottlenecks and ensures the app can handle peak usage times without degrading user experience.

Performance testing is critical for mobile applications due to the vast array of devices and network conditions they must support, emphasizes Michael Facemire, Vice President and Principal Analyst at Forrester. His extensive research underlines the complexities of mobile performance testing. @facemireMobilesNextEra2013 @facemireDevelopmentEnterpriseMobile2013 @facemireBreathtakingFutureSoftware2015 @MichaelFacemire

=== Usability Testing

Usability testing identifies vulnerabilities within the mobile application to protect it from potential threats. Automated security tests check for weaknesses such as unauthorized access, data leaks, and other security flaws.  @SoftwareTestingWhat

=== Security Testing

Security testing identifies vulnerabilities within the mobile application to protect it from potential threats. Automated security tests check for weaknesses such as unauthorized access, data leaks, and other security flaws.  @SoftwareTestingWhat

=== Compatibility Testing

Compatibility testing ensures the app works across different devices, operating systems, and screen sizes. Automated compatibility tests verify that the application delivers a consistent user experience regardless of the device or platform, become more and more important in modern mobile landscape. @LearnTricentisWhat

=== Regression Testing

Regression testing ensures that new code changes do not adversely affect the existing functionality of the application. Automated regression tests are crucial for maintaining the integrity of the app after updates or enhancements. @RegressionTesting

#figure(
  table(
    columns: 3,
    stroke: (_,y)=> if y<=1 {(top: 0.5pt)},
    table.header(
      "Categories",
      "Sub-categories",
      "Way of testing",
    ),
    table.cell(rowspan: 4, align: horizon, [Functional \ Testing]),
    [Unit Testing],
    table.cell(rowspan: 4, align: horizon, [Automated tools \ & \ frameworks]),
    [Intergration Testing],[System Testing],[Acceptance Testing],
    table.hline(stroke:0.5pt),
    table.cell(rowspan: 5, align: horizon, [Non-Functional \ Testing]),
    [Performance Testing],
    table.cell(rowspan: 5, align: horizon, [Combined automated \ & \ manual testing]),
    [Security Testing],[Usability Testing],[Compatibility Testing],[Regression Testing],
    table.hline(stroke:0.5pt),
  ),
  placement: auto,
  caption: [types and ways of mobile application testing],
)<fig:type_of_testing>

= automated testing frameworks & tools

With the development of mobile testing automation going on, there are several frameworks and tools used widely in this field. The “framework” here refers to a combination of tools or software that provide the foundation for establishing automation testing by the users' own desire. Using the framework can accelerate the process of performing automation testing and prevent "re-inventing the wheel", which is considered a modern way of mobile testing automation in real-world practice. The following shows some of the most popular frameworks or tools, along with their features, pros and cons:

== Selenium

Selenium is a widely adopted open-source framework primarily designed for web application testing but extended for mobile web testing through integration with tools like Appium or Selendroid. @SeleniumOverview Selenium is not just one tool or API, it comprises many tools like Selenium WebDriver, Selenium IDE, and Selenium Grid. At its minimum, WebDriver talks to a browser through a driver, such as ChromeDriver for Google's Chrome/Chromium, GeckoDriver for Mozilla's Firefox, etc. Communication is two-way: WebDriver passes commands to the browser through the driver, and receives information back via the same route. Remote communication can also take place using Selenium Server or Selenium Grid, both of which in turn talk to the driver on the host system. @SeleniumComponents

#figure(
  image("images/remote_comms_server.png"),
  caption: [Remote Communication Flow of Selenium],
)

=== Features

A key strength of Selenium for mobile web testing is its support for cross-browser testing, allowing testers to verify application behavior across various mobile browsers (such as Chrome, Firefox, and Safari) on both Android and iOS devices. It leverages the WebDriver protocol—W3C-compliant in Selenium 4—to interact with mobile browsers, enabling simulation of user actions like clicks, swipes, and text input. Additionally, Selenium offers language flexibility, supporting multiple programming languages (Java, Python, C\#, Ruby, JavaScript), so testers can write scripts in their preferred language.

To enhance mobile testing, Selenium integrates with Appium (for Android and iOS) or Selendroid (Android-only), utilizing its WebDriver API for mobile browser automation. It also provides the flexibility to run tests on real devices, emulators, or simulators, accommodating different testing environments. For scalability, Selenium Grid enables parallel test execution across multiple devices and browsers, reducing execution time. Test scripts can be made reusable and maintainable using frameworks like TestNG or JUnit, often following the Page Object Model (POM) for better organization. Furthermore, Selenium supports cloud-based testing through platforms like BrowserStack and Sauce Labs, allowing testers to evaluate mobile web applications across a wide range of devices and browser versions without requiring a local setup. These features make Selenium a robust choice for mobile web automation.

=== Pros & Cons

To breakdown the pros and cons of using Selenium, the following are the pros of using Selenium:

- Open-Source & Free: No licensing costs, with strong community support.
- Broad Browser Support: Works on Chrome, Firefox, Safari, and more.
- Language & Framework Flexibility: Supports Java, Python, C\#, etc., and integrates with TestNG/JUnit.
- Scalability with Selenium Grid: Enables parallel testing across devices for faster execution.
- Strong Community & Ecosystem: Extensive documentation and third-party tool integrations (e.g., Allure, Extent Reports).
- Easy Transition for Web Testers: Familiar Selenium WebDriver API works with Appium/Selendroid for mobile.
- Cloud Integration: Works with BrowserStack, Sauce Labs for testing on multiple devices without local setup.

And the cons of using Selenium are:

- No Native Mobile App Support: Requires Appium/Selendroid for mobile apps, adding complexity.
- Setup Complexity: Configuring Appium, Android SDK, or Node.js can be difficult for beginners.
- Dynamic Content Challenges: Struggles with AJAX-heavy pages, needing manual waits.
- Device Fragmentation Issues: Testing across different devices/OS versions can lead to inconsistencies.
- No Built-in Reporting: Requires third-party tools (e.g., Allure) for detailed reports.
- Limited Gesture Support: Mobile gestures (swipes, pinches) depend on Appium's TouchAction API.
- Maintenance Overhead: Scripts may need frequent updates due to browser/UI changes.

== Appium

Appium is a popular open-source framework used for automated mobile app testing. It allows developers to automate the testing of native or hybrid iOS and Android applications. Appium doesn't work alone. It runs the test cases using the WebDriver interface. @WelcomeAppiumDocumentation

#figure(
  image("images/appium-architecture.png"),
  caption: [Appium Software Architecture],
)

=== Features

Similar to Selenium, Appium is a versatile testing framework that supports multiple programming languages including Java, JavaScript, PHP, Ruby, Python, and C\#. As a flexible cross-platform solution, it enables testers to create scripts that work across Windows, iOS, and Android platforms using a unified API. One of its key advantages is the ability to reuse source code between Android and iOS, significantly reducing development time and effort. Notably, Appium doesn't require modifications to the app's source code for automation purposes. The framework supports testing of native, hybrid, and mobile web applications, while also integrating seamlessly with popular cross-platform development frameworks like React Native, Xamarin, and Flutter. To enhance the testing experience, Appium provides useful built-in tools such as Appium Desktop and Appium Inspector, which help in inspecting app elements and generating test scripts.

=== Pros & Cons

The following are the pros of using Appium:
- Supports multiple programming languages (Java, JavaScript, Python, C\#, etc.).
- Enables cross-platform testing for iOS and Android with a single API.
- Doesn't require modification of the app's source code.
- Supports native, hybrid, and mobile web applications.
- Works with frameworks like React Native, Xamarin, and Flutter.
- Offers built-in tools (Appium Desktop, Appium Inspector).

Along with the pros, there are also some cons of using Appium:

- Slower test execution compared to native frameworks.
- Requires a learning curve for beginners.
- Limited support for advanced gestures and animations.

== NightwatchJS

NightwatchJS is a Node.js based framework that is developed and maintained by BrowserStack. Nightwatch uses Appium under the hood to achieve mobile application automation on virtual simulators & real devices. Nightwatch also takes care of the entire installation with just a single command. @NightwatchV3Nodejs

=== Features

NightwatchJS offers several key features that make it a powerful tool for mobile testing automation. It provides a streamlined setup process with one-command installation of all necessary SDKs and libraries. The framework comes with native Nightwatch commands and integrates seamlessly with Appium Inspector. One of its standout features is support for parallel test execution, enabling tests to run simultaneously across multiple browsers and devices to significantly reduce testing time. Additionally, Nightwatch.js is versatile in its testing capabilities, supporting both real devices and emulators/simulators for web-based mobile application testing.

#figure(
  image("images/operation-cloud.png"),
  caption: [NightwatchJS Operation Cloud Architecture],
)

=== Pros & Cons

The following are the pros of using NightwatchJS:

- Easy setup with one-command installation.
- Supports parallel test execution for faster test runs.
- Works with real devices and emulators/simulators.
- Integrates seamlessly with Appium and Appium Inspector.
- Uses JavaScript, making it developer-friendly.

With the pros, there are also some cons of using NightwatchJS:

- Limited community support compared to Appium and Espresso.
- Requires Node.js, which may not suit all development teams.
- Best suited for web-based mobile apps rather than native apps.

== Calabash

Calabash is a mobile test automation framework that works with multiple languages. It supports Ruby, Java, Flex, and NET. Testers can use APIs to enable native applications that run on touchscreen devices. This framework has libraries that allow test scripts to interact programmatically with native and hybrid apps. @Calabash

=== Features

Calabash enables writing and executing automated tests for mobile applications across both iOS and Android platforms. It allows test scripts to be reused across different platforms and devices, which significantly reduces maintenance effort. The framework supports both native and hybrid mobile applications, and offers compatibility with multiple programming languages including Ruby and .NET languages like C\#. Additionally, its parallel testing capability helps decrease overall test execution time substantially.

=== Pros & Cons

The following are the pros of using Calabash:

- Supports multiple languages (Ruby, Java, .NET).
- Works for both iOS and Android platforms.
- Allows interaction with native and hybrid apps.
- Enables parallel test execution to speed up testing.

Along with the pros, there are also some cons of using Calabash:

- Requires additional setup for integration with CI/CD pipelines.
- Official support and development have slowed down.
- Not as widely adopted as Appium or Espresso.

== XCUItest

XCUITest is Apple's native automation framework for testing iOS applications. Among mobile testing tools, this one is best known for testing iOS apps. Launched by Apple in 2015, the XCUITest framework is meant to create and run UI tests on iOS apps using Swift / Objective-C. @XCUITestTutorialDetailed

=== Features

XCUITest, built and maintained by Apple, ensures seamless compatibility with the latest iOS versions and features. Known for its fast execution, intuitive operation, and low flakiness, it allows developers to write test scripts in Swift or Objective-C while leveraging their existing language skills. The framework supports comprehensive testing on both real iOS devices and simulators, while providing APIs to interact with various device features like camera, GPS, and accelerometer. XCUITest also includes accessibility testing features to ensure app usability for individuals with disabilities. With its robust automation features and tight integration with XCode and XCTest, it stands as a reliable choice for iOS app automation testing.


#figure(
  image("images/XCUItest framework.png"),
  caption: [A Sample code of XCUITest Implementation],
)

=== Pros & Cons

The following are the pros of using XCUITest:

- Native framework for iOS, ensuring high performance.
- Faster execution compared to cross-platform tools.
- Deep integration with Xcode and Swift.
- Supports accessibility testing.

Along with the pros, there are also some cons of using XCUITest:

- Limited to iOS and cannot be used for Android testing.
- Requires knowledge of Swift/Objective-C.
- No built-in cross-platform testing support.

= challenge of mobile testing automation

As the techniques are developing rapidly in the field of mobile testing automation, the situation of testing remains challenging. Several significant issues, due to the fragmented nature of devices, operating systems, and testing environments, needed to be solved desperately. One major issue is the diversity of devices and platforms, such as iOS, Android, and others, each with varying hardware specifications, screen sizes, and OS versions. This fragmentation necessitates testing across numerous combinations to ensure compatibility, which is both time-consuming and resource-intensive. Additionally, automation scripts must be maintained and updated frequently to accommodate app updates and new features, requiring robust frameworks that can handle regression testing without introducing errors. @joorabchiRealChallengesMobile2013

Another critical challenge is the reliance on both emulators and real devices. While emulators are cost-effective, they often fail to replicate real-world conditions, such as processor limitations, network variability, and user interactions, leading to gaps in test coverage. Furthermore, distributed testing across different geographical locations introduces complexities, including time zone differences, network latency, and local carrier-specific issues, which can affect app performance and user experience. The tools mentioned above help mitigate some of these issues, but challenges like script maintenance, cross-platform compatibility, and accurate crash reporting persist, requiring continuous innovation in testing methodologies. @MobileTestAutomation

Despite the challenges listed above, some key problems will also be faced when implementing automated mobile testing, they are: @MobileApplicationTesting2025

- Application downloadable: The application must be available for the specific platform, typically through an app store.
- Diversity in mobile platforms/OSes: The market includes several mobile operating systems, primarily Android, iOS, and Windows Phone. Each operating system has distinct limitations.
- Device availability: With an ever-growing variety of devices and operating system versions, accessing the right test devices is a persistent mobile application testing challenge. This becomes more complex when testing teams are geographically distributed.
- Mobile network operators: Over 400 mobile network operators worldwide use different standards, including CDMA, GSM, FOMA, and TD-SCDMA.
- Scripting: Device diversity complicates test script execution. Since devices vary in keystrokes, input methods, menu structures, and display properties, a single script rarely works across all devices.
- Test method: Mobile applications can be tested on either real devices or emulators. While emulators are convenient, they may miss issues that only real devices can detect. However, testing on real devices is costly and time-consuming due to the wide variety of devices available.
- Compatibility: Applications must maintain compatibility across various device properties, including different screen sizes and resolutions.
- Phone functionality: Applications must handle incoming calls appropriately during execution.
- Device diversity: Mobile devices feature various input methods (QWERTY, touch, standard) and different hardware capabilities.
- Load testing limitations: Engineers often lack sufficient hardware resources to create comprehensive user scenarios for performance testing of mobile applications. 

= about the future

Starting from 2023, the advancements in AI and machine learning are enhancing almost every aspect of computer science. The shift towards AI-powered automated testing is not just a trend, but a fact. With the help of AI, the pioneers in mobile testing automation are trying a new efficient way to change the very cornerstone of automated testing, which is element identification. By introducing hybrid strategies that include context-aware locators, heuristic-based identification, and early implementations of adaptive and self-healing locators, to reduce the usage of traditional element identification methods, such as XPath, CSS selectors, and static attributes, to solve the key challenges above. @vinaysimhavarmayadavaliAdvancingElementIdentification2024 

Another breakthrough of the mobile testing automation will be the change of the testing device or environment. The definition of Test-as-a-Service (TaaS) was introduced back in 2015 @taoCloudBasedInfrastructureMobile2015, but because of the limitations of cloud resources and other technical barriers, there have been no significant breakthroughs recently. Nowadays, with the concept of cloud-native becoming more and more acceptable for developers,  many applications, as well as mobile applications, are “born” with cloud-native. With cloud-based platforms like AWS Device Farm and Firebase Test Lab, tester can quickly and efficiently test their mobile application across multiple devices and operating systems without any local preparation. Using cloud-based platforms also makes it easier for testers to keep track of their results and analyze their performance.

Finally, in the foreseeable future, mobile app testing will continue to become more accessible and affordable. The cost of testing mobile applications has been steadily decreasing over the years, and this trend is likely to continue in the coming years. This will make it easier for developers and testers to access the tools and resources they need to ensure that their apps are of the highest quality.

= conclusion

In summary, automated mobile application testing has become an indispensable part of the software development lifecycle, with various tools and frameworks available to address different testing needs. While established tools like Appium, Calabash, and XCUITest provide robust solutions for current testing requirements, significant challenges persist in the form of device fragmentation, platform diversity, and resource constraints. However, the future of mobile testing automation appears promising with the emergence of AI-powered testing solutions, cloud-based testing platforms, and more accessible testing tools.

The integration of artificial intelligence in element identification and the growing adoption of cloud-native testing approaches are set to revolutionize how mobile applications are tested. The shift towards AI-powered automated testing is particularly significant, as it addresses one of the fundamental challenges in mobile testing - element identification. With advanced techniques like context-aware locators and self-healing mechanisms, testing frameworks are becoming more resilient and adaptable.

Furthermore, the evolution of cloud-based testing platforms has opened new possibilities for scalable and efficient testing environments. The concept of Test-as-a-Service (TaaS) is gaining momentum, allowing organizations to leverage cloud resources for comprehensive testing across multiple devices and operating systems without significant infrastructure investments. This democratization of testing resources, combined with decreasing costs, is making quality assurance more accessible to developers and organizations of all sizes.

As the mobile application landscape continues to evolve, the testing methodologies and tools will need to adapt accordingly. The challenges of today are driving innovation in testing approaches, and the solutions being developed are not just addressing current limitations but are also paving the way for more sophisticated, efficient, and accessible testing practices in the future. This ongoing evolution in mobile application testing will ultimately contribute to higher-quality applications and better user experiences across the mobile ecosystem.
