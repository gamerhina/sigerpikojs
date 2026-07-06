# SigerPIK Modern Theme

<p align="center">

<img src="C:\laragon\www\sigerpik-ojs\public_html\themess.png" width="180">

</p>

<h1 align="center">
SigerPIK Modern Theme
</h1>

<p align="center">

Professional Responsive Theme for Open Journal Systems (OJS) 3.4+

Built for Universitas Lampung

</p>

---

# Overview

SigerPIK Modern Theme adalah tema premium untuk Open Journal Systems (OJS) yang dirancang khusus untuk memberikan pengalaman pengguna modern, cepat, profesional, dan mudah dikonfigurasi tanpa mengubah core OJS.

Theme ini dibangun sebagai PKP Theme Plugin sehingga seluruh fitur dapat dipasang maupun dilepas tanpa memodifikasi source code OJS.

Target utama theme ini adalah jurnal ilmiah modern dengan tampilan setara website jurnal internasional seperti:

- MDPI
- Frontiers
- Elsevier
- Nature
- Springer

namun tetap mengikuti standar PKP.

---

# Main Goals

- Modern UI
- Responsive
- Fast
- SEO Friendly
- PKP Native
- Upgrade Safe
- Highly Configurable
- Bootstrap 5
- Accessibility Ready

---

# Features

## Responsive Layout

Desktop

Tablet

Mobile

---

## Hero Slider

Unlimited Slider

Background Image

Overlay

Title

Subtitle

Button

Auto Play

Dashboard Management

---

## Homepage Builder

Administrator dapat mengatur urutan homepage menggunakan drag and drop.

Example

Slider

↓

Announcement

↓

Current Issue

↓

Latest Articles

↓

Statistics

↓

Partner

↓

Sidebar

↓

Footer

---

## Sidebar Builder

Widget dapat dipilih sesuai kebutuhan.

Available Widgets

- Current Issue
- Latest Articles
- Most Viewed
- Most Downloaded
- Editorial Team
- Download Template
- Google Scholar
- Garuda
- DOAJ
- Crossref
- Scopus
- Visitor
- Statistics
- Partner
- Advertisement
- Banner
- Social Media
- Custom HTML

---

## Theme Options

Dashboard Configuration

- General
- Header
- Homepage
- Slider
- Sidebar
- Footer
- Partner
- Statistics
- Color
- Typography
- Social Media
- SEO
- Advanced

---

## Partner Logo Carousel

Unlimited Logo

Auto Slider

Responsive

Hover Effect

Clickable

---

## Current Issue

Modern Card

Journal Cover

Volume

Issue

Article Count

Publish Date

View Issue Button

---

## Latest Articles

Modern Grid

Thumbnail

Category Badge

Title

Author

Publish Date

View Count

Download Count

DOI

PDF Button

---

## Announcement Bar

Running Text

Priority Label

Auto Scroll

Dashboard Management

---

## Statistics

Animated Counter

Articles

Authors

Downloads

Visitors

Countries

---

## Footer

Four Columns

About

Quick Links

Policies

Contact

Copyright

---

## Floating Buttons

WhatsApp

Email

Back To Top

---

## Search

AJAX Search

Instant Search

---

## Dark Mode

On

Off

Remember Preference

---

## Multi Language

PKP Locale Compatible

---

# Design System

Primary Color

```
#0B3D91
```

Secondary Color

```
#1D6FD6
```

Accent

```
#FFC107
```

Background

```
#F7FAFC
```

Card Radius

```
18px
```

Shadow

```
Soft
```

---

# Typography

Primary

Inter

Alternative

Poppins

Fallback

Arial

---

# Icons

Font Awesome 6

---

# Framework

Bootstrap 5.3

SwiperJS

Vanilla JavaScript

CSS Variables

---

# Compatibility

OJS 3.4.x

PHP 8.1+

PHP 8.2+

PHP 8.3+

MySQL 8+

MariaDB

---

# Folder Structure

plugins/

themes/

sigerpik-modern/

