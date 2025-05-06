#import "@preview/charged-ieee:0.1.3": ieee


#show: ieee.with(
  title: [A Glance at automated mobile application testing: overview, challenges and the furture],
  abstract: [
    Automated mobile application testing is a crucial aspect of software development lifecycle(SDLC), ensuring the quality and reliability of mobile applications. This paper provides an overview of the current state of automated mobile application testing, highlighting its significance in the software development lifecycle, as long as the challenges faced in this domain, including device fragmentation, varying operating systems, and the need for efficient test automation frameworks. Furthermore, we explore the future trends and advancements in automated mobile application testing, such as AI-driven testing solutions and cloud-based testing platforms. By addressing these challenges and embracing emerging technologies, we can enhance the efficiency and effectiveness of automated mobile application testing.
  ],
  authors: (
    (
      name: "Cheng Bao",
      department: [Comuputer Information System],
      organization: [Wenzhou-Kean University],
      location: [1335784],
      email: "1335784@wku.edu.cn"
    ),
    (
      name: "Xinxin Qiu",
      department: [Comuputer Information System],
      organization: [Wenzhou-Kean University],
      location: [1335784],
      email: "1335783@wku.edu.cn"
    ),
  ),
  index-terms: ("Automated testing", "Mobile application", "Cases study", "automated testing tools"),
  bibliography: bibliography("CPS5981-SQA.bib"),
  figure-supplement: [Fig.],
)

= Introduction
Over the past decades, along with the development of the Information & Communication Technologies (ICT), such as the 5G technologies, both the number of the mobile devices and the market of mobile applications has been growing rapidly. According to International Data Corporation (IDC), there were more than 1.2 billion mobile devices in cirulation in 2014 @bernardo_silva_analysis_2016 and the Grand View Research's mobile market report indicated that the size of the mobile application market was valued at 252.89 billion USD in 2023 and is projected to grow at a compound annual growth rate (CAGR) of 14.3% from 2024 to 2030, up to 626.39 billion USD. @grand_view_research_mobile_2025 On the other hand, as the @fig:size_of_market shows that the operating systems that mobile devices run on are shriking down from multiple choises, like Symbian OS @SymbianOS2025 or Windows Phone @WindowsPhone2025, to two main operating systems, which is Google Android @AndroidOperatingSystem2025 and Apple iOS @IOS2025. However, with the rapid growth of mobile devices and applications, the demand for high-quality mobile applications has increased significantly @joorabchiRealChallengesMobile2013. This has led to a growing need for effective testing methods to ensure the reliability and performance of these applications. Automated testing has emerged as a key solution to address this need, providing faster and more efficient testing processes compared to manual testing @linares-vasquez_continuous_2017.

#figure(
  caption: [The Mobile application Market Size by store, 2020-2030, USD Billion],
  image("images/mobile-application-market.png"),
)<fig:size_of_market>

= Literature Review
== Evolution of Automated Mobile Application Testing
== Current Research Trends
== Gaps in the Research


= Methodology
= Analysis
= Discussion
= Conclusion