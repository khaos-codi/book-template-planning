# Book Template: Design Document

This document outlines the design principles, architecture, and implementation details of the Book Template system.

## Design Goals

1. **Writer-Focused Experience**: Minimize technical friction for authors
2. **Separation of Content and Presentation**: Keep content in simple Markdown, presentation in templates
3. **Modularity**: Components should be loosely coupled and independently testable
4. **Extensibility**: Support for plugins, custom scripts, and templating
5. **Reproducibility**: Builds should be consistent across environments
6. **Multi-Format Support**: Generate multiple output formats from a single source
7. **Internationalization**: Support for multiple languages and translations

## System Architecture

The Book Template system consists of several key components:

### Content Layer

- **Markdown Files**: Raw content organized by language, chapter, and section
- **Assets**: Images, diagrams, and other embedded resources
- **Metadata**: Book configuration in `book.json`

### Build System

- **Content Combination**: Scripts to combine markdown files in the correct order
- **Asset Processing**: Image optimization and path resolution
- **Conversion Pipeline**: Pandoc-based conversion to different output formats
- **Template Application**: Application of format-specific templates
- **Post-Processing**: Format-specific adjustments and refinements

### Output Layer

- **PDF**: Professional-quality print and digital PDF
- **EPUB**: Standard e-book format for most readers
- **MOBI**: Format for Kindle devices
- **HTML**: Web version with responsive design
- **Additional Formats**: Optional formats like DocBook, LaTeX, etc.

### CI/CD Integration

- **GitHub Actions Workflows**: Automated build and testing
- **Preview Generation**: PR previews and review artifacts
- **Publication Pipeline**: Automated publishing to different platforms

## Implementation Details

### Content Organization

Content is organized hierarchically:

```
book/
├── en/                  # Language code
│   ├── chapter-01/      # Chapter directory
│   │   ├── 00-introduction.md
│   │   ├── 01-getting-started.md
│   │   └── images/      # Chapter-specific images
│   ├── chapter-02/
│   │   └── ...
│   └── images/          # Language-wide shared images
└── es/                  # Additional language
    └── ...
```

Files are combined in order based on numeric prefixes, ensuring consistent ordering across builds.

### Build Process Flow

1. **Initialization**: Parse configuration and command-line options
2. **Preparation**: Create build directories and validate content
3. **Combination**: Merge markdown files in correct order with appropriate front matter
4. **Asset Processing**: Copy and optimize images, ensure correct paths
5. **Conversion**: Use Pandoc to convert to each target format
6. **Post-Processing**: Format-specific adjustments
7. **Validation**: Check output for errors and completeness
8. **Packaging**: Bundle outputs for distribution

### Pandoc Integration

The system uses Pandoc as its core conversion engine, leveraging:

- Custom LaTeX templates for PDF
- CSS styling for HTML and EPUB
- Extensions for advanced Markdown features
- Filters for specialized processing

### Docker Container

The `iksnae/book-builder` Docker image provides a consistent environment with:

- Pandoc and all required extensions
- LaTeX for PDF generation
- Conversion tools for various formats
- Image processing utilities
- Build scripts and dependencies

### GitHub Actions Integration

Automated workflows provide:

- Continuous build and testing
- Preview generation for pull requests
- Artifact management for different formats
- Release automation for published versions

## Future Enhancements

Planned enhancements include:

1. **Plugin System**: Extensible architecture for custom processing steps
2. **Visual Editor**: Browser-based WYSIWYG editing experience
3. **Collaborative Editing**: Real-time collaboration features
4. **Translation Management**: Tools for managing and synchronizing translations
5. **Advanced Analytics**: Readability scoring, complexity analysis, etc.

## Technical Decisions

### Why Markdown?

Markdown was chosen as the primary content format because:

- Low barrier to entry for non-technical authors
- Plain text format works well with version control
- Rich ecosystem of tools and extensions
- Clear separation of content and presentation

### Why Pandoc?

Pandoc was selected as the conversion engine because:

- Supports a wide range of input and output formats
- Highly customizable via templates and filters
- Active development and community support
- High-quality output, especially for academic and technical content

### Why Docker?

The Docker-based approach was chosen because:

- Provides consistent environment across different platforms
- Eliminates complex dependency management
- Simplifies CI/CD integration
- Enables reproducible builds

## Implementation Plan

### Phase 1: Core Structure (Current Phase)
- Basic repository structure
- Essential configuration
- Simple build script
- Documentation

### Phase 2: Build System
- Combine markdown script
- Asset processing
- Template integration
- Output generation

### Phase 3: Advanced Features
- Multi-language support
- CI/CD integration
- Preview generation
- Publishing tools

### Phase 4: User Experience
- Simplified workflows
- Additional templates
- Plugin system
- Visual editing tools