```
css/

js/

images/

fonts/

locale/

templates/

widgets/

slider/

homepage/

sidebar/

settings/

version.xml

index.php

SigerpikModernThemePlugin.php

README.md
```

---

# Performance Goals

Google PageSpeed

Desktop

98+

Mobile

95+

Lighthouse

95+

---

# Accessibility

Keyboard Navigation

ARIA Label

WCAG Friendly

Skip Link

High Contrast

---

# Security

No Core Modification

Plugin Based

PKP Native

Upgrade Safe

---

# SEO

JSON-LD

OpenGraph

Twitter Card

Canonical URL

Breadcrumb

Meta Generator

Schema.org

---

# Coding Standard

PHP PSR-12

Bootstrap Naming

BEM CSS

Vanilla JS

PKP Theme API

---

# Browser Support

Chrome

Firefox

Edge

Safari

Opera

---

# Roadmap

Version 1.0

- Modern Layout
- Responsive
- Bootstrap
- Hero Slider
- Homepage
- Sidebar
- Footer

Version 1.5

- Homepage Builder
- Widget Builder
- Statistics
- Dark Mode

Version 2.0

- Mega Menu
- Theme Export
- Theme Import
- Advanced SEO
- AI Search
- Advanced Widget

---

# License

GPL v3

---

# Credits

Developed for

SIGERPIK

Seminar Ilmiah Giat Riset Perikanan dan Kelautan

Faculty of Agriculture

Universitas Lampung

---

# Author

SigerPIK Development Team

2026



# Design System

Version : 1.0

Theme : SigerPIK Modern

Target : OJS 3.4+

Author : SigerPIK Development Team

---

# Overview

Design System merupakan fondasi visual seluruh Theme SigerPIK Modern.

Seluruh komponen wajib mengikuti aturan pada dokumen ini.

Tidak diperbolehkan membuat style secara acak.

Semua harus menggunakan Design Token.

---

# Design Philosophy

Keyword

- Clean
- Modern
- Ocean
- Academic
- Professional
- Elegant
- Minimalist
- Fast
- Responsive

Inspirasi

- Apple
- Stripe
- MDPI
- Frontiers
- Bootstrap
- Fluent Design

---

# Color Palette

## Primary

Ocean Blue

HEX

#0B3D91

RGB

11 61 145

Usage

- Header
- Navigation
- Primary Button
- Active Menu
- Hero Overlay

---

## Secondary

Marine Blue

HEX

#1565C0

Usage

- Card Header
- Hover
- Link

---

## Accent

Ocean Cyan

HEX

#00BCD4

Usage

- Statistics
- Badge
- Highlight

---

## Success

HEX

#2E7D32

---

## Warning

HEX

#F9A825

---

## Danger

HEX

#D32F2F

---

## White

#FFFFFF

---

## Background

#F5F8FC

---

## Surface

#FFFFFF

---

## Border

#E5E7EB

---

## Divider

#EDF2F7

---

# Gradient

Primary Gradient

linear-gradient(
135deg,
#0B3D91,
#1565C0
)

---

Hero Gradient

linear-gradient(
90deg,
rgba(5,34,80,.75),
rgba(5,34,80,.25)
)

---

Footer Gradient

linear-gradient(
180deg,
#082A63,
#041C47
)

---

# Typography

Primary Font

Inter

Fallback

Arial

Helvetica

sans-serif

---

Heading

Weight

700

Letter Spacing

-0.03em

---

Paragraph

Weight

400

Line Height

1.7

---

Button

Weight

600

Uppercase

False

---

# Font Scale

Display

60

Hero

52

H1

42

H2

34

H3

28

H4

24

H5

20

H6

18

Body Large

18

Body

16

Caption

14

Small

12

---

# Border Radius

Button

12

Card

18

Input

12

Badge

999

Modal

24

---

# Shadow

Small

0 2 8 rgba(0,0,0,.05)

Medium

0 10 30 rgba(0,0,0,.08)

Large

0 20 60 rgba(0,0,0,.12)

