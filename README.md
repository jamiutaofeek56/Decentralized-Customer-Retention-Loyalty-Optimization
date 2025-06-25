# Decentralized Customer Retention Loyalty Optimization

A blockchain-based system for managing customer retention and loyalty programs using Clarity smart contracts.

## Overview

This system provides decentralized customer retention management through five core contracts:

- **Retention Manager Verification**: Validates and manages retention managers
- **Churn Prediction**: Simple churn risk assessment
- **Intervention Planning**: Plans and tracks retention interventions
- **Loyalty Program**: Manages customer loyalty points and rewards
- **Success Measurement**: Tracks retention metrics and success rates

## Contracts

### 1. Retention Manager Contract
\`\`\`
contracts/retention-manager.clar
\`\`\`
Manages authorized retention managers who can access the system.

### 2. Churn Prediction Contract
\`\`\`
contracts/churn-prediction.clar
\`\`\`
Assesses customer churn risk based on simple metrics.

### 3. Intervention Planning Contract
\`\`\`
contracts/intervention-planning.clar
\`\`\`
Creates and manages retention intervention plans.

### 4. Loyalty Program Contract
\`\`\`
contracts/loyalty-program.clar
\`\`\`
Handles customer loyalty points and reward distribution.

### 5. Success Measurement Contract
\`\`\`
contracts/success-measurement.clar
\`\`\`
Tracks and measures retention success metrics.

## Installation

1. Clone the repository
2. Install dependencies: \`npm install\`
3. Run tests: \`npm test\`

## Usage

Deploy contracts to Stacks blockchain and interact through the provided interfaces.

## Testing

Tests are written using Vitest and can be run with:
\`\`\`
npm test
\`\`\`
