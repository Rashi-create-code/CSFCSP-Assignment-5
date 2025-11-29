#!/bin/bash

# Script Name: create_cloud_structure.sh
# Purpose: Automate the creation of a standardized directory structure
# for a cloud computing career path, including learning, projects, and job hunting.

# Define the name of the main career planning directory.
# We append the current date (YearMonthDay) to ensure uniqueness on every run.
BASE_DIR="Cloud_Career_Plan_$(date +%Y%m%d)"

echo "--- Starting Automated Directory Setup ---"
echo "Creating base directory: $BASE_DIR"

# The 'mkdir -p' command is used to create the parent directory and 
# all sub-directories in one command. This is robust and prevents errors.

# 1. Certification and Learning Materials
echo "Setting up Certification & Learning structure..."
mkdir -p "$BASE_DIR/Certifications/AWS_CCP_Material"
mkdir -p "$BASE_DIR/Certifications/AZ_900_Material"
mkdir -p "$BASE_DIR/Learning_Resources/Scripts_IaC"

# 2. Project Portfolio
echo "Setting up Project Portfolio structure..."
mkdir -p "$BASE_DIR/Projects/Cloud_Deployed_Web_App"
mkdir -p "$BASE_DIR/Projects/DevOps_CI-CD_Pipeline"
mkdir -p "$BASE_DIR/Projects/AI_Model_Deployment"

# 3. Job Search Management (Integrates with Step 1 Tracker concept)
echo "Setting up Job Application Management structure..."
mkdir -p "$BASE_DIR/Job_Applications/Resumes_CoverLetters"
mkdir -p "$BASE_DIR/Job_Applications/Tracker_Data"
mkdir -p "$BASE_DIR/Job_Applications/Interview_Prep"

echo -e "\n--- Folder structure created successfully! ---"

# List the contents of the newly created base directory recursively for verification
echo -e "\nVerification of structure ($BASE_DIR):"
ls -R "$BASE_DIR"
echo "--- Script Execution Complete ---"