---

# Transition

Default

300ms

Hover

250ms

Modal

350ms

---

# Container

Desktop

1400px

Laptop

1200px

Tablet

960px

Mobile

100%

---

# Grid

12 Columns

Gap

24px

---

# Spacing

4

8

12

16

20

24

32

40

48

64

96

128

---

# Icon System

Font Awesome 6

Rounded Style

Outline Style

Icon Size

16

20

24

32

48

---

# Button

Primary

Background

Primary Color

Text

White

Hover

Dark Primary

---

Secondary

Outline

Primary Border

White Background

---

Danger

Red

---

Ghost

Transparent

---

Rounded

Radius

12px

---

# Card

Background

White

Radius

18px

Padding

24px

Shadow

Medium

Hover

Lift

TranslateY(-5px)

---

# Image Style

Radius

18px

Lazy Loading

Yes

WebP Priority

Yes

---

# Animation

Fade

Slide

Zoom

Scale

Counter

Hover Lift

Wave

---

# Hero Slider

Height

680px

Desktop

Tablet

540px

Mobile

420px

Overlay

Gradient

---

# Partner Logo

Height

70px

Auto Slider

Hover Scale

Lazy Load

---

# Current Issue

Cover

160x220

Button

Full Width

---

# Latest Articles

Card

Vertical

Image Ratio

16:9

Category Badge

Top Left

---

# Sidebar

Sticky

Desktop Only

Scrollable

---

# Footer

Wave Background

4 Columns

Dark Blue

---

# Floating Button

WhatsApp

Bottom Left

Back To Top

Bottom Right

---

# Scrollbar

Thin

Rounded

Ocean Blue

---

# Accessibility

ARIA

Keyboard

Focus Ring

Contrast AA

---

# Responsive Breakpoint

1400

1200

992

768

576

420

360

---

# CSS Variable

:root{

--primary:

--secondary:

--accent:

--danger:

--success:

--warning:

--radius:

--shadow:

--transition:

--container:

}

---

# Naming Convention

BEM

Example

sp-card

sp-card__header

sp-card__title

sp-card__image

sp-card--active

---

# CSS Rules

No Inline CSS

No Important

Use CSS Variable

Use Bootstrap Utility

Avoid Nested Selector

Maximum Nesting

3

---

# UI Goals

Modern

Premium

Elegant

Academic

Professional

Accessible

Fast

Responsive

Minimal

Ocean Identity



# Homepage Specification

Version : 1.0

Theme : SigerPIK Modern

Target : OJS 3.4+

---

# Overview

Homepage merupakan halaman utama jurnal.

Homepage harus mampu memberikan kesan:

- Professional
- Modern
- Academic
- Clean
- Trustworthy

Homepage tidak boleh terlihat seperti OJS bawaan.

Homepage harus memiliki visual yang setara website jurnal internasional.

---

# Homepage Layout

Desktop

──────────────────────────────────────────────

Top Bar

Header

Navigation

Partner Logo

Hero Slider

Announcement

Current Issue

Latest Articles

Statistics

Focus and Scope

Editorial Board

Indexed By

Sidebar

Footer

──────────────────────────────────────────────

---

# Layout Width

Container

1400px

Content

1040px

Sidebar

320px

Gap

32px

---

# Homepage Grid

12 Columns

Desktop

8

+

4

Tablet

12

Mobile

12

---

# Section Order

01

Top Bar

02

Header

03

Navigation

04

Partner Logo

05

Hero Slider

06

Announcement

07

Current Issue

08

Latest Articles

09

Statistics

10

Focus and Scope

11

Editorial Board

12

Indexing

13

Sidebar

14

Footer

Administrator dapat mengubah urutan section melalui Homepage Builder.

---

# Section 01

Top Bar

Height

40px

Background

Primary Dark

Content

Email

Phone

Language

Login

Register

Submit Article

Social Media

Desktop

Visible

Tablet

Visible

Mobile

Hidden

---

# Section 02

Header

Height

90px

Layout

