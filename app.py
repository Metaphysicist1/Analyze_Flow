import psycopg2
import pandas as pd
import numpy as np
from dotenv import load_dotenv
import os
import streamlit as st


# Connect to the PostgreSQL database
load_dotenv(".env")
login = os.getenv("DB_Login")
password = os.getenv("DB_Pass")
conn = psycopg2.connect(
    host="127.0.0.1",
    database="Fabric",
    user=login,
    password=password
)

# Create a cursor object to interact with the database
cur = conn.cursor()

# Define your Streamlit app
def main():
    st.title("Analyze Flow")
    st.write("Welcome to the Analyze Flow web app!")

    # Add your Jupiter Notebook description here
    st.write("Your Jupiter Notebook description goes here")

    # Add your PostgreSQL database queries and results here
    cur.execute("SELECT * FROM public.\"Business_Info\"")
    rows = cur.fetchall()
    for row in rows:
        st.write(row)

# Run the Streamlit app
if __name__ == "__main__":
    main()
