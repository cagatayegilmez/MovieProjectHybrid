<div id="top">

<!-- HEADER STYLE: CLASSIC -->
<div align="center">


# MOVIEPROJECTHYBRID

<em>Transforming Movie Experiences Through Seamless Innovation</em>

<!-- BADGES -->
<img src="https://img.shields.io/github/license/cagatayegilmez/MovieProjectHybrid?style=flat&logo=opensourceinitiative&logoColor=white&color=0080ff" alt="license">
<img src="https://img.shields.io/github/last-commit/cagatayegilmez/MovieProjectHybrid?style=flat&logo=git&logoColor=white&color=0080ff" alt="last-commit">
<img src="https://img.shields.io/github/languages/top/cagatayegilmez/MovieProjectHybrid?style=flat&color=0080ff" alt="repo-top-language">
<img src="https://img.shields.io/github/languages/count/cagatayegilmez/MovieProjectHybrid?style=flat&color=0080ff" alt="repo-language-count">

<em>Built with the tools and technologies:</em>

<img src="https://img.shields.io/badge/JSON-000000.svg?style=flat&logo=JSON&logoColor=white" alt="JSON">
<img src="https://img.shields.io/badge/Markdown-000000.svg?style=flat&logo=Markdown&logoColor=white" alt="Markdown">
<img src="https://img.shields.io/badge/Swift-F05138.svg?style=flat&logo=Swift&logoColor=white" alt="Swift">

</div>
<br>

---

## Table of Contents