+------------------------------+

LOGO UNILA

LOGO SIGERPIK

Search

+------------------------------+

Logo Unila

120px

Logo SigerPIK

280px

Sticky

Yes

Scroll Shrink

Yes

---

# Section 03

Navigation

Bootstrap Navbar

Menu

Home

Current

Archives

Announcements

Editorial Team

Policies

About

Contact

Dropdown Support

Yes

Mega Menu Ready

Yes

Mobile Hamburger

Yes

---

# Section 04

Partner Logo

Purpose

Menampilkan logo lembaga pendukung.

Logo

Scopus

Crossref

DOAJ

Garuda

Dimensions

Google Scholar

Road

Sinta

FP Unila

Universitas Lampung

Animation

Auto Slide

Hover Scale

Loop

Responsive

Desktop

10 Logo

Tablet

6 Logo

Mobile

3 Logo

---

# Section 05

Hero Slider

Height

680px

Desktop

520px

Tablet

420px

Mobile

Background

Image

Overlay

Gradient

Animation

Fade

Content

Title

Subtitle

Button Primary

Button Secondary

Optional Badge

Slide Count

Unlimited

Management

Dashboard

---

# Hero Content

Max Width

640px

Alignment

Left

Vertical Center

Button Style

Rounded

Shadow

Hover Lift

---

# Section 06

Announcement

Height

50px

Scrolling

Yes

Priority Badge

Yes

Latest First

Dashboard Editable

---

# Section 07

Current Issue

Layout

Left

Journal Cover

Right

Description

Buttons

View Issue

PDF

DOI

Volume

Issue

Publish Date

Article Count

Card Radius

20px

Shadow

Medium

---

# Section 08

Latest Articles

Grid

3 Columns

Desktop

2 Columns

Tablet

1 Column

Mobile

Card

Image

Category Badge

Title

Author

Affiliation

Publish Date

DOI

PDF Button

Views

Downloads

Hover Animation

Lift

---

# Article Card

Image Ratio

16:9

Radius

18px

Shadow

Soft

Hover

TranslateY(-6px)

Transition

300ms

---

# Section 09

Statistics

Background

Gradient

Cards

5

Animated Counter

Yes

Items

Articles

Authors

Visitors

Downloads

Countries

---

# Section 10

Focus and Scope

Layout

Two Column

Left

Description

Right

Illustration

Read More Button

---

# Section 11

Editorial Board

Card

Photo

Name

Position

Institution

ORCID

Hover

Scale

---

# Section 12

Indexed By

Logo Grid

Responsive

Lazy Load

Hover Gray to Color

---

# Section 13

Sidebar

Desktop

Visible

Tablet

Below Content

Mobile

Below Content

Sticky

Desktop Only

Widgets

Current Issue

Popular Articles

Latest Articles

Template

Visitor

Statistics

Indexed

Partner

Advertisement

Custom HTML

Quick Links

---

# Section 14

Footer

Wave Background

Dark Blue

4 Columns

About

Quick Links

Policies

Contact

Bottom Copyright

Social Media

---

# Responsive Behaviour

Desktop

Sidebar Right

Tablet

Sidebar Bottom

Mobile

Single Column

---

# Performance Rules

Images

WebP

Lazy Load

Video

Deferred

Slider

Only Load First Image

CSS

Critical CSS

JavaScript

Deferred

---

# Accessibility

Keyboard

ARIA

Semantic HTML

Focus Ring

Skip Link

Contrast AA

---

# Animation Rules

Hero

Fade

Cards

Lift

Button

Scale

Statistics

Counter

Partner

Marquee

Sidebar

Fade

---

# Theme Options

Homepage Builder

Enable Hero

Enable Sidebar

Enable Statistics

Enable Partner

Enable Announcement

Enable Footer Wave

Container Width

Sidebar Position

Card Radius

Animation Speed

---

# Future Ready

Video Hero

Dynamic Widget

AI Recommendation

Mega Menu

Journal Showcase

Event Timeline


# Component Library

Version : 1.0

