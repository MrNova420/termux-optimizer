# Changelog

All notable changes to this project will be documented in this file.

## [2.0.1] - 2026-02-03

### Fixed
- Network analysis timeout issues preventing script completion
- Function definitions moved before usage to prevent command not found errors
- df command compatibility issues across different Android versions
- Added timeouts to all network operations (2 seconds max)
- Improved error handling throughout the script
- Silent installation with progress indicators
- Reduced Python package list for faster installation
- Better dependency checking

### Improved
- Much faster installation (reduced verbose output)
- Graceful handling of optional features
- Better progress reporting during installation
- Interrupt handling (Ctrl+C now exits cleanly)
- Compatibility with various Android versions

### Added
- Quick installer script (install.sh)
- Better error messages and warnings
- Fallback logic when bc is not available
- Relaxed Termux environment check

## [2.0.0] - 2026-02-03

### Added
- Smart device detection and tier classification
- Auto-tuning based on device capabilities
- Memory optimization with dynamic swap
- Network optimization tools
- Performance monitoring utilities
- Battery-aware optimizations
- Auto-maintenance scheduler
- 15+ utility scripts
- Comprehensive documentation

### Features
- Python, Node.js, Rust, Go development environments
- ZSH with Oh My ZSH
- Network security tools
- Real-time monitoring tools
- Automated cleanup and optimization
