# Page Template Creation Guide

This document serves as a reference guide for AI agents and developers for creating new frontend pages using the standard Jinja2 layout template in the `rating-svm` project.

## 1. Overview
The project uses a standardized layout architecture defined in `Template/base.html`. This base template implements a fixed sidebar on the left, leaving the entire rest of the page to be defined by the specific page being rendered.

## 2. File Structure
- `Template/base.html`: The master layout file. Contains the `<html>` shell, `<head>` configuration (Tailwind CSS, fonts, styling), and the sidebar (`<aside>`). It does NOT contain a header or footer.
- `Template/page_example.html`: A working example of how a child page should extend the base layout.

## 3. Creating a New Page
When instructed to create a new page, **ALWAYS extend the base template** rather than duplicating HTML code. 

### Basic Page Skeleton
```jinja2
{% extends "Template/base.html" %}

{% block title %}Your Page Title - CreditRating PMI{% endblock %}

{% block content %}
<section class="p-6 md:p-10 max-w-7xl mx-auto w-full">
    <!-- Your page content goes here -->
</section>
{% endblock %}
```

## 4. Available Jinja2 Blocks
The `base.html` template exposes several blocks that can be overridden or extended:

- `{% block title %}`: Overrides the `<title>` tag.
- `{% block head %}`: For injecting page-specific CSS or `<meta>` tags inside the `<head>`.
- `{% block sidebar_extra_links %}`: Appends new `<li>` navigation items to the bottom of the sidebar list.
- `{% block content %}`: **[REQUIRED]** The main content area of the page. **This must include your page's header and footer**, if needed. If your page has a mobile menu hamburger button, give it `id="mobile-menu-btn"` so the base template's script can toggle the sidebar.
- `{% block scripts %}`: For injecting page-specific JavaScript before the closing `</body>` tag.

## 5. UI/UX & Styling Guidelines
When building the content for new pages, adhere to the following rules (aligned with the `UI_Specialist_Stitch` persona):

1. **Tailwind CSS**: Use utility classes for all styling. Avoid custom `<style>` blocks unless strictly necessary.
2. **Dark Mode Support**: The application heavily relies on a class-based dark mode (`<html class="dark">`). Always provide both light and dark mode classes for every element:
   - Example: `bg-white dark:bg-card-dark text-slate-900 dark:text-white`
3. **Color Palette**:
   - Primary Accent: `primary` (Tailwind config: `#136dec`)
   - Dark Backgrounds: `bg-background-dark` (`#101822`), `bg-card-dark` (`#1e2229`), `surface-dark` (`#233348`)
   - Light Backgrounds: `bg-background-light` (`#f6f7f8`)
   - Text Colors: `text-slate-900` (light mode), `text-white` (dark mode headings), `text-slate-500` or `text-slate-400` (secondary/body text).
4. **Icons**: Use Google Material Symbols.
   - Example: `<span class="material-symbols-outlined text-primary">analytics</span>`
5. **Responsiveness**: 
   - The sidebar automatically hides on screens smaller than `md` (`768px`) and is replaced by a hamburger menu and a darkened overlay.
   - Use Tailwind's responsive prefixes (`md:`, `lg:`) to adjust content grids (e.g., `grid-cols-1 md:grid-cols-2 lg:grid-cols-3`).
6. **Cards & Containers**: Standardize UI containers using the following class structure:
   ```html
   <div class="bg-white dark:bg-card-dark rounded-xl border border-slate-200 dark:border-slate-800 p-6 shadow-sm">
       <!-- Card content -->
   </div>
   ```

## 6. Development Workflow
- **Do not modify `base.html`** directly unless requested to change the global layout (e.g., adding a global tracking script or modifying the sidebar items for all pages).
- Ensure that any interactive elements (modals, dropdowns) are z-indexed properly so they do not conflict with the fixed sidebar (`z-[100]`).
