# 🚀 Flutter Widget Learning Lab

A hands-on exploration of Flutter's core layout system and UI components. This project serves as a reference for building layered interfaces, handling assets, and mastering common layout patterns.

## 📱 Features & Learnings

This project demonstrates several fundamental Flutter concepts:

### 1. UI Layering with `Stack` & `Positioned`
The most advanced part of this UI is the **Notification Badge** pattern.
* **Overlapping:** Uses the `Stack` widget to place one widget on top of another.
* **Overflow:** Uses `clipBehavior: Clip.none` so the red notification badge can sit slightly outside the boundaries of its parent container.
* **Precise Placement:** Uses `Positioned` with negative values (`top: -5`, `right: -5`) to create a floating effect.

### 2. Advanced Styling & Gradients
* **`BoxDecoration`**: Used to apply `LinearGradient` colors, custom `BorderRadius`, and solid background colors.
* **Shapes**: Transforming a standard `Container` into a circle for the badge using `borderRadius: BorderRadius.circular(30)`.

### 3. Mastering Layouts
* **`Column` & `Row`**: Demonstrates vertical and horizontal alignment.
* **`MainAxisAlignment`**: Used to distribute space evenly (`spaceAround`) or center elements.
* **`CrossAxisAlignment`**: Controls how items align perpendicular to the main axis (e.g., aligning text to the bottom of an icon).

### 4. Media Management
* **`Image.network`**: Loading dynamic content via a URL.
* **`Image.asset`**: Loading local images (requires `pubspec.yaml` configuration).

---

## 🛠 Project Structure

| Widget | Purpose | Key Property Highlight |
| :--- | :--- | :--- |
| **Scaffold** | The high-level page structure | `drawer`, `appBar`, `body` |
| **AppBar** | Navigation and branding | `leading`, `centerTitle: false` |
| **Drawer** | Side-navigation menu | `SafeArea` for notch protection |
| **Container** | The "Swiss Army Knife" of UI | `decoration: BoxDecoration` |
| **Icon** | Visual indicators | Custom `size` and `color` |

---

## 🚀 Setup Instructions

### 1. Asset Configuration
To ensure the local image works, add this to your `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/images/
```