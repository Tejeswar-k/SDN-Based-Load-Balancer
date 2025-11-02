#!/bin/bash
# SDN Load Balancer - Start RYU Controller Only

echo "╔══════════════════════════════════════════════════════════════╗"
echo "║    SDN Dynamic Load Balancer - RYU Controller Terminal      ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""
echo "📋 DEMO TERMINAL 1/3 - RYU SDN CONTROLLER"
echo ""

# Check if venv exists
if [ ! -d "venv" ]; then
    echo "❌ Virtual environment not found. Run ./install.sh first"
    exit 1
fi

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📌 STEP 1: Activating Python Virtual Environment"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "   → Loading RYU SDN framework and dependencies..."
echo ""

# Activate venv
source venv/bin/activate
sleep 1

echo "   ✅ Virtual environment activated"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📌 STEP 2: Starting RYU SDN Controller"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "   📡 Controller Role:"
echo "      • Manages network flow rules"
echo "      • Implements load balancing algorithm"
echo "      • Distributes traffic across backend servers"
echo "      • Monitors network topology and links"
echo ""
echo "   🔧 Configuration:"
echo "      • Listening on: 0.0.0.0:6653 (OpenFlow)"
echo "      • Protocol: OpenFlow 1.3"
echo "      • Application: load_balancer.py"
echo ""
echo "   📊 Real-time logs will appear below..."
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "   Press Ctrl+C to stop the controller"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
sleep 2

# Start controller (foreground so you can see logs and stop with Ctrl+C)
ryu-manager load_balancer.py
