# HIG Compliance Auditor

A Claude Code skill that audits codebases and design systems against Apple's Human Interface Guidelines (HIG), generates detailed compliance reports with severity tiers, and applies remediation changes on user approval.

I built this skill to bring the rigor of Apple's design standards into the development workflow. Instead of manually cross-referencing HIG documentation, you can run a comprehensive audit directly inside Claude Code and get actionable, attributed fixes for every violation found.

## What It Does

- Scans Swift, SwiftUI, UIKit, CSS, HTML, JavaScript, and design tokens for HIG violations
- Generates structured audit reports with severity levels: Critical, High, Medium, Low
- Covers typography, color systems, Liquid Glass materials, layout, accessibility, and platform-specific patterns
- Supports iOS, iPadOS, macOS, watchOS, tvOS, visionOS, and Web/PWA targets
- Presents multiple remediation options for complex issues and waits for your approval before applying fixes
- Produces before/after comparisons and git-compatible diffs
- All fixes include inline attribution comments referencing the specific HIG guideline

## Installation

### Claude Code (CLI)

```bash
npx skills add omrajguru05/hig-compliance-auditor
```

That is it. The skill installs to `~/.claude/skills/hig-compliance-auditor/` and is ready to use immediately.

### Claude.ai (Web)

Download the `hig-compliance-auditor.skill` file from this repo, then upload it at **Settings > Customize > Skills** in Claude.ai (Pro/Max/Team/Enterprise).

### Manual Installation

```bash
curl -sL https://raw.githubusercontent.com/omrajguru05/hig-compliance-auditor/main/install.sh | bash
```

After any installation method, restart Claude Code or start a new conversation for the skill to activate.

## Usage

Here are some example prompts that will trigger the skill:

```
Audit this project for HIG compliance
```

```
Check my SwiftUI code against Apple's Human Interface Guidelines
```

```
Run an accessibility audit for iOS
```

```
Is my web app following Apple's design standards for PWA?
```

```
Prepare this app for App Store review - check compliance
```

```
Audit the Liquid Glass CSS implementation in my navigation bar
```

The skill walks you through a structured workflow:

1. **Pre-audit configuration** - You choose the audit scope, target platforms, and framework
2. **Codebase scanning** - The skill analyzes your code against the HIG knowledge base
3. **Audit report** - A detailed Markdown report with every issue, its severity, and recommended fixes
4. **Your approval** - You select which issues to fix and which remediation approach you prefer
5. **Automated remediation** - Fixes are applied with full attribution in the code comments
6. **Continuous monitoring** (optional) - Track compliance over time with baseline comparisons

## Audit Coverage

### Foundations
- Typography and Dynamic Type compliance (SF Pro Text/Display threshold, tracking adjustments, 200% scaling)
- Semantic color system and Dark Mode architecture (dual-tier backgrounds, contrast ratios)
- Liquid Glass material application (control layer vs content layer rules, scroll-edge transitions)
- Layout and safe areas (touch targets, Dynamic Island, home indicator)
- Iconography and SF Symbols (weight matching, filled vs outlined context, licensing)

### Platform-Specific
- **iOS/iPadOS**: Thumb-zone ergonomics, Dynamic Island, tab bar rules, sidebar navigation on iPad
- **macOS**: Menu bar integration, keyboard shortcuts, multi-window support, toolbar patterns
- **watchOS**: Glanceability, full-width touch targets, Digital Crown, pure black backgrounds
- **tvOS**: Focus engine, parallax effects, top tab bars, TV-safe areas
- **visionOS**: Spatial ergonomics, Ornaments, gaze-and-pinch targets, no head-locked UI

### Web/PWA
- PWA manifest configuration (standalone display, theme-color, apple-touch-icon)
- Liquid Glass CSS implementation (four-layer technique with backdrop-filter)
- System font stack and tracking adjustments
- SF Symbols licensing compliance (alternatives: Phosphor, Lucide, Heroicons)
- Interaction fidelity (tap delay, text selection, gesture conflicts, safe-area-inset)

### Compliance
- App Store Review Guidelines 2025/2026
- Accessibility (VoiceOver, Dynamic Type, color contrast, motor, motion sensitivity)
- AI transparency requirements (2026)
- Deceptive design avoidance (2026 ad policies)

## Project Structure

```
hig-compliance-auditor/
  skills/
    hig-compliance-auditor/
      SKILL.md
      references/
        hig-foundations.md
        platform-paradigms.md
        web-pwa-adaptation.md
        compliance-checklists.md
  install.sh
  hig-compliance-auditor.skill
  README.md
  LICENSE
```

## Knowledge Base

The skill's reference material is organized into four focused files that Claude loads on demand based on the audit scope:

| File | Contents |
|------|----------|
| `hig-foundations.md` | Core principles (Clarity, Deference, Depth, Hierarchy, Harmony, Consistency), typography metrics, semantic colors, Liquid Glass rules, layout constraints, SF Symbols |
| `platform-paradigms.md` | iOS/iPadOS, macOS, watchOS, tvOS, visionOS paradigms with platform-specific audit checks |
| `web-pwa-adaptation.md` | PWA configuration, Liquid Glass CSS implementation, system font stacks, icon licensing, interaction fidelity |
| `compliance-checklists.md` | UX/UI dos and don'ts, App Store review requirements, accessibility audit matrix, AI transparency rules |

All guidance and technical specifications derive from Apple's Human Interface Guidelines. I do not claim authorship of Apple's design principles or framework specifications.

## Attribution

All design principles, guidelines, and technical specifications referenced in this skill are sourced from [Apple's Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/). This skill provides a structured audit workflow and remediation tooling built on top of that publicly available guidance.

## About Me

I am Omraj Kumar. I built this skill to help developers and designers ship apps that meet Apple's bar for quality and compliance.

- Website: [omrajguru.com/linktree](https://omrajguru.com/linktree)
- Portfolio: [om.bearblog.dev/projects](https://om.bearblog.dev/projects)
- GitHub: [@omrajguru05](https://github.com/omrajguru05)
- X: [@omrajguru_](https://x.com/omrajguru_)

## License

MIT