Theme : SigerPIK Modern

Target : OJS 3.4+

---

# Purpose

Semua tampilan Theme wajib dibangun menggunakan komponen yang ada di dokumen ini.

Tidak diperbolehkan membuat komponen baru tanpa dokumentasi.

Semua komponen harus reusable.

---

# Component Hierarchy

Atoms

↓

Molecules

↓

Organisms

↓

Templates

↓

Pages

---

# Atoms

Atom adalah komponen paling kecil.

Contoh

Button

Icon

Badge

Avatar

Input

Label

Divider

Chip

Tooltip

Spinner

Counter

Tag

---

# Molecules

Gabungan beberapa atom.

Contoh

Search Box

Article Meta

Breadcrumb

Pagination

Dropdown

Navbar Item

Social Link

Card Header

Statistic Item

Language Switcher

---

# Organisms

Komponen besar.

Header

Sidebar

Hero Slider

Footer

Article Card

Current Issue

Latest Articles

Editorial Board

Statistics

Partner Carousel

Announcement Bar

---

# Template

Homepage

Current Issue

Archive

Article

Editorial Team

About

Search

Login

Register

---

# Pages

Homepage

Issue Page

Article Page

Search Result

User Login

Submission

Profile

---

# Button

Class

sp-btn

Variant

Primary

Secondary

Outline

Ghost

Danger

Success

Warning

Dark

Light

---

# Button Size

Small

36px

Medium

44px

Large

52px

Extra Large

60px

---

# Button Radius

12px

---

# Button Icon

Left Icon

Right Icon

Only Icon

Loading

Disabled

---

# Card

Class

sp-card

Structure

Header

Body

Footer

Radius

18px

Shadow

Soft

Hover Lift

Yes

---

# Card Types

Article

Current Issue

Editorial

Statistic

Widget

News

Announcement

---

# Badge

Class

sp-badge

Types

Primary

Secondary

Danger

Warning

Success

Dark

Info

---

# Alert

Class

sp-alert

Info

Warning

Danger

Success

Dismissible

---

# Typography

Display

Hero

Heading

Subtitle

Body

Caption

Small

---

# Form

Input

Textarea

Select

Checkbox

Radio

Switch

File Upload

Date Picker

---

# Input Style

Radius

12px

Border

1px

Focus

Primary

Error

Danger

Success

Green

---

# Navbar

Sticky

Transparent

Solid

Shrink

Mega Menu Ready

---

# Hero Slider

Structure

Background

Overlay

Content

Button

Indicator

Navigation

Animation

Fade

Zoom

Slide

---

# Announcement

Running Text

Badge

Date

Priority

---

# Search

Instant

AJAX

History

Suggestion

---

# Sidebar Widget

Widget Container

Header

Body

Footer

Widget Collapse

Widget Order

Widget Title

---

# Current Issue Card

Cover

Volume

Issue

Date

Article Count

Buttons

---

# Latest Article Card

Image

Category

Title

Author

Affiliation

Date

DOI

PDF

Views

Downloads

---

# Editorial Card

Photo

Name

Position

Institution

Email

ORCID

---

# Statistic Card

Icon

Counter

Title

Description

Animation

---

# Partner Card

Logo

Link

Hover

Lazy Load

---

# Footer

About

Quick Links

Policies

Contact

Social

Copyright

---

# Modal

Small

Medium

Large

Fullscreen

Animation

Fade

Scale

---

# Tabs

Horizontal

Vertical

Underline

Pill

---

# Accordion

Bootstrap Compatible

---

# Pagination

Bootstrap Style

Rounded

Icon

---

# Breadcrumb

Chevron

Slash

Arrow

---

# Table

Responsive

Striped

Hover

Compact

---

# Loading

Skeleton

Spinner

Pulse

Wave

---

# Empty State

Illustration

Title

Description

Button

---

# Error Page

404

403

500

Maintenance

---

# Toast

Top Right

Bottom Right

Auto Close

Success

Error

Warning

---

# Dropdown

