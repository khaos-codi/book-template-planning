# Getting Started

This chapter will guide you through the initial setup of Book Template and help you create your first book project.

## Prerequisites

Before you begin, you'll need:

- **Git**: For version control and collaboration
- **Docker**: To run the build environment without installing dependencies
- **Text Editor**: Any Markdown-compatible editor (VS Code, Atom, etc.)

## Creating Your Book Project

The easiest way to get started is to use this template repository:

1. Visit the [Book Template repository](https://github.com/iksnae/book-template)
2. Click the "Use this template" button
3. Name your repository and create it
4. Clone your new repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/your-book-repo.git
   cd your-book-repo
   ```

## Project Structure

After cloning, you'll have this basic structure:

```
your-book-repo/
├── book/                    # Book content
│   └── en/                  # English content
│       ├── chapter-01/      # Chapters
│       │   ├── 00-introduction.md
│       │   ├── 01-getting-started.md
│       │   └── images/      # Chapter-specific images
│       └── images/          # Shared images
├── templates/               # Output templates
├── tools/                   # Build scripts and utilities
├── build.sh                 # Main build script
└── book.json                # Book configuration
```

## Configuring Your Book

Edit the `book.json` file to customize your book's metadata:

```json
{
  "title": "Your Amazing Book",
  "subtitle": "An Insightful Guide",
  "author": "Your Name",
  "publisher": "Your Publisher",
  "languages": ["en"],
  "defaultLanguage": "en",
  "version": "1.0.0",
  "copyright": "© 2025 Your Name",
  "license": "All Rights Reserved"
}
```

## Building Your Book

To build all formats of your book:

```bash
./build.sh
```

This will:
1. Combine all your Markdown files
2. Process images and assets
3. Generate PDF, EPUB, MOBI, and HTML versions
4. Output everything to the `build/` directory

You can also build specific formats:

```bash
# Skip PDF and MOBI generation
./build.sh --skip-pdf --skip-mobi
```

## Writing Your First Content

Let's create a simple chapter to test the system:

1. Open the file `book/en/chapter-01/00-introduction.md` in your text editor
2. Add some content (or modify the existing content):

```markdown
# Welcome to My Book

This is the first chapter of my amazing book.

## Introduction

Here's a brief introduction to the topic.

- Point one
- Point two
- Point three

## Key Concepts

Let's explore some key concepts.
```

3. Save the file and run the build script:

```bash
./build.sh
```

4. Check the `build/` directory for your generated book in various formats

## Next Steps

Now that you have your project set up:

1. Edit the existing chapter files or add new ones
2. Add images to the appropriate directories
3. Build and preview your book
4. Commit your changes to Git

In the next chapter, we'll dive deeper into writing and organizing your book content.