- [Overview](#overview)
- [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
    - [Usage](#usage)
    - [Testing](#testing)
- [Features](#features)
- [Project Structure](#project-structure)
    - [Project Index](#project-index)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgment](#acknowledgment)

---

## Overview



---

## Features

|      | Component       | Details                                                                                     |
| :--- | :-------------- | :------------------------------------------------------------------------------------------ |
| ⚙️  | **Architecture**  | <ul><li>Modular MVVM architecture separating UI, business logic, and data layers</li><li>Uses Coordinator pattern for navigation</li><li>Supports multiple feature modules for scalability</li></ul> |
| 🔩 | **Code Quality**  | <ul><li>Enforces SwiftLint rules via `.swiftlint.yml` for consistent style</li><li>Uses static analysis tools integrated into CI</li><li>Code comments and documentation for clarity</li></ul> |
| 📄 | **Documentation** | <ul><li>Includes README with project overview and setup instructions</li><li>In-code documentation with Swift documentation comments</li><li>Uses Markdown files for additional guides</li></ul> |
| 🔌 | **Integrations**  | <ul><li>Integrates with external APIs for movie data (e.g., TMDb API)</li><li>Uses JSON files (`loading.json`, `contents.json`) for mock data and configuration</li><li>Supports license compliance via `license` files</li></ul> |
| 🧩 | **Modularity**    | <ul><li>Feature-based modules for movies, genres, favorites</li><li>Reusable components and view models</li><li>Decoupled network layer with protocol-oriented design</li></ul> |
| 🧪 | **Testing**       | <ul><li>Includes unit tests for ViewModels and network layer</li><li>Uses XCTest framework</li><li>Mocks network responses with local JSON files</li></ul> |
| ⚡️  | **Performance**   | <ul><li>Optimized image loading with caching (e.g., URLCache or custom cache)</li><li>Lazy loading of data in collection views</li><li>Asynchronous network calls with async/await</li></ul> |
| 🛡️ | **Security**      | <ul><li>Secure API key management via configuration files</li><li>Uses HTTPS for all network requests</li><li>Input validation and error handling</li></ul> |
| 📦 | **Dependencies**  | <ul><li>Managed via Swift Package Manager (`Package.resolved`)</li><li>Includes dependencies like `markdown` for rendering content</li><li>Contains license info for third-party libraries</li></ul> |

---

## Project Structure

```sh
└── MovieProjectHybrid/
    ├── LICENSE
    ├── MovieProjectHybrid
    │   ├── .DS_Store
    │   ├── .swiftlint.yml
    │   ├── MovieProjectHybrid
    │   └── MovieProjectHybrid.xcodeproj
    └── README.md
```

---

### Project Index

<details open>
	<summary><b><code>MOVIEPROJECTHYBRID/</code></b></summary>
	<!-- __root__ Submodule -->
	<details>
		<summary><b>__root__</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ __root__</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/LICENSE'>LICENSE</a></b></td>
					<td style='padding: 8px;'>- Provides the core licensing information for the project, establishing legal permissions and restrictions<br>- It ensures users understand their rights to use, modify, and distribute the software while clarifying liability limitations<br>- This file underpins the projects open-source distribution, supporting its integration and collaboration within the broader codebase architecture.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/README.md'>README.md</a></b></td>
					<td style='padding: 8px;'>- Provides an overview of the MovieProjectHybrid, a hybrid architecture combining UIKit and SwiftUI to demonstrate a movie browsing application<br>- It highlights the integration of both UI frameworks to deliver a seamless user experience, showcasing how to leverage their combined capabilities within the overall project structure<br>- The README guides users on understanding the projects purpose and setup for effective implementation.</td>
				</tr>
			</table>
		</blockquote>
	</details>
	<!-- MovieProjectHybrid Submodule -->
	<details>
		<summary><b>MovieProjectHybrid</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ MovieProjectHybrid</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/.swiftlint.yml'>.swiftlint.yml</a></b></td>
					<td style='padding: 8px;'>- Defines coding standards and style guidelines to ensure consistent, maintainable, and high-quality Swift code across the project<br>- It enforces rules for code clarity, complexity, and documentation, supporting the overall architecture by promoting best practices and reducing technical debt within the MovieProjectHybrid codebase.</td>
				</tr>
			</table>
			<!-- MovieProjectHybrid Submodule -->
			<details>
				<summary><b>MovieProjectHybrid</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid</b></code>
					<!-- Resources Submodule -->
					<details>
						<summary><b>Resources</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Resources</b></code>
							<table style='width: 100%; border-collapse: collapse;'>
							<thead>
								<tr style='background-color: #f8f9fa;'>
									<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
									<th style='text-align: left; padding: 8px;'>Summary</th>
								</tr>
							</thead>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Resources/Extensions.swift'>Extensions.swift</a></b></td>
									<td style='padding: 8px;'>- Provides UI enhancements and utility extensions to streamline view management, loading indicators, and color handling within the app<br>- Facilitates seamless integration of SwiftUI views into UIKit, manages loading states globally, and simplifies color initialization from hex values<br>- Enhances overall architecture by promoting reusable, consistent UI components and layout measurements across the project.</td>
								</tr>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Resources/AppDelegate.swift'>AppDelegate.swift</a></b></td>
									<td style='padding: 8px;'>- Defines the applications core lifecycle and scene management, initializing the app and configuring scene sessions to ensure proper setup and navigation flow within the MovieProjectHybrid architecture<br>- Serves as the entry point for app launch processes and scene configuration, facilitating seamless user experience and integration with the overall project structure.</td>
								</tr>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Resources/SceneDelegate.swift'>SceneDelegate.swift</a></b></td>
									<td style='padding: 8px;'>- Sets up the applications main user interface and navigation flow by initializing the window, configuring the root view controller with a coordinator, and managing scene lifecycle events<br>- It orchestrates the transition between different screens, such as movie list and movie detail, ensuring a cohesive and responsive user experience within the apps architecture.</td>
								</tr>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Resources/LoadingView.swift'>LoadingView.swift</a></b></td>
									<td style='padding: 8px;'>- Provides a customizable loading overlay utilizing Lottie animations to indicate ongoing processes within the app<br>- Integrates seamlessly into the app’s architecture by overlaying the entire view hierarchy, enhancing user experience during data fetches or transitions<br>- Acts as a visual feedback component, ensuring users are informed of background activity without disrupting the overall interface flow.</td>
								</tr>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Resources/loading.json'>loading.json</a></b></td>
									<td style='padding: 8px;'>- Defines animated loading visuals for the application, utilizing layered vector shapes with smooth rotational effects<br>- Enhances user experience by providing engaging visual feedback during content loading phases, seamlessly integrating into the overall app architecture to ensure consistent and visually appealing transitions.</td>
								</tr>
							</table>
							<!-- Assets.xcassets Submodule -->
							<details>
								<summary><b>Assets.xcassets</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Resources.Assets.xcassets</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Resources/Assets.xcassets/Contents.json'>Contents.json</a></b></td>
											<td style='padding: 8px;'>- Defines metadata for app assets, specifying author and version information to ensure proper asset management within the project<br>- It supports the overall architecture by maintaining consistency and compatibility across different assets, facilitating smooth integration and updates within the iOS applications resource management system.</td>
										</tr>
									</table>
									<!-- searchIcon.imageset Submodule -->
									<details>
										<summary><b>searchIcon.imageset</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Resources.Assets.xcassets.searchIcon.imageset</b></code>
											<table style='width: 100%; border-collapse: collapse;'>
											<thead>
												<tr style='background-color: #f8f9fa;'>
													<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
													<th style='text-align: left; padding: 8px;'>Summary</th>
												</tr>
											</thead>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Resources/Assets.xcassets/searchIcon.imageset/Contents.json'>Contents.json</a></b></td>
													<td style='padding: 8px;'>- Defines the visual assets for the search icon used throughout the application, ensuring consistent and scalable imagery across different device resolutions<br>- Integrates seamlessly into the overall project architecture by providing a reusable, high-quality graphic element that enhances user interface clarity and aesthetic appeal within the movie browsing experience.</td>
												</tr>
											</table>
										</blockquote>
									</details>
									<!-- closeButton.imageset Submodule -->
									<details>
										<summary><b>closeButton.imageset</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Resources.Assets.xcassets.closeButton.imageset</b></code>
											<table style='width: 100%; border-collapse: collapse;'>
											<thead>
												<tr style='background-color: #f8f9fa;'>
													<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
													<th style='text-align: left; padding: 8px;'>Summary</th>
												</tr>
											</thead>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Resources/Assets.xcassets/closeButton.imageset/Contents.json'>Contents.json</a></b></td>
													<td style='padding: 8px;'>- Defines and manages visual assets for the application interface, specifically the close button images across multiple device resolutions<br>- Ensures consistent appearance and proper scaling of the close button within the app’s user interface, supporting a seamless user experience across various iOS devices<br>- This asset configuration integrates into the overall app architecture by providing essential UI elements.</td>
												</tr>
											</table>
										</blockquote>
									</details>
									<!-- AccentColor.colorset Submodule -->
									<details>
										<summary><b>AccentColor.colorset</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Resources.Assets.xcassets.AccentColor.colorset</b></code>
											<table style='width: 100%; border-collapse: collapse;'>
											<thead>
												<tr style='background-color: #f8f9fa;'>
													<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
													<th style='text-align: left; padding: 8px;'>Summary</th>
												</tr>
											</thead>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Resources/Assets.xcassets/AccentColor.colorset/Contents.json'>Contents.json</a></b></td>
													<td style='padding: 8px;'>- Defines a universal accent color used throughout the application’s user interface, ensuring visual consistency and branding across all device types<br>- Integrates seamlessly within the project’s asset catalog, supporting a cohesive design language that enhances user experience and maintains aesthetic uniformity across the entire codebase.</td>
												</tr>
											</table>
										</blockquote>
									</details>
									<!-- AppIcon.appiconset Submodule -->
									<details>
										<summary><b>AppIcon.appiconset</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Resources.Assets.xcassets.AppIcon.appiconset</b></code>
											<table style='width: 100%; border-collapse: collapse;'>
											<thead>
												<tr style='background-color: #f8f9fa;'>
													<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
													<th style='text-align: left; padding: 8px;'>Summary</th>
												</tr>
											</thead>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Resources/Assets.xcassets/AppIcon.appiconset/Contents.json'>Contents.json</a></b></td>
													<td style='padding: 8px;'>- Defines the app icon assets for the iOS project, ensuring consistent visual branding across different device appearances and modes<br>- It organizes various icon images tailored for universal use, including adaptations for dark and tinted luminosity settings, supporting the overall user interface design and aesthetic coherence within the applications architecture.</td>
												</tr>
											</table>
										</blockquote>
									</details>
								</blockquote>
							</details>
						</blockquote>
					</details>
					<!-- App Submodule -->
					<details>
						<summary><b>App</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.App</b></code>
							<table style='width: 100%; border-collapse: collapse;'>
							<thead>
								<tr style='background-color: #f8f9fa;'>
									<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
									<th style='text-align: left; padding: 8px;'>Summary</th>
								</tr>
							</thead>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/App/BaseCoordinator.swift'>BaseCoordinator.swift</a></b></td>
									<td style='padding: 8px;'>- Defines the foundational structure for managing navigation flow within the MovieProjectHybrid app<br>- It establishes protocols for coordinating view transitions and maintains a hierarchy of child coordinators, enabling modular and scalable navigation handling<br>- The setup supports routing between the movie list and detail screens, ensuring a cohesive user experience across different navigation states.</td>
								</tr>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/App/DefaultAppScreenFactory.swift'>DefaultAppScreenFactory.swift</a></b></td>
									<td style='padding: 8px;'>- Provides a centralized factory for creating key application screens, specifically the movie list and detail views<br>- It orchestrates the assembly of view controllers, view models, and views to ensure consistent and modular screen initialization within the MovieProjectHybrid architecture<br>- This facilitates seamless navigation and UI consistency across the apps core user interfaces.</td>
								</tr>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/App/AppCoordinator.swift'>AppCoordinator.swift</a></b></td>
									<td style='padding: 8px;'>- Orchestrates navigation flow within the MovieProjectHybrid app by managing view controller transitions based on application routes<br>- Facilitates seamless movement between movie list and detail screens, applying appropriate navigation bar styles and maintaining route context<br>- Serves as the central coordinator ensuring consistent user experience and navigation logic across the apps architecture.</td>
								</tr>
							</table>
						</blockquote>
					</details>
					<!-- Networking Submodule -->
					<details>
						<summary><b>Networking</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Networking</b></code>
							<table style='width: 100%; border-collapse: collapse;'>
							<thead>
								<tr style='background-color: #f8f9fa;'>
									<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
									<th style='text-align: left; padding: 8px;'>Summary</th>
								</tr>
							</thead>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/NetworkScheduler.swift'>NetworkScheduler.swift</a></b></td>
									<td style='padding: 8px;'>- Provides centralized management of asynchronous network tasks, ensuring sequential execution and streamlined cancellation within the MovieProjectHybrid architecture<br>- Facilitates coordinated scheduling of network operations, maintaining task order and enabling efficient termination of ongoing tasks to optimize resource usage and improve overall app responsiveness.</td>
								</tr>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/Environment.swift'>Environment.swift</a></b></td>
									<td style='padding: 8px;'>- Defines environment-specific configuration for the MovieProjectHybrid application by retrieving API base URL and key from the Info.plist<br>- Facilitates seamless switching between different deployment environments, ensuring secure and flexible management of API endpoints and credentials within the overall architecture.</td>
								</tr>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/SanityCheck.swift'>SanityCheck.swift</a></b></td>
									<td style='padding: 8px;'>- Performs a runtime validation of the network layer by executing a sample API request to verify connectivity and response integrity during development<br>- It helps ensure the core networking functionality is operational before further integration, serving as a safeguard within the overall architecture to maintain reliable data fetching and system stability during the development process.</td>
								</tr>
							</table>
							<!-- API Submodule -->
							<details>
								<summary><b>API</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Networking.API</b></code>
									<!-- Responses Submodule -->
									<details>
										<summary><b>Responses</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Networking.API.Responses</b></code>
											<table style='width: 100%; border-collapse: collapse;'>
											<thead>
												<tr style='background-color: #f8f9fa;'>
													<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
													<th style='text-align: left; padding: 8px;'>Summary</th>
												</tr>
											</thead>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/Responses/MovieModel.swift'>MovieModel.swift</a></b></td>
													<td style='padding: 8px;'>- Defines data models for decoding and representing movie-related API responses within the application<br>- Facilitates seamless integration of remote movie data, including movie details and metadata, into the app’s architecture<br>- Supports efficient data handling and display by structuring API results for use across various UI components and features.</td>
												</tr>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/Responses/SearchModel.swift'>SearchModel.swift</a></b></td>
													<td style='padding: 8px;'>- Defines the data structure for handling search results from the movie database API, encapsulating pagination details and a list of movie entries<br>- Facilitates seamless decoding of API responses into usable models within the app, supporting efficient retrieval and display of search results in the overall architecture.</td>
												</tr>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/Responses/SimilarMoviesModel.swift'>SimilarMoviesModel.swift</a></b></td>
													<td style='padding: 8px;'>- Defines data models for retrieving and representing similar movies from the API, facilitating seamless integration of related movie data within the applications architecture<br>- These models enable efficient decoding of API responses, supporting features like displaying recommended movies and enhancing user experience through relevant content suggestions.</td>
												</tr>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/Responses/MovieDetailModel.swift'>MovieDetailModel.swift</a></b></td>
													<td style='padding: 8px;'>- Defines a data model representing detailed information about a movie, including identifiers, visual assets, and release data<br>- Facilitates seamless decoding of API responses from the movie database, enabling the application to display comprehensive movie details and images within the overall architecture<br>- Ensures consistent data handling and transformation for user-facing features.</td>
												</tr>
											</table>
										</blockquote>
									</details>
									<!-- Requests Submodule -->
									<details>
										<summary><b>Requests</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Networking.API.Requests</b></code>
											<table style='width: 100%; border-collapse: collapse;'>
											<thead>
												<tr style='background-color: #f8f9fa;'>
													<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
													<th style='text-align: left; padding: 8px;'>Summary</th>
												</tr>
											</thead>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/Requests/GetMovieDetailRequest.swift'>GetMovieDetailRequest.swift</a></b></td>
													<td style='padding: 8px;'>- Defines the structure for retrieving detailed information about a specific movie from the external API<br>- It facilitates seamless communication with the backend service by specifying request parameters, endpoint path, and response handling, thereby enabling the application to fetch and display comprehensive movie details within the overall architecture.</td>
												</tr>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/Requests/GetUpcomingListRequest.swift'>GetUpcomingListRequest.swift</a></b></td>
													<td style='padding: 8px;'>- Defines the structure for requesting upcoming movies from the API, facilitating seamless integration with the backend to fetch paginated lists of upcoming films<br>- It standardizes request parameters and endpoint details, supporting the broader architectures goal of providing real-time movie data to the application’s user interface.</td>
												</tr>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/Requests/GetNowPlayingListRequest.swift'>GetNowPlayingListRequest.swift</a></b></td>
													<td style='padding: 8px;'>- Defines the network request for retrieving the list of movies currently playing in theaters, integrating with the API endpoint<br>- It facilitates seamless data fetching by specifying request parameters and response handling, supporting the overall architectures goal of providing real-time movie data within the application<br>- This component ensures efficient communication with the backend service for dynamic content updates.</td>
												</tr>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/Requests/GetSearchResultsRequest.swift'>GetSearchResultsRequest.swift</a></b></td>
													<td style='padding: 8px;'>- Defines the structure for executing search requests to retrieve movie data from the API, facilitating user queries and pagination within the applications search functionality<br>- It integrates seamlessly into the network layer, enabling efficient communication with the backend service to fetch relevant movie results based on user input.</td>
												</tr>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/Requests/GetSimilarMoviesRequest.swift'>GetSimilarMoviesRequest.swift</a></b></td>
													<td style='padding: 8px;'>- Defines the network request to fetch movies similar to a specified movie, integrating seamlessly into the apps data layer<br>- It constructs the API call with necessary parameters, enabling the retrieval of related movie data for features like recommendations and browsing, thereby supporting the apps core functionality of dynamic movie exploration within the overall architecture.</td>
												</tr>
											</table>
										</blockquote>
									</details>
									<!-- ServiceLayer Submodule -->
									<details>
										<summary><b>ServiceLayer</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Networking.API.ServiceLayer</b></code>
											<table style='width: 100%; border-collapse: collapse;'>
											<thead>
												<tr style='background-color: #f8f9fa;'>
													<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
													<th style='text-align: left; padding: 8px;'>Summary</th>
												</tr>
											</thead>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/ServiceLayer/ServiceLayer.swift'>ServiceLayer.swift</a></b></td>
													<td style='padding: 8px;'>- Facilitates network communication by managing API requests and responses within the applications service layer<br>- Handles request dispatching, response decoding, and error management to ensure reliable data exchange with backend services<br>- Integrates seamlessly into the overall architecture, enabling consistent and efficient data retrieval across the apps modules.</td>
												</tr>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/ServiceLayer/ServiceLayer+Async.swift'>ServiceLayer+Async.swift</a></b></td>
													<td style='padding: 8px;'>- Facilitates seamless integration of Swift Concurrency with existing completion-based network requests within the service layer<br>- It enables asynchronous handling of API calls, improving code readability and maintainability by allowing developers to leverage async/await patterns without modifying core request logic<br>- This extension enhances the overall architectures flexibility and modernizes the network communication approach.</td>
												</tr>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Networking/API/ServiceLayer/ApiRequest.swift'>ApiRequest.swift</a></b></td>
													<td style='padding: 8px;'>- Defines a standardized interface for constructing and configuring API requests within the movie application<br>- Facilitates seamless communication with backend services by encapsulating URL formation, HTTP methods, headers, query parameters, and request bodies, ensuring consistent and flexible network interactions across the applications service layer.</td>
												</tr>
											</table>
										</blockquote>
									</details>
								</blockquote>
							</details>
						</blockquote>
					</details>
					<!-- Features Submodule -->
					<details>
						<summary><b>Features</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Features</b></code>
							<table style='width: 100%; border-collapse: collapse;'>
							<thead>
								<tr style='background-color: #f8f9fa;'>
									<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
									<th style='text-align: left; padding: 8px;'>Summary</th>
								</tr>
							</thead>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Features/ViewState.swift'>ViewState.swift</a></b></td>
									<td style='padding: 8px;'>- Defines the ViewState enumeration to represent the outcome of view-related operations within the MovieProjectHybrid architecture<br>- It facilitates clear communication of success or error states, including error messages, enabling consistent handling of UI updates and error reporting across the applications features.</td>
								</tr>
							</table>
							<!-- Home Submodule -->
							<details>
								<summary><b>Home</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Features.Home</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Features/Home/HomeViewModelProtocol.swift'>HomeViewModelProtocol.swift</a></b></td>
											<td style='padding: 8px;'>- Defines the contract for the home screens view model, orchestrating data presentation and user interactions within the movie app<br>- It manages loading states, movie lists for various sections, search functionality, and lifecycle events, ensuring seamless data flow and user experience across the apps home interface.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Features/Home/HomeViewController.swift'>HomeViewController.swift</a></b></td>
											<td style='padding: 8px;'>- Defines the main interface for the home screen within the MovieProjectHybrid app, orchestrating user interactions and displaying movie-related content<br>- Serves as the entry point for users to explore featured movies and navigate the app’s core features, integrating with the ViewModel to manage data flow and ensure a responsive, user-centric experience.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Features/Home/HomeView.swift'>HomeView.swift</a></b></td>
											<td style='padding: 8px;'>- Provides the main user interface for the home screen, displaying current and upcoming movies through a carousel and list<br>- Facilitates search functionality, infinite scrolling, and pull-to-refresh, enabling users to explore movie content seamlessly<br>- Integrates view state management and navigation placeholders, supporting a dynamic, responsive experience within the overall app architecture.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Features/Home/HomeViewModel.swift'>HomeViewModel.swift</a></b></td>
											<td style='padding: 8px;'>- Manages the home screens data flow by orchestrating movie fetches, search operations, and pagination, ensuring seamless user experience<br>- Coordinates state updates for loading, errors, and movie lists, integrating with the data layer to provide current and upcoming movies while supporting efficient search with debounce<br>- Facilitates reactive UI updates aligned with the overall app architecture.</td>
										</tr>
									</table>
									<!-- HomeDataController Submodule -->
									<details>
										<summary><b>HomeDataController</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Features.Home.HomeDataController</b></code>
											<table style='width: 100%; border-collapse: collapse;'>
											<thead>
												<tr style='background-color: #f8f9fa;'>
													<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
													<th style='text-align: left; padding: 8px;'>Summary</th>
												</tr>
											</thead>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Features/Home/HomeDataController/HomeDataProtocol.swift'>HomeDataProtocol.swift</a></b></td>
													<td style='padding: 8px;'>- Defines a protocol for fetching and searching movie data within the app’s home feature, facilitating asynchronous data retrieval for now playing, upcoming, and search results<br>- It standardizes data interactions, supporting the app’s architecture by enabling flexible, decoupled access to movie information essential for populating the home screen’s dynamic content.</td>
												</tr>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Features/Home/HomeDataController/HomeDataController.swift'>HomeDataController.swift</a></b></td>
													<td style='padding: 8px;'>- Facilitates data retrieval for the Home feature by orchestrating API requests to fetch now-playing, upcoming, and search results for movies<br>- Serves as a central data controller within the architecture, enabling seamless integration between the user interface and backend services to deliver dynamic movie content.</td>
												</tr>
											</table>
										</blockquote>
									</details>
									<!-- HomeViews Submodule -->
									<details>
										<summary><b>HomeViews</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.Features.Home.HomeViews</b></code>
											<table style='width: 100%; border-collapse: collapse;'>
											<thead>
												<tr style='background-color: #f8f9fa;'>
													<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
													<th style='text-align: left; padding: 8px;'>Summary</th>
												</tr>
											</thead>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Features/Home/HomeViews/CarouselView.swift'>CarouselView.swift</a></b></td>
													<td style='padding: 8px;'>- Provides a swipeable carousel interface for showcasing movies within the app, enabling users to browse through featured titles visually<br>- It displays movie posters with overlayed details such as title, release year, and overview, while supporting user interaction to select a specific movie for further exploration<br>- This component enhances the user experience by offering an engaging, visually rich navigation element aligned with the apps content presentation architecture.</td>
												</tr>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid/Features/Home/HomeViews/SearchView.swift'>SearchView.swift</a></b></td>
													<td style='padding: 8px;'>- Implements a user interface component for searching movies within the app, providing real-time search input handling and displaying dynamic search results<br>- Facilitates seamless user interaction by enabling search queries, clearing input, and selecting movies from the results list, thereby enhancing the overall navigation and discovery experience in the app’s movie browsing architecture.</td>
												</tr>
											</table>
										</blockquote>
									</details>
								</blockquote>
							</details>
						</blockquote>
					</details>
				</blockquote>
			</details>
			<!-- MovieProjectHybrid.xcodeproj Submodule -->
			<details>
				<summary><b>MovieProjectHybrid.xcodeproj</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.xcodeproj</b></code>
					<!-- project.xcworkspace Submodule -->
					<details>
						<summary><b>project.xcworkspace</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.xcodeproj.project.xcworkspace</b></code>
							<!-- xcshareddata Submodule -->
							<details>
								<summary><b>xcshareddata</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.xcodeproj.project.xcworkspace.xcshareddata</b></code>
									<!-- swiftpm Submodule -->
									<details>
										<summary><b>swiftpm</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ MovieProjectHybrid.MovieProjectHybrid.xcodeproj.project.xcworkspace.xcshareddata.swiftpm</b></code>
											<table style='width: 100%; border-collapse: collapse;'>
											<thead>
												<tr style='background-color: #f8f9fa;'>
													<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
													<th style='text-align: left; padding: 8px;'>Summary</th>
												</tr>
											</thead>
												<tr style='border-bottom: 1px solid #eee;'>
													<td style='padding: 8px;'><b><a href='https://github.com/cagatayegilmez/MovieProjectHybrid/blob/master/MovieProjectHybrid/MovieProjectHybrid.xcodeproj/project.xcworkspace/xcshareddata/swiftpm/Package.resolved'>Package.resolved</a></b></td>
													<td style='padding: 8px;'>- Defines and manages project dependencies, ensuring consistent integration of external libraries such as Lottie for animations<br>- Facilitates seamless package resolution within the overall architecture, supporting reliable build processes and maintaining compatibility across the MovieProjectHybrid ecosystem.</td>
												</tr>
											</table>
										</blockquote>
									</details>
								</blockquote>
							</details>
						</blockquote>
					</details>
				</blockquote>
			</details>
		</blockquote>
	</details>
</details>

---

## Getting Started

### Prerequisites

This project requires the following dependencies:

- **Programming Language:** Swift
- **Package Manager:** Swift_package_manager

### Installation

Build MovieProjectHybrid from the source and install dependencies:

1. **Clone the repository:**

    ```sh
    ❯ git clone https://github.com/cagatayegilmez/MovieProjectHybrid
    ```

2. **Navigate to the project directory:**

    ```sh
    ❯ cd MovieProjectHybrid
    ```

3. **Install the dependencies:**

**Using [swift_package_manager](https://swift.org/):**

```sh
❯ swift build
```

### Usage

Run the project with:

**Using [swift_package_manager](https://swift.org/):**

```sh
swift run
```

### Testing

Movieprojecthybrid uses the {__test_framework__} test framework. Run the test suite with:

**Using [swift_package_manager](https://swift.org/):**

```sh
swift test
```

---

## Roadmap

- [X] **`Task 1`**: <strike>Implement home screen.</strike>
- [ ] **`Task 2`**: Implement movie detail screen.
- [ ] **`Task 3`**: Implement Unit test.

---

## Contributing

- **💬 [Join the Discussions](https://github.com/cagatayegilmez/MovieProjectHybrid/discussions)**: Share your insights, provide feedback, or ask questions.
- **🐛 [Report Issues](https://github.com/cagatayegilmez/MovieProjectHybrid/issues)**: Submit bugs found or log feature requests for the `MovieProjectHybrid` project.
- **💡 [Submit Pull Requests](https://github.com/cagatayegilmez/MovieProjectHybrid/blob/main/CONTRIBUTING.md)**: Review open PRs, and submit your own PRs.

<details closed>
<summary>Contributing Guidelines</summary>

1. **Fork the Repository**: Start by forking the project repository to your github account.
2. **Clone Locally**: Clone the forked repository to your local machine using a git client.
   ```sh
   git clone https://github.com/cagatayegilmez/MovieProjectHybrid
   ```
3. **Create a New Branch**: Always work on a new branch, giving it a descriptive name.
   ```sh
   git checkout -b new-feature-x
   ```
4. **Make Your Changes**: Develop and test your changes locally.
5. **Commit Your Changes**: Commit with a clear message describing your updates.
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **Push to github**: Push the changes to your forked repository.
   ```sh
   git push origin new-feature-x
   ```
7. **Submit a Pull Request**: Create a PR against the original project repository. Clearly describe the changes and their motivations.
8. **Review**: Once your PR is reviewed and approved, it will be merged into the main branch. Congratulations on your contribution!
</details>

<details closed>
<summary>Contributor Graph</summary>
<br>
<p align="left">
   <a href="https://github.com{/cagatayegilmez/MovieProjectHybrid/}graphs/contributors">
      <img src="https://contrib.rocks/image?repo=cagatayegilmez/MovieProjectHybrid">
   </a>
</p>
</details>

---

## License

Movieprojecthybrid is protected under the [LICENSE](https://choosealicense.com/licenses) License. For more details, refer to the [LICENSE](https://choosealicense.com/licenses/) file.

---

## Acknowledgments

- Credit `contributors`, `inspiration`, `references`, etc.

<div align="left"><a href="#top">⬆ Return</a></div>

---