Hover

Click

Mega Menu

---

# Floating Action Button

WhatsApp

Email

Back To Top

Submit

---

# Widget Contract

Every Widget Must Have

Widget.php

template.tpl

style.css

script.js

config.json

README.md

---

# Naming Convention

sp-btn

sp-card

sp-alert

sp-modal

sp-widget

sp-slider

sp-sidebar

sp-footer

sp-header

sp-navbar

---

# CSS Rules

No Inline CSS

No !important

CSS Variable Only

Responsive First

Bootstrap Utility

BEM Naming

---

# JavaScript Rules

Vanilla JS

Module Based

No jQuery Dependency

Reusable

Event Driven

---

# Accessibility

Keyboard Navigation

Focus Ring

ARIA

Semantic HTML

Alt Image

Screen Reader

---

# Performance

Lazy Load

WebP

Deferred JS

Critical CSS

Minified Assets

---

# Design Goal

Elegant

Minimal

Modern

Academic

Professional

Premium

Fast

Reusable

Consistent


# Theme Settings Specification

Version : 1.0

Project : SigerPIK Modern Theme

Target : Open Journal Systems (OJS) 3.4.x

Author : SigerPIK Development Team

---

# Overview

Theme Settings merupakan pusat konfigurasi seluruh Theme SigerPIK Modern.

Administrator tidak perlu mengubah file PHP, CSS maupun JavaScript.

Seluruh konfigurasi dilakukan melalui Dashboard OJS.

Seluruh setting harus dapat diekspor, diimpor, dibackup dan direstore.

---

# Dashboard Menu

Website

↓

Appearance

↓

SigerPIK Modern

↓

General

Branding

Header

Homepage

Slider

Sidebar

Widgets

Partner

Statistics

Footer

SEO

Social Media

Performance

Advanced

Import / Export

Backup

About

---

# General

## Site Layout

Option

- Full Width
- Boxed

Default

Full Width

---

## Container Width

Slider

800

960

1140

1320

1400

1600

Default

1400

---

## Border Radius

Range

0

24

Default

18

---

## Shadow

Switch

ON

OFF

Default

ON

---

## Animation

Switch

ON

OFF

Default

ON

---

## Theme Preset

Ocean Blue

Marine

Unila Blue

Emerald

Dark

Custom

---

# Branding

## Journal Logo

Upload

PNG

SVG

WEBP

---

## University Logo

Upload

PNG

SVG

---

## Mobile Logo

Upload

---

## Favicon

Upload

ICO

PNG

SVG

---

## Footer Logo

Upload

---

## Loading Logo

Upload

---

## Browser Title

Text

---

## Browser Description

Textarea

---

# Header

## Sticky Header

ON

OFF

---

## Transparent Header

ON

OFF

---

## Shrink Header

ON

OFF

---

## Show Search

ON

OFF

---

## Show Login

ON

OFF

---

## Show Register

ON

OFF

---

## Show Submit Button

ON

OFF

---

## Header Height

60

70

80

90

100

Default

90

---

# Homepage

Enable Homepage Builder

Switch

---

Enable Announcement

Switch

---

Enable Hero

Switch

---

Enable Statistics

Switch

---

Enable Partner Logo

Switch

---

Enable Focus Scope

Switch

---

Enable Editorial

Switch

---

Enable Sidebar

Switch

---

Enable Footer Wave

Switch

---

# Homepage Builder

Administrator dapat drag & drop urutan section.

Section

Hero

Announcement

Current Issue

Latest Articles

Statistics

Focus Scope

Editorial

Partner

Sidebar

Footer

---

# Hero Slider

Enable

Switch

---

Slider Height

Desktop

Tablet

Mobile

---

Overlay

Light

Medium

Dark

Custom

---

Transition

Fade

Slide

Zoom

Cube

Flip

---

Duration

1000

3000

5000

7000

10000

---

Loop

ON

OFF

---

Auto Play

ON

OFF

---

Navigation Arrow

ON

OFF

---

Pagination

ON

OFF

