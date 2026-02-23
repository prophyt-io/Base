# How Grid Visualization Works

## Overview

The Grid Visualization is an auto-animated trading chart that demonstrates Prophyt's DCA (Dollar Cost Averaging) ladder concept. It runs in a continuous loop without user interaction, showing how price moves through buy levels, accumulates a position, then exits at a profit.

**File:** `Waitlist.html` - AutoGridViz class (lines ~5885-6250)

---

## Visual Components

### 1. Canvas Chart
- **Container:** `.grid-viz-container` (384px height)
- **Canvas element:** `#gridViz`
- **Renders:** Candlestick chart with buy levels, AVG line, EXIT line, and price axis

### 2. Particles
- **Container:** `#gridVizParticles`
- **Shows:** Green "▲ +shares" particles when buys execute
- **Animation:** Floats upward and fades out over 1 second

### 3. Notification Popup
- **Shows:** Profit amount when exit triggers
- **Style:** Green background, centered, scales in/out

### 4. Indicator Badge
- **Text:** "● AUTO" (top-right corner)
- **Style:** Pulsing animation

---

## Phase System

The visualization uses a 3-phase state machine:

```
┌─────────┐    10 candles     ┌────────────┐    All buys     ┌──────┐
│ Sideways │ ───────────────► │ Accumulate │ ───────────────► │ Exit │
└─────────┘                   └────────────┘                  └──────┘
      ▲                                                             │
      │                    Exit triggers                            │
      └─────────────────────────────────────────────────────────────┘
```

### Phase 1: Sideways
- **Duration:** 10 candles
- **Target Price:** $100 (reference price)
- **Purpose:** User sees chart start fresh without any position
- **Behavior:** Small random candles around $100, no directional movement

### Phase 2: Accumulate
- **Duration:** Until all 4 buy levels are filled
- **Target Price:** Sequential buy levels ($96 → $94 → $92 → $90)
- **Purpose:** Demonstrate DCA ladder buying
- **Behavior:** Candles trend downward through buy levels, buys execute when candle low touches level

### Phase 3: Exit
- **Duration:** Until candle high touches exit price
- **Target Price:** $100 (fixed reference price)
- **Purpose:** Show profit realization
- **Behavior:** Aggressive upward movement, then cycle restarts

---

## Trading Logic

### Buy Levels
```javascript
this.buyLevels = [96, 94, 92, 90]; // 4 levels, $2 spacing
```

### Buy Execution
- **Trigger:** `candle.low <= buyLevel`
- **Tracking:** `filledLevels` Set prevents duplicate buys
- **Investment:** Pyramiding strategy (each level invests more)

| Level | Price | Investment | Multiplier |
|-------|-------|------------|------------|
| 1 | $96 | $500 | 0x |
| 2 | $94 | $1,000 | 1x |
| 3 | $92 | $1,500 | 2x |
| 4 | $90 | $2,000 | 3x |

### Exit Calculation
```javascript
this.exitPrice = 100; // Fixed at reference price
```
- Exit is fixed at $100 regardless of average entry
- After all 4 buys, AVG ≈ $92, giving ~$8 profit margin
- This prevents immediate re-entry after fills

---

## Candle Generation

### Two-Tier System

**Small Noise Candles (80% normally, 50% during exit):**
- Body size: 0.1-0.3 price units
- Direction: Random (50/50) or biased green during exit (70%)
- Purpose: Natural-looking sideways movement

**Big Directional Candles (20% normally, 50% during exit):**
- Body size: 0.8-1.5 normally, 1.2-2.2 during exit
- Direction: Toward target price
- Purpose: Actually hit buy/exit levels

### Exit Phase Aggression
During exit phase, candles are much more aggressive:
- 50% big candles (vs 20%)
- Larger bodies (1.2-2.2 vs 0.8-1.5)
- 70% green small candles (vs 50%)
- Larger upper wicks (2.0 vs 1.5)
- Smaller lower wicks (50% of normal)

---

## Spring Animation

Price movement uses spring physics for smooth visuals:

```javascript
this.springFactor = 0.35;
this.currentPrice += (this.targetPrice - this.currentPrice) * this.springFactor;
```

- `targetPrice` is set by phase logic
- `currentPrice` smoothly animates toward target
- At 0.35 factor: ~8 frames to reach target

---

## Key Parameters

| Parameter | Value | Purpose |
|-----------|-------|---------|
| `candleInterval` | 135ms | Time between new candles |
| `springFactor` | 0.35 | Speed of price animation |
| `sidewaysCandleTarget` | 10 | Candles before accumulate phase |
| `referencePrice` | $100 | Starting/exit reference |
| `gridSpacing` | $2 | Space between buy levels |

---

## Methods Reference

### `resetForNewCycle()`
Full reset - clears everything, starts fresh at $100

### `resetPositionForNextCycle()`
Partial reset - clears position but keeps candles flowing, used after exit

### `generateInitialCandles()`
Creates initial sideways candles around $100 with small wicks

### `generateRandomCandle(prevClose)`
Creates a new candle with appropriate size/direction based on phase

### `runAutoPlayScript()`
State machine that sets target price based on current phase

### `checkCandleForTrades(candle)`
Checks if candle triggers buys or exit

### `executeBuy(price)`
Handles buy execution with pyramiding, particles, and exit calculation

### `executeExit()`
Handles exit execution, shows notification, triggers next cycle

---

## CSS Classes

```css
.grid-viz-container   /* Main container, 384px height */
.grid-notification    /* Profit popup */
.particle             /* Buy indicator particles */
```

---

## Common Issues & Solutions

### Price starts at buy level instead of $100
- Check `targetPrice` is set to 100, not 96
- Check `phase` starts as 'sideways', not 'accumulate'
- Check `sidewaysCandleCount` is reset to 0

### Exit triggers immediately after buys
- Exit should be fixed at $100, not percentage-based
- With AVG ≈ $92, exit at $100 gives plenty of room

### Too many red/green candles in a row
- Adjust big candle chance and small candle bias
- Check phase-specific logic in `generateRandomCandle()`

### Price doesn't reach buy levels
- Ensure wick range is large enough (1.5+)
- Check that big candles have sufficient body size

---

## File Structure

```
Waitlist.html
├── CSS (lines ~1909-1998)
│   ├── .grid-viz-container
│   ├── .particle
│   └── .grid-notification
│
├── HTML (lines ~3505-3512)
│   └── .grid-viz-container > canvas + particles
│
└── JavaScript (lines ~5885-6250)
    └── class AutoGridViz
        ├── Constructor & State
        ├── resetForNewCycle()
        ├── resetPositionForNextCycle()
        ├── generateInitialCandles()
        ├── generateRandomCandle()
        ├── update()
        ├── runAutoPlayScript()
        ├── checkCandleForTrades()
        ├── executeBuy()
        ├── executeExit()
        └── draw() methods
```
