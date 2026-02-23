---
area: Style Guide
summary: Premium dark-mode fintech SaaS with trust-first design, restrained depth, and award-winning UX standards
tags:
  - area/style_guide/frontend
type: area_note
created: 2026-02-09
connections:
  - "[[2. Style Guide]]"
  - "[[Brand Guidelines]]"
  - "[[Web and App UI]]"
---
# [[2. Style Guide]] # Frontend Style Guide v4

> Single source of truth for Prophyt Finance SaaS frontend. **Premium dark-mode fintech**: deep backgrounds, precise typography, restrained accent glows, and trust-first UX. Not cyberpunk—think **Linear meets Bloomberg**: sophisticated, calm, data-driven clarity that signals institutional credibility while remaining approachable.

---

## Quick Start by Role

**For Developers**: Jump to [Tech Stack](#tech-stack), [Components](#components--patterns), [Motion Guidelines](#motion-guidelines)

**For Designers**: Jump to [Color Palette](#color-palette), [Typography](#typography), [Layout](#layout--spacing)

**For Stakeholders**: Jump to [Product Strategy](#product-strategy--ux-direction), [Trust Elements](#trust-first-hero-section), [Brand Positioning](#design--messaging-direction)

**For Awwwards Team**: Jump to [Awwwards Rubric](#aawwards-alignment-rubric), [Creativity Constraints](#creativity-constraints)

---

## Core Philosophy

| Principle | Description |
|-----------|-------------|
| **Trust First** | Security badges, read-only promises, and "no credit card" prominent—not buried |
| **Data Drives Design** | Visuals amplify insights—prices pop, grids scan instantly |
| **Signals Orchestrate Design** | Multiple indicator types need distinct visual language, interaction models, and data density. Clutter signals confusion. Clear hierarchy = actionability. |
| **Multi-Feature Clarity** | Each signal type, research path, and execution method needs clear visual hierarchy. No generic "dashboard"—feature-specific patterns for each intelligence category. |
| **Restrained Depth** | Premium dark mode with subtle accent glows—not cyberpunk spectacle |
| **Award-Worthy Execution** | Pixel-perfect details, flawless performance, subtle creativity—Awwwards-level recognition target |
| **Performance Obsessed** | 60+ fps, <2s loads, respectful motion |
| **Dark-Native** | Light mode as user toggle only |

**Balance**: Trust with sophistication—subtle depth guides attention, restrained glows provide tactile feedback, motion enhances (never hinders) interactions.

**Inspiration**: High-end fintech (Linear, Stripe, Revolut) + premium dark-mode leaders (Arc Browser, Raycast). Prioritize **calm clarity** over visual excitement—our users seek control, not thrills.

**Aesthetic Positioning**: We're building a **wealth-building command center**, not a trading arcade. Think "Bloomberg Terminal meets Apple Design"—institutional credibility with consumer-grade polish.

**Narrative Shift**: From "DCA automation platform" → **"Trading Intelligence Platform — Signals inform every decision, execution removes emotion."** DCA becomes the hero execution feature (LadderScale) within broader intelligence ecosystem.

---

## Product Strategy & UX Direction

### User Understanding

| Aspect | Details |
|--------|---------|
| **Primary Audience** | Retail traders & semi-sophisticated investors (25-45) who understand markets but lack time/discipline for consistent execution |
| **Secondary Audience** | Crypto-native users comfortable with DCA seeking better analytics and automation |
| **Technical Comfort** | Comfortable with technology but not quant-level; no need for institutional complexity |
| **Pain Point** | Emotional trading (FOMO buys, panic sells), tedious manual DCA execution, zero visibility into strategy performance |
| **Current Behaviors** | Using spreadsheets, setting calendar reminders, or "winging it" |
| **Emotional State** | Seeking control and calm after market events (crashes or missed rallies); reactive/anxious or proactive optimizer |

**Key Insight**: Users land when markets move — they need immediate reassurance + clarity.

### User Journey Mapping

**Critical Gap**: Style guide previously assumed single DCA user journey. Product reality: 5 distinct user segments with different primary needs.

| User Segment | Size | Primary Need | Current Coverage | Gap |
|---------------|------|--------------|----------------|-----|
| **DCA Users** | 30% | DCA onboarding ✅ | Stock dashboard ❌ |
| **Signal Seekers** | 45% | Generic "dashboard" mention | Signal-specific UI ❌ |
| **Stock Researchers** | 25% | Not mentioned | Search/discovery UI ❌ |
| **Active Traders** | 15% | Not mentioned | Execution playbook ❌ |
| **Portfolio Managers** | 10% | Not mentioned | Performance analytics ❌ |

**Implication**: Single-path onboarding (DCA-Native vs. DCA-Curious) alienates 60% of users who seek signals, research, or active trading features.

### Multi-Feature Onboarding Matrix

**Philosophy**: Detect primary intent → Route to feature-specific onboarding. Support multi-intent users with feature discovery dashboard.

**User Intent Detection**:
> Question (inline, below hero CTA): "What brings you here today?"

| User Response | Route To | Primary Feature | Secondary Features |
|--------------|----------|------------------|---------------------|
| "Automate my investing" | DCA Setup Wizard | DCA dashboard, portfolio tracking, LadderScale configuration |
| "Get trading signals" | Signal Dashboard Setup | Signal type selector, alert thresholds, performance history |
| "Research stocks" | Stock Search Tutorial | Powerful search with filters, watchlist management |
| "Track my portfolio" | Portfolio Connection Guide | Brokerage API setup, performance analytics, attribution |

**Feature Discovery Dashboard** (for multi-intent users):

> Navigation hub for all feature categories with adaptive CTAs and empty state guidance.

**Layout**:
- Hero section: Feature rotation (3-featured sections cycle on hover)
- Quick stats bar: Active signals count, portfolio value, DCA progress
- Feature grid: 4-up cards for Signals, Research, Portfolio, Alerts

**Empty State Handling**:
> When users have no active features or data, guide them to highest-value actions with contextual help.

| Situation | Empty State Message | Primary CTA |
|-----------|------------------|--------------|
| No signals configured | "Set up your first signal intelligence" | Configure Signals (prominent) |
| No portfolio connected | "Connect your brokerage or upload history" | Connect Portfolio (prominent) |
| No research activity | "Explore stock research tools" | Research Stocks (prominent) |
| No alerts active | "Stay ahead with intelligent alerts" | Configure Alerts (secondary) |

**Progressive Activation Flow**:
> Don't overwhelm new users. Enable features progressively as they engage.

1. **Week 1**: DCA configuration (automatic)
2. **Week 2**: Signal discovery (suggest top 3 based on portfolio)
3. **Week 3**: Alert setup (prompt for critical signals only)
4. **Week 4**: Full feature access (unlock all dashboards)

### Multi-Feature Onboarding Matrix

**Philosophy**: Detect primary intent → Route to feature-specific onboarding. Support multi-intent users with feature discovery dashboard.

**User Intent Detection**:
> Question (inline, below hero CTA): "What brings you here today?"

| User Response | Route To | Primary Feature | Secondary Features |
|--------------|----------|------------------|---------------------|
| "Automate my investing" | DCA Setup Wizard | DCA dashboard, portfolio tracking, LadderScale configuration |
| "Get trading signals" | Signal Dashboard Setup | Signal type selector, alert thresholds, performance history |
| "Research stocks" | Stock Search Tutorial | Powerful search with filters, watchlist management |
| "Track my portfolio" | Portfolio Connection Guide | Brokerage API setup, performance analytics, attribution |

**Feature Discovery Dashboard** (for multi-intent users):

> Navigation hub for all feature categories with adaptive CTAs and empty state guidance.

**Layout**:
- Hero section: Feature rotation (3-featured sections cycle on hover)
- Quick stats bar: Active signals count, portfolio value, DCA progress
- Feature grid: 4-up cards for Signals, Research, Portfolio, Alerts

**Empty State Handling**:
> When users have no active features or data, guide them to highest-value actions with contextual help.

| Situation | Empty State Message | Primary CTA |
|-----------|------------------|--------------|
| No signals configured | "Set up your first signal intelligence" | Configure Signals (prominent) |
| No portfolio connected | "Connect your brokerage or upload history" | Connect Portfolio (prominent) |
| No research activity | "Explore stock research tools" | Research Stocks (prominent) |
| No alerts active | "Stay ahead with intelligent alerts" | Configure Alerts (secondary) |

**Progressive Activation Flow**:
> Don't overwhelm new users. Enable features progressively as they engage.

1. **Week 1**: DCA configuration (automatic)
2. **Week 2**: Signal discovery (suggest top 3 based on portfolio)
3. **Week 3**: Alert setup (prompt for critical signals only)
4. **Week 4**: Full feature access (unlock all dashboards)

---

## Alerts & Notifications System

> Proactive intelligence delivery — don't make users chase information. Push critical signals, summarize daily noise, and always provide clear next actions.

### Alert Types & UI Patterns

| Alert Type | Trigger | UI Pattern | Action Model |
|-------------|---------|-----------|--------------|
| **Signal Trigger** | WebSocket event | Compact toast + signal icon | View signal details |
| **Price Alert** | Threshold breach | Modal with chart | Update alert, dismiss, or trade |
| **Earnings Alert** | Scheduled event | Calendar card with countdown | Add to calendar, set reminder |
| **News Sentiment Spike** | Scoring anomaly | News feed highlight | Read related news |
| **Daily Digest** | Cron job (8 AM) | Expandable email summary | Key metrics, mark all read |

### Notification Preferences

**Configuration Panel**:
```yaml
Alert Channels:
  - Push notifications (browser/mobile)
  - In-app notification center
  - Email digests (daily/Weekly)
  - SMS for critical alerts (optional)

Per-Signal Settings:
  - VWAP: Grade changes, price band breaches
  - Options: Sweep flow detection, unusual volume
  - RRG: Trend shifts, sector rotation
  - Chaikin: Trend reversal, divergence
  - PolyMarket: Prediction market prices
  - Global News: Keyword matching, sentiment threshold
  - Earnings: Date/time filters, surprise alerts

Frequency Controls:
  - Real-time: Instant (default)
  - Batched: Hourly digest
  - Muted: Off (only critical)
```

### Value Proposition

**Core Promise**: "Automate your investment entries and see exactly how your strategy performs — so you stop guessing and start compounding."

**If we disappeared, users would lose**:
- Automated discipline engine
- Analytics layer (performance attribution, backtesting, timing optimization)
- **Hyper-optimization**: AI-powered DCA ladder optimization (differentiator)

**Value Triangle**:
| Dimension | Role |
|-----------|------|
| **Peace of Mind** | Sells — emotional benefit, control in chaos |
| **Automation** | Retains — removes behavioral friction |
| **Analytics** | Differentiates — proves value, validates strategy |

**Strategic Positioning**: DCA is the entry point, but the bigger narrative is "Invest smarter with data-driven discipline." We're selling an **outcome** (consistent, emotionally detached wealth building validated by data), not just a tool or strategy.

---

### Addressing Objections

| Objection | Counter-Measure |
|-----------|-----------------|
| **"Do I have to connect my brokerage?"** | Free tier: analytics-only (no connection required) |
| Fear of data access | Clear "read-only" options, security messaging above fold |
| **"Why trust this platform?"** | SOC 2 certifications, transparent team, no custody of funds, free trial for zero-risk experience |
| **Perceived risk** | "We store nothing" messaging, no custody of funds, read-only APIs |

**Trust Hierarchy**: Security (SOC 2, encryption) → Transparency (team, open about practices) → Experience value first (free tier, no credit card)

---

### Design & Messaging Direction

**Visual Identity**: Hybrid of Robinhood's approachability + Bloomberg's credibility. Think: **Linear meets Coinbase**.

**Key Characteristics**:
- Clean, modern, dark-mode-optional interface
- Sharp data visualizations signaling sophistication without intimidation
- Developed by Apple UI Engineer standards → pixel-perfect, premium feel

**Hero Section**: Animated dashboard showing DCA strategy accumulating positions over time with rising performance curve. Visual alone communicates "automated investing + performance tracking."

**Single CTA**: "Start Free — No Credit Card Required"

**Copy Framework**:
| Section | Approach |
|---------|----------|
| **Headline** | Outcome-focused, not feature-focused |
| **Supporting** | Social proof with data ("Users who DCA'd into S&P 500 outperformed 73% of active traders") |
| **Onboarding** | Two paths: fast-track for DCA-knowledgeable users, 15-second visual explainer animation for newcomers |

**Shareable Asset**: Interactive calculator: "See what would've happened if you DCA'd $100/week into [BTC/AAPL/SPY] over the last [1/3/5] years."

---

### Differentiation Strategy

| Competitor Category | Failure Mode | Our Advantage |
|---------------------|--------------|---------------|
| **Basic DCA Tools** (Coinbase, Fidelity recurring buys) | Dumb feature — set/forget with zero insight; buried in product, not standalone | Full analytics suite, performance attribution, strategy comparison, timing/level optimization |
| **Signal Providers** | Give signals, no execution guidance or analytics | End-to-end: signals → strategy planning → automation → performance validation |

**DCA is the hero feature**, not the entire story. The platform is the **intelligence layer** around investing discipline — DCA plus other tools.

**Message Hierarchy**:
1. **Outcome**: "Stop guessing, start compounding"
2. **Method**: Data-driven discipline through automation
3. **Proof**: Analytics show you're winning

---

## Stock Research & Discovery Patterns

> Stock research is about exploration, comparison, and decision support — not monitoring. Users need efficient search, clear filters, and comprehensive company overviews without cognitive overload.

### Search Interface Patterns

| Component | Pattern | Interaction Model |
|-----------|--------|------------------|
| **Search Bar** | Persistent + filters dropdown | Auto-suggest, recent searches |
| **Filter Panel** | Multi-select (sector, cap, PE ratio) | Faceted search with live count |
| **Results Grid** | Stock cards with key metrics | Infinite scroll, lazy load |
| **Quick Compare** | Select 2-4 stocks for side-by-side | Split view with metrics table |

### Company Insights Patterns

| Component | Data Density | Visual Treatment |
|-----------|-------------|-------------------|
| **Overview Card** | High | PE ratio, market cap, revenue summary (prominent) |
| **Financials Table** | Very High | Income statement, balance sheet (expandable) |
| **Analyst Ratings** | Medium | Buy/hold/neutral ratings with firm links |
| **Earnings Timeline** | Low | Date-based vertical timeline with surprise badges |
| **News Sentiment** | Medium | Score ticker with color-coded sentiment |
| **Filings Viewer** | High | Table-based 10-K/Q/K filings with search |

### Discovery Features

**Feature**: "Powerful Search" — intelligent stock finding system

```yaml
Search Capabilities:
  - Symbol search with fuzzy matching
  - Industry filtering (11 GICS sectors)
  - Market cap bracketing (mega/large/mid/small)
  - Performance sorting (1D, 5D, 1M)
  - PE ratio range filtering
  - Dividend yield filtering

UX Pattern:
  - Search-as-you-type (instant results <300ms)
  - Filter counts update live
  - Save searches to watchlists
  - Batch compare (select multiple for table view)
```

---

## Real-Time Data Architecture

> Trading signals arrive via webhooks continuously. Portfolio positions update live. Stock prices move in real-time. UI must feel alive — not static. Speed of updates = trust in data accuracy.

### WebSocket Connection Management

| State | Visual Indicator | UX Pattern |
|--------|---------------|-------------|
| **Connecting** | Spinner with "Establishing secure connection..." | Disable interactions, show progress |
| **Connected** | Solid green dot/pulse on badge | Allow manual disconnect |
| **Disconnected** | Warning badge with "Reconnecting in 10s..." | Auto-reconnect with exponential backoff |
| **Failed** | Error state with retry button | Offer support link |

### Optimistic UI Updates

**Principle**: Show data before API confirms — optimistic updates rollback on conflict.

| Data Type | Optimistic Strategy | Rollback Condition |
|-----------|----------------|-------------------|
| **New Signal Arrival** | Flash signal card +1 counter | Webhook confirms → replace flash with permanent card |
| **Portfolio Update** | Show new position immediately | API confirms → remove optimistic loader |
| **Price Movement** | Update price inline (no reload) | WebSocket price push → direct DOM update |
| **Execution Fill** | Checkmark on order button | Brokerage API confirms → fill changes solid |

### Loading & Skeleton States

| Component | Skeleton Pattern | Real Trigger |
|-----------|----------------|--------------|
| **Signal Dashboard** | Card outlines pulsing | Webhook data arrives (<500ms) |
| **Stock Table** | Row placeholders with shimmer | Historical data fetch (scroll-based) |
| **Portfolio List** | Card rectangles with spacing | Position data loads |

## Tech Stack

```yaml
Framework: Next.js 14+ (App Router)
State Management: Zustand (client) + Server State (WebSocket)
Real-Time:
  - Socket.io (WebSocket connections)
  - SWR (Stale-While-Revalidate) for live updates
  - React Query for optimistic updates
Styling: Tailwind CSS + CSS variables
Components: Shadcn/UI + Radix Primitives
Motion: Framer Motion (primary), React Three Fiber (isolated ambient effects only)
Icons: Lucide Icons
Real-Time Libraries:
  - Socket.io Client (WebSocket)
  - Recharts (live data viz)
  - React-Use-Konami (streaming data utilities)

Tools: Storybook + Figma
```
```

### Conversion & Trust Elements

**Social Proof Stack**:
1. Performance comparison data (quantitative validation)
2. Behavioral change testimonials (qualitative validation)
3. User count / assets automated (social proof momentum)

**Trust Signals Above Fold**:
- "No credit card required" prominent
- Security certifications visible
- Read-only API options clear
- Free tier emphasized

**Educational Content**:
- 15-second DCA explainer animation (visual: how DCA smooths volatility vs. lump sum)
- Interactive calculator (shareable results drive virality)
- Glossary of terms (optional expand for new investors)

---

## Trust-First Hero Section

**Critical Principle**: Above-the-fold must answer "Can I trust this?" before "What does this do?" Users arrive anxious—address security immediately.

### Hero Layout Wireframe

```
┌─────────────────────────────────────────────────────────────┐
│  [Logo]          SOC 2 🔒    Read-Only APIs    No CC Required│
├─────────────────────────────────────────────────────────────┤
│                                                               │
│  Stop Guessing. Start Compounding.                            │
│  ↳ Automate DCA strategies with real analytics               │
│                                                               │
│  [Animated Dashboard Preview]                                 │
│  Shows: Portfolio accumulation + performance curve            │
│  Overlay: "Your DCA outperformed 73% of active traders"      │
│                                                               │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐       │
│  │Track Free    │  │Connect Optional│ │Start Free →  │       │
│  │No signup     │  │Read-only API  │  │No credit card│       │
│  └──────────────┘  └──────────────┘  └──────────────┘       │
│                                                               │
└─────────────────────────────────────────────────────────────┘
```

### Trust Badge Specifications

| Element | Placement | Visual Treatment |
|---------|-----------|------------------|
| **SOC 2 Badge** | Top-right, always visible | Subtle checkmark icon, muted green (#00ff88) |
| **Read-Only API** | Below CTA buttons | Lock icon + "We never touch your funds" |
| **No Credit Card** | Primary CTA subtext | Prominent, same size as CTA |
| **Security Icons** | Bottom hero area | 256-bit encryption, SOC 2, read-only (3 icons, horizontal) |

### Copy Hierarchy (Hero)

1. **Headline** (H1, 48-56px): "Stop Guessing. Start Compounding."
2. **Subheadline** (18-20px, muted): "Automate DCA strategies with real analytics—not blind recurring buys."
3. **Social Proof** (below subhead, accent color): "Users who DCA'd into S&P 500 outperformed 73% of active traders"
4. **Primary CTA**: "Start Free" (large, accent-primary)
5. **CTA Subtext** (14px, prominent): "No credit card required • Cancel anytime"

### Anti-Patterns to Avoid

❌ **Don't**: Bury trust badges in footer or separate "Security" page
❌ **Don't**: Make users click to learn about security
❌ **Don't**: Use "Connect brokerage" as primary CTA (feels invasive)
❌ **Don't**: Show complex UI before explaining value

---

## Onboarding UX Flows

**Principle**: Two distinct paths based on DCA familiarity. Detect and route in first 10 seconds.

### Flow Decision Tree

```
User Lands → DCA Knowledge Question → Route
                    ↓
         ┌──────────┴──────────┐
         ↓                     ↓
    DCA-Native            DCA-Curious
   (Skip explainer)      (15s animation first)
         ↓                     ↓
    Fast-track to       Interactive calculator
    portfolio setup      → See what you missed
         ↓                     ↓
    Dashboard (2 min)    Dashboard (3 min)
```

### Path A: DCA-Native (Fast-Track)

**Target**: Users who say "I know DCA, show me the analytics"

**UX Flow**:
1. **Hero CTA**: "Skip to Dashboard" (secondary button, muted)
2. **Landing Page**: Minimal—value prop + single "Connect Portfolio" CTA
3. **Setup Wizard**:
   - Step 1: Select assets (BTC, ETH, SPY, etc.) - multi-select with search
   - Step 2: Import historical trades (CSV or API) - skip if starting fresh
   - Step 3: Set DCA parameters (amount, frequency) - pre-filled with defaults
   - Step 4: Dashboard preview - show immediate insights

**Time to Value**: <2 minutes

**Copy Tone**: Direct, efficient, zero fluff
- Headline: "Connect your portfolio. See your DCA performance."
- Buttons: "Skip tour," "Set up later," "Go to dashboard"

---

### Path B: DCA-Curious (Educational)

**Target**: Users who say "What's DCA?" or "I don't get it"

**UX Flow**:
1. **Hero CTA**: "Show me how it works" (secondary button)
2. **Explainer Modal** (15-second animated loop):
   - **Visual**: Side-by-side comparison
     - Left: Lump sum investor (one big purchase, ride volatility rollercoaster)
     - Right: DCA investor (steady purchases, smooth line upward)
   - **Overlay text** (timed with animation):
     - "Lump sum: Buy at $50k → Watch it drop to $30k 😱"
     - "DCA: Buy $500/month → Average cost smooths out 😌"
     - "Result: DCA investor wins 73% of the time"
   - **CTA**: "See what would've happened if you DCA'd [asset]"

3. **Interactive Calculator** (shareable results):
   - Input: Asset selector (BTC, ETH, SPY, AAPL, custom)
   - Input: Amount ($50, $100, $500/week)
   - Input: Timeframe (1, 3, 5 years)
   - Output: "You'd have [X] vs. lump sum [Y]" (win/loss highlighted)
   - **Share button**: "Share this result" → generates card image for social

4. **Transition to Dashboard**: "Ready to start your DCA journey?"

**Time to Value**: 3-5 minutes (including play time)

**Copy Tone**: Educational, encouraging, no jargon
- Headlines: "What if you never mistimed the market?" / "See the power of consistency"
- Microcopy: "Watch how DCA smooths out the bumps" / "Your results may vary"

---

### Adaptive Routing Logic

**Trigger Question** (inline, below hero CTA):
> "How familiar are you with Dollar Cost Averaging (DCA)?"

**Options**:
1. **"I use it already"** → Route to Path A (DCA-Native)
2. **"I've heard of it"** → Route to Path B (DCA-Curious)
3. **"What's DCA?"** → Route to Path B (DCA-Curious, with explainer first)

**Technical Implementation**:
- Store preference in localStorage (`dca_familiarity: native|curious|newcomer`)
- Skip question on return visits if preference exists
- A/B test both paths to optimize conversion

---

## Creativity Constraints

**Principle**: Creativity serves clarity—not the other way around. Award judges ≠ our users. We optimize for trust, not spectacle.

### What We DON'T Do

| Anti-Pattern | Why It Harms Trust |
|--------------|-------------------|
| **Cursor trails / particle effects** | Feels gamey, not financial |
| **Aggressive neon everywhere** | Signals volatility/crypto gambling |
| **Cyberpunk aesthetic** | Attracts thrill-seekers, not wealth-builders |
| **Heavy motion / page transitions** | Slows users down, feels flash-over-substance |
| **Generic dashboard copycats** | Doesn't differentiate, lacks unique value |

### What We DO Instead

| Pattern | Implementation | User Benefit |
|---------|----------------|--------------|
| **Subtle ambient depth** | Slow noise texture in hero background (5% opacity) | Premium feel without distraction |
| **Strategic accent glows** | Hover states on key CTAs and positive metrics | Guides attention to what matters |
| **Data-viz storytelling** | Animated DCA comparison curve (lump sum vs. DCA) | Educates and differentiates |
| **Micro-interactions** | Success state checkmarks, smooth number transitions | Delight without overwhelming |
| **Restraint in color** | 80% dark/muted, 15% data visualization, 5% accent pops | Calm, focused, trustworthy |

### Awwwards Optimization (Trust-Aware)

Updated rubric that prioritizes **user trust** over judge creativity:

| Criteria | Original Target | Trust-Aware Target | How We Achieve It |
|----------|-----------------|-------------------|-------------------|
| **Design** | 8.5+ | 8.5+ (same) | Pixel-perfect, restrained palette, institutional credibility |
| **UX/UI** | 9.0+ | **9.5+** (raised) | Trust signals prominent, two-path onboarding, accessibility AAA |
| **Creativity** | 8.0+ | **7.5+** (lowered) | Unique data viz (DCA curves), subtle ambient depth—**no spectacle** |
| **Content** | 8.0+ | **8.5+** (raised) | Clear outcome-focused copy, social proof, educational value |

**Key Insight**: We're optimizing for **Site of the Day** potential through UX excellence (9.5+), not creativity stunts. Think Linear's debut—refined, restrained, revolutionary through **subtraction**, not addition.

---

## Tech Stack

```yaml
Framework: Next.js 14+ (App Router)
Styling: Tailwind CSS + CSS variables
Components: Shadcn/UI + Radix Primitives
Motion: Framer Motion (primary), React Three Fiber (isolated ambient effects only)
Icons: Lucide Icons
Tools: Storybook + Figma
```

---

## Color Palette

Deep cosmic backgrounds with electric neon accents for gains/CTAs and soft glows for depth.

```css
:root {
  --bg-primary: #0a0e14;     /* Canvas */
  --bg-secondary: #12171f;   /* Cards/surfaces */
  --bg-tertiary: #1a2332;     /* Panels/sidebars */
  --accent-primary: #00ff88; /* Gains/success */
  --accent-secondary: #00d4ff; /* Info/highlights */
  --accent-danger: #ff3366;   /* Losses/errors */
  --accent-warning: #ffd60a;  /* Alerts */
  --text-primary: #e6edf3;    /* Headings/body */
  --text-secondary: #8b949e; /* Labels */
  --text-muted: #4d5761;     /* Hints */
  --border: rgba(255, 255, 255, 0.08); /* Dividers */
  --glow: rgba(0, 255, 136, 0.15);     /* Hover/focus */
}
```

### Usage Guidelines
- Use `--accent-primary` aggressively but selectively (key metrics, CTAs)
- Glows on hover/active states for "energy field" feel
- Extend in Tailwind config for semantic classes

---

## Typography

**Font**: Bricolage Grotesque (variable neo-grotesque)

```html
<link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,200..800&display=swap" rel="stylesheet">
```

**Why**: Geometric clarity with modern edge, excellent for data-dense screens.

### Scale & Rules

| Element | Weight | Notes |
|---------|--------|-------|
| **Headings** | 600–800 | Larger opsz for display |
| **Body** | 400–500 | 1rem base |
| **Metrics** | 500–600 | Tabular nums mandatory |
| **Line Height** | 1.5–1.65 | Max 75ch width |

---

## Layout & Spacing

```yaml
Max-width: 1600px with responsive padding
Grid: 12-column
Spacing: 8px-based system
Tables: High-density default, comfort toggle
Mobile: Stack layout, 48px+ touch targets
```

---

## Components & Patterns

Shadcn/UI base with custom cyberpunk enhancements.

| Component | Styles | Motion/Interaction |
|-----------|--------|-------------------|
| **Button** | Accent-primary, rounded-lg | Glow + spring scale |
| **Card** | Bg-secondary, subtle border | Hover lift + glow |
| **Table/Grid** | Striped tertiary/30 | Staggered rows, rotating arrows |
| **Input** | Bottom border, focus glow | Float labels, subtle error shake |
| **Progress** | Accent fill + glow | Ease-out fill animation |

---

## Motion Guidelines

- Subtle springs/glows for feedback
- R3F only for ambient hero (slow noise/particles)
- Respect `prefers-reduced-motion`
- Performance budgets: INP <100ms, FCP <2s

---

## Awwwards Alignment Rubric

**Target**: 8.0+ overall (Honorable Mention threshold; SOTD often 8.5+)

### Criteria Breakdown (Trust-Aware)

| Criteria | Weight | Target | How We Achieve It |
|----------|--------|--------|------------------|
| **Design** | 40% | 8.5+ | Pixel-perfect alignment, restrained dark palette with strategic accents, flawless typography hierarchy for data density |
| **UX/UI** | 30% | **9.5+** | Trust signals prominent, two-path onboarding, intuitive flows (<3 clicks to dashboard), mobile excellence, accessibility AAA, Lighthouse 98+ |
| **Creativity** | 20% | 7.5+ | Unique data viz (DCA comparison curves, performance attribution), subtle ambient depth (hero background texture)—**no spectacle effects** |
| **Content** | 10% | **8.5+** | Outcome-focused copy ("Stop guessing, start compounding"), social proof with data, educational value in onboarding |

### Winning Strategy: Subtraction Over Addition

**Reference Model**: Linear's Awwwards debut won SOTD through **restraint**, not effects:
- Calm, dark-mode aesthetic
- Subtle micro-interactions
- Pixel-perfect execution
- Zero spectacle (no particles, trails, heavy motion)

**Our Approach**: Same philosophy, applied to fintech:
- ✅ Unique value = DCA analytics visualization (not effects)
- ✅ Differentiation = Trust-first UX (not cyberpunk aesthetic)
- ✅ Creativity = Educational storytelling (not visual noise)

### Anti-Patterns to Avoid

| Pattern | Example | Why It Fails |
|---------|---------|--------------|
| **Cyberpunk overkill** | Neon everywhere, glitch effects, "TRON" vibes | Signals volatility, not stability; attracts gamblers, not investors |
| **Heavy motion** | Page transitions, loading animations, scroll parallax | Slows time-to-value; feels like marketing, not utility |
| **Cursor effects** | Trails, custom cursors, particle following | Distracts from data; feels gamey |
| **Generic dashboard** | Bootstrap admin clone, dark mode with blue accents | Doesn't differentiate; judges mark as "template work" |

### Proven Winners to Study

| Site | What to Learn | Application |
|------|---------------|-------------|
| **Linear** | Restrained depth, micro-animations, premium dark mode | Our aesthetic foundation |
| **Arc Browser** | Sidebar navigation, density toggles, command palette | UX patterns for power users |
| **Stripe** | Trust signals, progressive disclosure, animated data flows | Onboarding flow inspiration |
| **Contiant Open Banking** | Clean fintech aesthetic, motion with purpose | Data visualization techniques |
| **Raycast** | Documentation, shortcuts, keyboard-first design | Power user UX patterns |

### Submission Checklist

Before submitting to Awwwards, verify:

- [ ] **Trust signals prominent** (SOC 2, read-only APIs, no credit card) in first 3 seconds
- [ ] **Two-path onboarding** works (native vs. curious routes detect and adapt)
- [ ] **Interactive calculator** is shareable and generates result cards
- [ ] **Performance**: Lighthouse 98+, INP <100ms, FCP <1.5s
- [ ] **Accessibility**: WCAG AAA, keyboard navigation, screen reader tested
- [ ] **Mobile**: Flawless responsive, touch targets 48px+, no horizontal scroll
- [ ] **Case study prepared**: 2-3 min video showing UX flows, data viz, trust elements
- [ ] **"Nominee" ribbon** ready to add post-submission (converts social proof)

**Inspiration Sources**: Awwwards SOTD in fintech, Mobbin (SaaS patterns), Godly, Refero

---

## Accessibility & Performance

```yaml
Accessibility: WCAG AAA minimum (raised from AA)
Motion: Global reduced-motion support, no auto-playing videos
Performance Budgets:
  - INP: <100ms (interaction to next paint)
  - FCP: <1.5s (first contentful paint, tightened from 2s)
  - LCP: <2.5s (largest contentful paint)
  - Lighthouse: 98+ (raised from 95)
  - Bundle size: <500KB initial, <2MB total
```

**Why AAA vs AA**: Our target audience (semi-sophisticated investors) expects professional-grade tools. AAA signals institutional credibility and technical excellence.

---

## Success Metrics & KPIs

**Principle**: We optimize for user trust and conversion—not award validation. Awards are a byproduct of excellence, not the goal.

### North Star Metrics

| Metric | Target | Why It Matters |
|--------|--------|----------------|
| **Free-to-Paid Conversion** | 8-12% | Validates trust-building works |
| **Time to First Dashboard** | <90 seconds | Measures onboarding friction |
| **Trust Signal Engagement** | >60% notice badges | Confirms security messaging lands |
| **Calculator Share Rate** | >25% of users | Virality mechanism for growth |
| **DCA-Native vs. Curious Split** | Track weekly | Optimizes two-path routing |

### Leading Indicators (Weekly)

- **Hero CTA click-through rate** (benchmark: 4-6% for fintech)
- **Onboarding completion rate** (target: >75% for free tier)
- **Trust badge hover/click rate** (measure awareness)
- **Calculator to signup conversion** (target: >30%)
- **Return visitor rate** (indicates perceived value)

### Lagging Indicators (Monthly)

- **Organic traffic growth** (calculator shares drive SEO)
- **Referral rate** (shareable calculator results)
- **Customer acquisition cost (CAC)** (free tier lowers this)
- **Net promoter score (NPS)** (target: >50 for B2C SaaS)

### Awwwards Validation (Optional)

If we pursue Awwwards submission, these metrics predict success:

| Validation Method | Target |
|-------------------|--------|
| **Lighthouse Score** | 98+ overall |
| **Accessibility Audit** | Zero AAA violations |
| **Mobile Performance** | 95+ PageSpeed Insights |
| **User Testing (5 users)** | <3 clicks to dashboard, 100% task completion |
| **Peer Review (2 designers)** | "Trust-first aesthetic" confirmed |

**Note**: Only submit if all north star metrics are healthy. Awards without users = vanity.

---

## Evolution & Governance

> This guide evolves—align all work here. We're building not just a tool, but an **institutional-grade wealth-building platform** that earns trust through restraint and clarity.

### Update Process

1. **Weekly**: Design team reviews new patterns against principles
2. **Monthly**: Update success metrics based on real user data
3. **Quarterly**: Audit Awwwards rubric against industry benchmarks
4. **Semi-annually**: Full design system refresh with stakeholder input

### Governance

- **Design lead**: Approves all new components/patterns
- **Engineering lead**: Validates performance budgets before merge
- **Product lead**: Ensures trust signals remain prominent
- **No exceptions**: "Just this once" creates debt—adhere to principles

### When to Break Rules

**Rare, documented exceptions only**:
- A/B testing new patterns (measure, then decide)
- User research validates direction change (data-driven)
- Competitive landscape shifts (strategic response)

**Process for exceptions**:
1. Document rationale in commit message
2. Create tracking issue for follow-up
3. Set review deadline (usually 2-4 weeks)
4. Roll back if metrics don't improve

---

## Design System Checklist

Before shipping any feature, verify:

### Trust Signals
- [ ] Security badges visible (SOC 2, read-only, no CC)
- [ ] "Start Free" CTA prominent (no wall before value)
- [ ] Educational content accessible (explainer, calculator)
- [ ] Error messages reassuring (not scary)

### Visual Consistency
- [ ] Color palette followed (80/15/5 rule: dark/data/accents)
- [ ] Typography hierarchy correct (headings, body, metrics)
- [ ] Spacing system used (8px grid)
- [ ] Motion respectful (no spectacle effects)

### UX Excellence
- [ ] Time to value <90 seconds
- [ ] Two-path onboarding tested (native vs. curious)
- [ ] Mobile responsive verified (48px+ touch targets)
- [ ] Accessibility checked (keyboard nav, screen reader)

### Performance
- [ ] Lighthouse 98+
- [ ] Bundle size under limits
- [ ] Motion reduced with `prefers-reduced-motion`
- [ ] No layout shifts (CLS <0.1)

---

## Related Notes

- [[Brand Guidelines]] - Visual identity and logo usage
- [[Web and App UI]] - Component patterns and layouts
- [[Email Templates]] - Transactional email styling
- [[System Overview]] - Product architecture and data flows