---

Text Position

Left

Center

Right

---

Button Style

Rounded

Square

Outline

---

# Slide Manager

Unlimited Slide

Each Slide

Image

Title

Subtitle

Button Text

Button URL

Overlay

Priority

Publish Date

Expire Date

Status

---

# Sidebar

Sidebar Position

Right

Left

None

---

Sticky Sidebar

ON

OFF

---

Sidebar Width

280

300

320

360

---

Widget Gap

8

16

24

32

---

# Widget Builder

Available Widget

Current Issue

Latest Issue

Latest Articles

Popular Articles

Download Template

Editorial Team

Editorial Board

Journal Metrics

Visitor Counter

Google Scholar

Crossref

DOAJ

Garuda

Dimensions

Road

Scopus

Partner

Advertisement

Quick Link

HTML

YouTube

Facebook

Instagram

X

TikTok

WhatsApp

Contact

Calendar

Announcement

Statistics

---

Widget Properties

Enable

Disable

Priority

Collapse

Background

Title

Padding

Border Radius

Shadow

---

# Partner Logo

Enable

Switch

---

Carousel

ON

OFF

---

Logo Height

40

50

60

70

80

---

Logo Gap

16

24

32

---

Auto Scroll

ON

OFF

---

Hover Animation

ON

OFF

---

Each Partner

Logo

Name

URL

Target

Priority

Status

---

# Statistics

Enable

Switch

---

Counter Animation

ON

OFF

---

Animation Speed

1000

1500

2000

2500

---

Items

Articles

Issues

Authors

Editors

Reviewers

Downloads

Visitors

Countries

Citations

---

# Footer

Layout

1

2

3

4

Columns

---

Wave Background

ON

OFF

---

Newsletter

ON

OFF

---

Copyright

Textarea

---

Footer Menu

Enable

Disable

---

# SEO

Meta Title

Meta Description

Meta Keyword

Canonical

OpenGraph

Twitter Card

Schema.org

JSON-LD

Breadcrumb

Google Verification

Bing Verification

---

# Social Media

Facebook

Instagram

X

LinkedIn

YouTube

TikTok

WhatsApp

Telegram

ORCID

ResearchGate

Google Scholar

Email

Phone

Address

Google Maps

---

# Performance

Enable Lazy Load

ON

OFF

---

Enable WebP

ON

OFF

---

Enable Minify CSS

ON

OFF

---

Enable Minify JS

ON

OFF

---

Enable Critical CSS

ON

OFF

---

Enable Deferred JS

ON

OFF

---

Enable Font Preload

ON

OFF

---

# Advanced

Custom CSS

Editor

---

Custom JS

Editor

---

Custom HTML Head

Editor

---

Custom HTML Footer

Editor

---

# Import Export

Export Theme

JSON

ZIP

---

Import Theme

JSON

ZIP

---

Export Widget

---

Import Widget

---

# Backup

Manual Backup

Restore Backup

Delete Backup

Auto Backup

Weekly

Monthly

---

# About

Theme Version

Release Date

OJS Version

PHP Version

Bootstrap Version

Swiper Version

License

Developer

Website

GitHub

Documentation

Support

---

# Validation Rules

Every uploaded image must support:

PNG

SVG

WEBP

JPG

Maximum Size

5MB

---

# Security Rules

All user input must be sanitized.

All uploaded files must be validated.

No executable file allowed.

CSRF Protection Required.

Escape output before rendering.

---

# Future Features (v2.0)

Visual Homepage Builder

Live Preview

Widget Marketplace

One Click Demo Import

Preset Export

Preset Gallery

AI Theme Assistant

Real Time Color Generator

Advanced Mega Menu

Role Based Theme Settings


# Database & Configuration Specification

Version : 1.0

Project : SigerPIK Modern Theme

Target : OJS 3.4+

---

# Overview

Seluruh konfigurasi Theme tidak boleh disimpan secara acak.

Semua data harus memiliki struktur yang jelas sehingga:

