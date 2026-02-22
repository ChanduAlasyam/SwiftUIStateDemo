
# ✅ Task Manager – SwiftUI State Management (Complete Guide)

A real-world SwiftUI application built to **demonstrate every major SwiftUI state
management concept** using clean architecture, correct ownership, and persistence.

This project is intentionally small but **architecturally correct**, making it ideal
for learning, interviews.

---

## 📱 App Overview

Task Manager allows users to:
- View a list of tasks
- Add new tasks
- Edit task titles
- Mark tasks as completed
- Toggle global app settings
- Persist tasks across app launches

---

## 🧠 SwiftUI State Management Concepts Covered

This project covers **all major SwiftUI property wrappers** with real use cases:

### 🔵 View-Owned State
| Wrapper | Usage |
|------|------|
| `@State` | Local, view-owned UI state |
| `@Binding` | Two-way data flow between parent and child |

### 🟣 ViewModel / Object State
| Wrapper | Usage |
|------|------|
| `@StateObject` | ViewModel ownership |
| `@ObservedObject` | Observing external ViewModels |
| `@Published` | Emits UI updates |

### 🟢 Global / System State
| Wrapper | Usage |
|------|------|
| `@Environment` | System-provided values |
| `@EnvironmentObject` | App-wide shared state |
| `@AppStorage` | Persistent user preferences |

---

## 🏗 Architecture

- **SwiftUI + MVVM**
- Single source of truth
- Navigation-safe state ownership
- Clear separation of concerns
- Persistence handled inside ViewModels

---
## 🚀 Technologies Used

- Swift 5.9+
- SwiftUI
- Xcode 16+
- iOS 17+
