# 🏗️ System Components & What Opens When App Starts

## **COMPLETE SYSTEM ARCHITECTURE**

When you open the application, here's what starts and runs:

---

## 📱 **FRONTEND COMPONENTS (What User Sees)**

### **1. Streamlit Web Interface**
**Port**: 8501  
**URL**: http://localhost:8501  
**Opens**: Browser window with interactive UI

```
┌─────────────────────────────────────────────┐
│   Agentic AI Loan Approval System           │
├─────────────────────────────────────────────┤
│                                             │
│  📝 Single Application  📊 Batch  📈 Analytics │
│                                             │
│  ┌─────────────────────────────────────┐   │
│  │  Form Fields:                       │   │
│  │  • Age                              │   │
│  │  • Income                           │   │
│  │  • Employment Type                  │   │
│  │  • Credit Score                     │   │
│  │  • Loan Amount                      │   │
│  │  • Tenure                           │   │
│  │  • Liabilities                      │   │
│  │  • Location                         │   │
│  │                                     │   │
│  │  [🚀 Analyze Application]          │   │
│  └─────────────────────────────────────┘   │
│                                             │
└─────────────────────────────────────────────┘
```

**Components that Open:**
- ✅ Title and header
- ✅ 3 navigation tabs
- ✅ Form with 8 input fields
- ✅ Submit button
- ✅ Sidebar configuration
- ✅ Footer with credits

---

## 🔌 **BACKEND COMPONENTS (Runs in Background)**

### **2. FastAPI Service**
**Port**: 8000  
**Status**: Running in background  
**URL**: http://localhost:8000

```
┌─────────────────────────────────────────┐
│         FastAPI Service                 │
├─────────────────────────────────────────┤
│                                         │
│  Endpoints Available:                   │
│  • GET /health                          │
│  • POST /analyze_loan_application       │
│  • POST /batch_analyze                  │
│  • GET /statistics                      │
│  • GET /docs (Swagger UI)               │
│                                         │
│  Status: RUNNING ✅                     │
│  Port: 8000                             │
│                                         │
└─────────────────────────────────────────┘
```

**Components:**
- ✅ HTTP Server (Uvicorn)
- ✅ API Endpoints
- ✅ Request validation
- ✅ CORS middleware
- ✅ Error handling

---

## 🧠 **AI AGENT COMPONENTS**

### **3. Four Specialized Agents**

```
┌──────────────────────────────────────────────┐
│          Multi-Agent System                  │
├──────────────────────────────────────────────┤
│                                              │
│  Agent 1: Applicant Profile Agent           │
│  ├─ Income Stability Score                  │
│  ├─ Employment Risk Assessment              │
│  ├─ Credit History Summary                  │
│  └─ Completeness Check                      │
│                                              │
│  Agent 2: Financial Risk Agent              │
│  ├─ Debt-to-Income Calculation              │
│  ├─ Credit Score Risk Level                 │
│  ├─ Loan Amount Risk Assessment             │
│  └─ Anomaly Detection                       │
│                                              │
│  Agent 3: Loan Decision Agent               │
│  ├─ Risk Score Calculation (0-100)          │
│  ├─ Decision Logic (Approved/Rejected/Review)│
│  ├─ Confidence Level Assessment             │
│  └─ Reasoning Generation                    │
│                                              │
│  Agent 4: Compliance Orchestrator           │
│  ├─ Case ID Generation                      │
│  ├─ Timestamp Recording                     │
│  ├─ Audit Trail Creation                    │
│  └─ Notification Preparation                │
│                                              │
└──────────────────────────────────────────────┘
```

**All 4 agents run automatically when application is analyzed**

---

## 💾 **DATABASE COMPONENTS**

### **4. SQLite Database**
**File**: loan_applications.db  
**Location**: /home/ubuntu/Desktop/demo/

```
┌──────────────────────────────────────────┐
│      SQLite Database                     │
├──────────────────────────────────────────┤
│                                          │
│  Table: loan_applications                │
│  ├─ id (Primary Key)                     │
│  ├─ applicant_id                         │
│  ├─ age, income, employment_type         │
│  ├─ credit_score, loan_amount, tenure    │
│  ├─ existing_liabilities, location       │
│  ├─ decision, risk_score                 │
│  ├─ confidence_level, explanation        │
│  ├─ case_id, timestamp                   │
│  └─ created_at                           │
│                                          │
│  Status: Persistent ✅                   │
│  Size: ~5KB per application              │
│                                          │
└──────────────────────────────────────────┘
```

**Database Features:**
- ✅ Auto-creates on first run
- ✅ Persistent storage
- ✅ Full transaction support
- ✅ Query optimization

---

## 🎨 **UI COMPONENTS (In Each Tab)**