- mudah dibackup
- mudah diexport
- mudah diimport
- mudah diupgrade
- backward compatible

---

# Storage Strategy

Priority

1.

PKP Plugin Settings API

↓

2.

JSON Cache

↓

3.

Custom Table (Only If Required)

---

# Configuration Layer

Administrator

↓

Theme Settings

↓

Plugin Settings API

↓

Theme Config Service

↓

Smarty Renderer

↓

Frontend

---

# Configuration Groups

General

Branding

Header

Homepage

Slider

Sidebar

Widgets

Partner

Statistics

Footer

Typography

Colors

SEO

Performance

Social

Advanced

Backup

---

# Storage Format

Every setting uses JSON.

Example

{
    "theme":"ocean-blue",
    "radius":18,
    "animation":true,
    "container":1400
}

---

# Configuration Version

Every exported configuration contains:

version

theme

ojs

created_at

updated_at

author

Example

{
    "theme":"SigerPIK",
    "version":"1.0.0",
    "ojs":"3.4.0",
    "author":"SigerPIK Team"
}

---

# Branding

logo

mobile_logo

footer_logo

favicon

loading_logo

browser_title

browser_description

---

# Header

sticky

transparent

search

login

register

submit_button

height

menu_style

---

# Homepage

builder_enabled

section_order

container_width

sidebar_position

footer_wave

animation

---

# Slider

Structure

Slider

↓

Slides

↓

Content

↓

Button

↓

Background

↓

Animation

---

# Slide Object

id

title

subtitle

description

image

button_text

button_url

overlay

animation

priority

status

publish_date

expire_date

created_at

updated_at

---

JSON

{
"id":1,
"title":"Welcome",
"subtitle":"Academic Journal",
"image":"hero.jpg"
}

---

# Sidebar

position

sticky

width

gap

widgets

---

# Widget

Each widget has

id

title

type

priority

status

config

permission

---

Widget JSON

{
"id":"latestArticles",
"enabled":true,
"priority":3
}

---

# Partner

id

name

logo

url

priority

status

target

---

Partner JSON

{
"name":"DOAJ",
"url":"https://doaj.org",
"logo":"doaj.svg"
}

---

# Statistics

enabled

animation

items

speed

---

Statistics Item

Articles

Issues

Authors

Editors

Reviewers

Downloads

Visitors

Countries

---

# Footer

columns

about

links

policy

contact

copyright

social

---

# Typography

font

heading

body

size

line_height

weight

letter_spacing

---

# Color Preset

preset

primary

secondary

accent

background

surface

border

success

warning

danger

---

# SEO

title

description

keywords

canonical

schema

twitter

opengraph

google_verification

bing_verification

robots

---

# Social

facebook

instagram

x

youtube

linkedin

researchgate

google_scholar

orcid

telegram

whatsapp

email

phone

address

maps

---

# Performance

lazyload

critical_css

minify_css

minify_js

defer_js

font_preload

image_preload

cache

---

# Backup

Every backup contains

settings

widgets

homepage

slider

partner

statistics

seo

social

theme

version

date

---

# Export

Supported

JSON

ZIP

---

# Import

Validate Version

↓

Validate Schema

↓

Import

↓

Clear Cache

↓

Reload Theme

---

# Cache Strategy

Theme Settings

↓

Memory

↓

JSON Cache

↓

Smarty Cache

↓

Browser Cache

---

# Upgrade Strategy

Version Compare

↓

Migration

↓

Backup

↓

Apply New Setting

↓

Reload Cache

---

# Validation

All uploaded image

png

svg

webp

jpg

jpeg

---

Maximum Image

5 MB

---

Maximum Slider

Unlimited

---

Maximum Widget

Unlimited

---

Maximum Partner

Unlimited

---

# Security

Escape Output

Sanitize Input

CSRF

Validate Upload

Validate URL

Validate JSON

No Inline Script

No Eval

---

# Future

Cloud Backup

Theme Marketplace

Preset Marketplace

Widget Marketplace

Live Preview

AI Theme Assistant
