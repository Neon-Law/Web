# NeonLaw Web

![Swift 6.0](https://img.shields.io/badge/Swift-6.0-orange.svg)
![Platform](https://img.shields.io/badge/Platform-macOS%2015-blue.svg)

A modern web application for Neon Law built with Hummingbird and Elementary.

## Overview

This is a Swift-based web application that serves the NeonLaw attorney directory
service website. It uses:

- **Hummingbird** - Modern Swift web framework
- **Elementary** - Type-safe HTML rendering in Swift
- **Tailwind CSS** - Utility-first CSS framework (via CDN)

## Claude Code Development Setup

This project is part of the [Trifecta](https://github.com/neon-law-foundation/Trifecta) development environment, designed for full-stack Swift development with Claude Code.

**Recommended Setup**: Use the [Trifecta configuration](https://github.com/neon-law-foundation/Trifecta) which provides:
- Unified Claude Code configuration across all projects
- Pre-configured shell aliases for quick navigation
- Consistent development patterns and tooling
- Automated repository cloning and setup

**Working in Isolation**: This repository can also be developed independently. We maintain separate repositories (rather than a monorepo) to ensure:
- **Clear code boundaries** - Each project has distinct responsibilities and scope
- **Legal delineation** - Clear separation between software consumed by different entities (Neon Law Foundation, Neon Law, Sagebrush Services)
- **Independent deployment** - Each service can be versioned and deployed separately
- **Focused development** - Smaller, more manageable codebases

## Features

- Server-side rendered HTML using Elementary
- Static file serving for assets (logo, images, etc.)
- Responsive design with Tailwind CSS
- Type-safe routing with Hummingbird

## Requirements

- Swift 5.10+
- macOS 14+

## Running the Application

```bash
# Build the application
swift build

# Run the application
swift run App

# The server will start on http://localhost:8080/
```

## Development

```bash
# Run tests
swift test

# Build for release
swift build -c release
```

## Project Structure

```text
Sources/
  App/
    App.swift                    - Main application entry point
    Pages.swift                  - HTML page templates using Elementary
    Elementary+Hummingbird.swift - Integration between Elementary and Hummingbird

Public/
  images/
    logo.svg                     - NeonLaw logo

Tests/
  AppTests/
    AppTests.swift               - Application tests
```

## Services

NeonLaw is an attorney directory service that connects clients with qualified
legal professionals across multiple practice areas:

- Trademark & IP
- Estate Planning
- Business Law
- Real Estate
- Family Law
- And many more practice areas

We do not provide legal advice—we connect you with the right attorney for your
needs.

## License

This project is licensed under the **GNU Affero General Public License v3.0
(AGPL-3.0)**.

See the [LICENSE](LICENSE) file for full details.

© 2025 Neon Law.
