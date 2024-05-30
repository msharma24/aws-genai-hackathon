import streamlit as st                                 
from prompt_finder_and_invoke_llm import prompt_finder 
from chat_history_prompt_generator import chat_history 
import logging                                         

logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)
logger.addHandler(logging.StreamHandler())
logger.info("Starting the streamlit app...")

logger.info("Setting the title of the streamlit web app...")
