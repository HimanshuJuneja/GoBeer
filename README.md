# GoBeer
GoBeer will show the list of beers and its details.

GoBeer is a sample iOS App assignment developed in order to utilize the public APIs for Beers and display a list of all beer. 
User can view list of Beers and also can view their beer details . 
This app also provides the details for the beer such as Beer Tagline, Deescription,Volume and its alcohal content(Alcohol by Volume).

Use cases:
- To display list of all Beers and show details once selected.

APIs integrated(Public APIs):
- https://api.punkapi.com/v2/beers

Licenses and credit details:
- https://punkapi.com/documentation/v2

Project Architectural Details:
- This application follows MVVM architecture with Protocol Oriented Programming(POP).
- APIClient/ NetworkClient is written to handle the network calls.
- Beer module has different layes as per MVVM architecture.
- Image caching done using iOS native caching mechanism.
- Data binding is done using native Combine framework using property observers. 
- Module level API Service layer is also written in order to segregate the load and to introduce scope of test cases.
- Mock API service is also used to mock the success/ failure scenarios.
- Test cases are also written and executed.
- ViewModel layer test cases are done with mock responses and mock errors.
- Mock Beer Test object is created in order to perform test scenarios.

Reach out to me @:

Himanshujuneja1990@gmail.com/+91-8586804650
