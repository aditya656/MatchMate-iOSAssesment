# MatchMate - Matrimonial Card Interface (iOS) 
**MatchMate**  is an iOS app that simulates a matrimonial platform with profile cards built using **SwiftUI** . It integrates with `https://randomuser.me/api/?results=10` to fetch user data and displays profile cards with options to **Accept**  or **Decline**  matches. User decisions are stored locally using **Core Data** , ensuring offline functionality.
### Key Features: 
 
- **API Integration** : Fetches and displays profiles from the provided API.
 
- **Profile Cards** : Includes user images, details, and action buttons.
 
- **Local Database** : Stores user decisions persistently with offline access.
 
- **Design Patterns** : Uses **MVVM**  for clean architecture.
 
- **Libraries** : **Alamofire** , **SDWebImage** , and **Core Data** .

### Setup: 

1. Clone the repository and open it in Xcode.
2. Run the command pod install

3. Build and run the app on a simulator or device.

### Offline Mode: 

Works seamlessly offline and syncs data when reconnected.
