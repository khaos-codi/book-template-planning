# Contributing to Book Template

Thank you for considering contributing to the Book Template project! This document provides guidelines and instructions for contributing.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
  - [Reporting Bugs](#reporting-bugs)
  - [Suggesting Enhancements](#suggesting-enhancements)
  - [Pull Requests](#pull-requests)
- [Development Setup](#development-setup)
- [Style Guidelines](#style-guidelines)
- [Project Structure](#project-structure)
- [Testing](#testing)
- [Release Process](#release-process)

## Code of Conduct

This project adheres to a code of conduct that promotes a welcoming and inclusive environment. By participating, you are expected to uphold this code. Please report unacceptable behavior.

## How Can I Contribute?

### Reporting Bugs

If you encounter a bug, please create an issue with the following information:
- A clear, descriptive title
- Steps to reproduce the issue
- Expected and actual behavior
- Screenshots if applicable
- Any relevant environment information (OS, Docker version, etc.)

### Suggesting Enhancements

Enhancement suggestions are welcome. Please create an issue with:
- A clear, descriptive title
- A detailed description of the proposed enhancement
- Examples or mock-ups of how it would work
- Explanation of why it would be valuable

### Pull Requests

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Test your changes thoroughly
5. Commit your changes (`git commit -m 'Add some amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

Please ensure your PR:
- Has a clear title and description
- Includes documentation updates if necessary
- Passes all tests
- Addresses a single concern

## Development Setup

To set up a development environment:

1. Clone the repository:
   ```bash
   git clone https://github.com/iksnae/book-template.git
   cd book-template
   ```

2. Install Docker to run the book-builder container:
   ```bash
   docker pull iksnae/book-builder:latest
   ```

3. Create a test book or work with the example:
   ```bash
   # Create basic directory structure
   mkdir -p book/en/chapter-01/images
   
   # Create a test markdown file
   echo "# Test Chapter" > book/en/chapter-01/00-introduction.md
   ```

4. Build the book:
   ```bash
   ./build.sh
   ```

## Style Guidelines

### Code Style

- Shell scripts should follow [Google's Shell Style Guide](https://google.github.io/styleguide/shellguide.html)
- JavaScript code should follow [Airbnb's JavaScript Style Guide](https://github.com/airbnb/javascript)
- All scripts should have clear comments and documentation

### Markdown Style

- Use ATX-style headers (`# Header` rather than underlines)
- Wrap lines at 80 characters when possible
- Use reference-style links for URLs
- Include alt text for all images
- Use fenced code blocks with language specified

## Project Structure

The project is organized as follows:

```
book-template/
├── book/                 # Book content
├── templates/            # Templates for output formats
├── tools/                # Build tools and scripts
│   ├── scripts/          # Individual build steps
│   └── config/           # Configuration files
├── .github/              # GitHub Actions and templates
└── docs/                 # Additional documentation
```

When contributing, please respect this structure and create new files in the appropriate directories.

## Testing

Before submitting a PR, please test your changes:

1. Run a full build to ensure all formats generate correctly:
   ```bash
   ./build.sh
   ```

2. Test with different configuration options:
   ```bash
   ./build.sh --skip-pdf --skip-mobi
   ```

3. If you've modified build scripts, test them with sample content

## Release Process

The release process is managed by maintainers. Generally:

1. Version numbers follow [Semantic Versioning](https://semver.org/)
2. Changes are documented in CHANGELOG.md
3. Releases are tagged in Git and published as GitHub Releases

## Questions?

If you have questions about contributing, please open an issue marked as a question or contact the maintainers.

Thank you for contributing to Book Template!