### **Tab 1: Single Application**
```
┌─────────────────────────────────┐
│  📝 Single Application           │
├─────────────────────────────────┤
│                                 │
│  Input Section:                 │
│  ├─ Applicant ID field         │
│  ├─ Age slider (18-80)         │
│  ├─ Income input               │
│  ├─ Employment dropdown        │
│  ├─ Credit score slider        │
│  ├─ Loan amount input          │
│  ├─ Tenure slider              │
│  ├─ Liabilities input          │
│  └─ Location input             │
│                                 │
│  [🚀 Analyze Application]      │
│                                 │
│  Result Box (After submit):     │
│  ├─ Decision (colored)         │
│  ├─ Risk Score                 │
│  ├─ Confidence Level           │
│  ├─ Case ID                    │
│  ├─ Explanation                │
│  └─ Timestamp                  │
│                                 │
└─────────────────────────────────┘
```

### **Tab 2: Batch Processing**
```
┌──────────────────────────────────┐
│  📊 Batch Processing             │
├──────────────────────────────────┤
│                                  │
│  Upload Area:                    │
│  └─ Drag & drop JSON file      │
│                                  │
│  Processing Status:              │
│  └─ Progress indicator          │
│                                  │
│  Summary Cards:                  │
│  ├─ Total Processed             │
│  ├─ Approved Count              │
│  ├─ Rejected Count              │
│  └─ Manual Review Count         │
│                                  │
│  Detailed Results:               │
│  └─ Expandable cards per app   │
│                                  │
└──────────────────────────────────┘
```

### **Tab 3: Analytics**
```
┌──────────────────────────────────┐
│  📈 Analytics                    │
├──────────────────────────────────┤
│                                  │
│  Metric Cards:                   │
│  ├─ Total Processed              │
│  ├─ Approved ✅                  │
│  ├─ Rejected ❌                  │
│  ├─ Manual Review ⚠️             │
│  ├─ Average Risk Score           │
│  └─ Approval Rate %              │
│                                  │
│  Charts:                         │
│  ├─ Risk Score Distribution      │
│  ├─ Decision Breakdown Pie      │
│  └─ Statistics Table             │
│                                  │
│  Export Options:                 │
│  ├─ Export to JSON               │
│  └─ Export to CSV                │
│                                  │
│  Application History:            │
│  └─ Expandable list of apps     │
│                                  │
└──────────────────────────────────┘
```

---

## 🔄 **DATA FLOW**

```
User Input (Streamlit UI)
        ↓
   HTTP Request
        ↓
  FastAPI Service
        ↓
  Input Validation
        ↓
  Orchestrator
        ↓
   Agent 1 (Profile)
        ↓
   Agent 2 (Financial Risk)
        ↓
   Agent 3 (Decision)
        ↓
   Agent 4 (Compliance)
        ↓
  Database Save
        ↓
   Response Object
        ↓
  HTTP Response
        ↓
  Display in UI
```

---

## 📋 **WHAT OPENS ON APP START**

### **Immediately Opens:**

1. ✅ **Streamlit Web Interface**
   - URL: http://localhost:8501
   - Browser window loads
   - 3 tabs ready
   - Form displayed

2. ✅ **FastAPI Backend Service**
   - Starts listening on port 8000
   - All endpoints available
   - Health check active
   - Ready to process requests

3. ✅ **Database Connection**
   - SQLite database initialized
   - Ready to save data
   - Tables created if needed

4. ✅ **AI Agent System**
   - All 4 agents ready
   - Waiting for application data
   - Models loaded

### **On Each Application Submission:**

1. ✅ **Decision Box** appears (in UI)
   - Green (Approved)
   - Red (Rejected)
   - Orange (Manual Review)

2. ✅ **Database Entry** created
   - Application saved
   - Decision recorded
   - Timestamp stored

3. ✅ **Analytics Update**
   - Counts increment
   - Charts refresh
   - History updates

---

## 🎯 **COMPONENT COMMUNICATION**

```
Streamlit UI
    ↕ (HTTP)
FastAPI Server
    ↕ (Function calls)
Orchestrator
    ↕ (Function calls)
4 Agents
    ↕ (Data storage)
SQLite Database
```

---

## ✅ **ALL COMPONENTS STATUS**

| Component | Status | Port | Function |
|-----------|--------|------|----------|
| Streamlit UI | ✅ Running | 8501 | Display & Input |
| FastAPI | ✅ Running | 8000 | API Endpoints |
| Agents (4) | ✅ Ready | - | Analysis |
| Database | ✅ Ready | - | Data Storage |
| Charts | ✅ Ready | - | Visualization |
| Export | ✅ Ready | - | Data Export |

---

## 🎉 **COMPLETE SYSTEM READY**

All components are working together seamlessly! 🚀

